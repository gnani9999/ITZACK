<%@ page import="java.security.Security"%>
<%@ page import=" java.util.Properties"%>
<%@ page import=" java.util.*"%>
<%@ page import=" javax.mail.Message"%>
<%@ page import=" javax.mail.MessagingException"%>
<%@ page import=" javax.mail.PasswordAuthentication"%>
<%@ page import=" javax.mail.Session"%>
<%@ page import=" javax.mail.Transport"%>
<%@ page import=" javax.mail.internet.InternetAddress"%>
<%@ page import=" javax.mail.internet.MimeMessage"%>

    <%!
    String toaddr,fromaddr,subject,message;
    %>
<%
          subject =request.getParameter("subject");
          message =request.getParameter("message");
          fromaddr=request.getParameter("from");
          toaddr=request.getParameter("to");
%>

    <%!
     private static final String SMTP_HOST_NAME = "smtp.gmail.com";
    private static final  String SMTP_PORT = "465";
    private static final  String SSL_FACTORY = "javax.net.ssl.SSLSocketFactory";
    %>

    <%
    Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
    sendSSLMessage(toaddr, subject,message, fromaddr);
    out.println("Sucessfully Sent mail to All Users");
    %>
    <%!
    public void sendSSLMessage(String recipients, String subject,String message, String from) throws MessagingException {
    boolean debug = true;
    Properties props = new Properties();
    props.put("mail.smtp.host", SMTP_HOST_NAME);
    props.put("mail.smtp.auth", "true");
    props.put("mail.debug", "true");
    props.put("mail.smtp.port", SMTP_PORT);
    props.put("mail.smtp.socketFactory.port", SMTP_PORT);
    props.put("mail.smtp.socketFactory.class", SSL_FACTORY);
    props.put("mail.smtp.socketFactory.fallback", "false");
    javax.mail.Session session1=javax.mail.Session.getInstance(props,new javax.mail.Authenticator() {
    protected PasswordAuthentication getPasswordAuthentication() {
    return new PasswordAuthentication("gnitsfbscs@gmail.com", "administrator");
    }
    });

    session1.setDebug(debug);
    Message msg = new MimeMessage(session1);
    InternetAddress addressFrom = new InternetAddress(from);
    msg.setFrom(addressFrom);
    StringTokenizer tokens=new StringTokenizer(toaddr,",");
    int j=0;
    
    String[] recipt=new String[1000];
    while(tokens.hasMoreTokens())
    {
        recipt[j]=tokens.nextToken();
        j++;
    }
   // InternetAddress addressTo = new InternetAddress(toaddr);
    InternetAddress[] addressTo = new InternetAddress[j];
    for (int i = 0; i < j; i++) {
    addressTo[i] = new InternetAddress(recipt[i]);
    }
    msg.setRecipients(Message.RecipientType.TO, addressTo);

    // Setting the Subject and Content Type
    msg.setSubject(subject);
    msg.setContent(message, "text/plain");
    Transport.send(msg);
    }
    %>  
    <jsp:forward page="ctrainerlogin.jsp"></jsp:forward>  