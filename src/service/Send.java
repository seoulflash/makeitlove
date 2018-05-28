package service;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeUtility;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Send implements CommandProcess {
	
	@Override
	public String requestPro(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");		// 이름
		String age = request.getParameter("age");		// 나이
		String tel = request.getParameter("tel");		// 연락처
		String job = request.getParameter("job");		// 직업
		String height = request.getParameter("height");		// 키
		String addr = request.getParameter("addr");		// 거주지
		String sex = request.getParameter("sex");		// 성별
		String ideal = request.getParameter("ideal");		// 이상형 및 조건
		
		try {
			int	mailResult = send(name, age, tel, job, height, addr, sex, ideal);
			if(mailResult == 1) {
				return "sendOk.jsp";
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return "index.jsp";
	}
	
	public int send(String name, String age, String tel, String job, String height, String addr, String sex, 
			String ideal) {
		
		int result = 0;
		
		 // 메일 관련 정보
	   String email = "synapseculture@gmail.com";
	   String host = "smtp.gmail.com";
       final String username = "synapseculture@gmail.com";
       final String password = "Rlaekfqhd89!";
       int port=465;
        
       // 메일 내용
       String recipient = email;
       String subject = name + "님의 정보입니다";
       
       
       try {  
		    Properties props = System.getProperties();
		         
		    props.put("mail.smtp.host", host);
		    props.put("mail.smtp.port", port);
		    props.put("mail.smtp.auth", "true");
		    props.put("mail.smtp.ssl.enable", "true");
		    props.put("mail.smtp.ssl.trust", host);
		          
		    Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		        String un= username;
		        String pw= password;
		        protected PasswordAuthentication getPasswordAuthentication() {
		            return new PasswordAuthentication(un, pw);
		        }
		    });
		    session.setDebug(true); //for debug
	    
	        
		    Message mimeMessage = new MimeMessage(session);
		    mimeMessage.setFrom(new InternetAddress(username));
		    mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient));
		    mimeMessage.setSubject(MimeUtility.encodeText(subject, "UTF-8", "B"));
		    
		    StringBuffer buffer = new StringBuffer();
		    buffer.append("이름 : ");
		    buffer.append(name + "<br>");
		    buffer.append("나이 : ");
		    buffer.append(age + "<br>");
		    buffer.append("연락처 : ");
		    buffer.append(tel + "<br>");
		    buffer.append("직업 : ");
		    buffer.append(job + "<br>");
		    buffer.append("키 : ");
		    buffer.append(height + "<br>");
		    buffer.append("거주지 : ");
		    buffer.append(addr + "<br>");
		    buffer.append("성별 : ");
		    buffer.append(sex + "<br>");
		    buffer.append("이상형 및 조건 : ");
		    buffer.append(ideal + "<br>");
		    mimeMessage.setContent(buffer.toString(), "text/html; charset=UTF-8");
		    Transport.send(mimeMessage);
		    result = 1;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			result = 0;
		}
		return result;
	}

}
