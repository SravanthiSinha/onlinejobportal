import javax.mail.*;
import javax.mail.internet.*;
import java.util.*;
 
public class Main
{
    String  d_email = "businessepartner@gmail.com",
            d_password = "gouthamvishnu",
            d_host = "smtp.gmail.com",
            d_port  = "465",
            m_to = "psvvardhan@gmail.com",
            m_subject = "Testing",
            m_text = "Hey, this is the testing email.";
    
    public Main(String to[],String subject,String message)
    {
        Properties props = new Properties();
        props.put("mail.smtp.user", d_email);
        props.put("mail.smtp.host", d_host);
        props.put("mail.smtp.port", d_port);
        props.put("mail.smtp.starttls.enable","true");
        props.put("mail.smtp.auth", "true");
        //props.put("mail.smtp.debug", "true");
        props.put("mail.smtp.socketFactory.port", d_port);
        props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.socketFactory.fallback", "false");
 
        SecurityManager security = System.getSecurityManager();
 
        try
        {
            Authenticator auth = new SMTPAuthenticator();
            Session session = Session.getInstance(props, auth);
            //session.setDebug(true);
 
            MimeMessage msg = new MimeMessage(session);
            msg.setText(message);
            msg.setSubject(subject);
            msg.setFrom(new InternetAddress(d_email));
            for(int i=0;i<to.length;i++)
            msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to[i]));
            Transport.send(msg);
        }
        catch (Exception mex)
        {
            mex.printStackTrace();
        } 
    }
    
    
 
    private class SMTPAuthenticator extends javax.mail.Authenticator
    {
        public PasswordAuthentication getPasswordAuthentication()
        {
            return new PasswordAuthentication(d_email, d_password);
        }
    }
}