package fileupload;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//FileDownload�� download.do�� ����
@WebServlet("/download.do")
public class FileDownload extends HttpServlet{
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
		doHandle(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
			doHandle(request, response);
		}
		
	
	private void doHandle(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException{
			
			//utf-8 ���ڵ�
			request.setCharacterEncoding("utf-8");
			
			//ContentType: �������� �ٵ� ��� �ִ� �����Ͱ� � Ÿ�������� ��Ÿ��
			//text/html: html �ڵ�
			response.setContentType("text/html; charset=utf-8");
			
			//���� ���
			String file_repo = "C:\\file_repo";
			
			//getParameter�� ���� �̸� �ҷ��ͼ� fileName�� �־��ش�.
			//���ڿ��� ����ȯ
			String fileName = (String) request.getParameter("fileName");
			
			//���
			System.out.println("fileName=" + fileName);
		    
			//�������� Ŭ���Ʈ�� �����͸� ������ �ְ� ���ش�.
			OutputStream out = response.getOutputStream();
			
			//���� ����� ���丮 ��ġ�� �ٿ�ε� �� ���� �̸��� ����
			//�ٿ�ε��� ������ ��ü ��θ� ��´�.
			String downFile = file_repo + "\\" + fileName;
			File f = new File(downFile);
			response.setHeader("Cache-Control", "no-cache");
			response.addHeader("Content-disposition", "attachment; fileName="
					 + fileName);
			FileInputStream in = new FileInputStream(f);
			
			//�̹��� ������ 8Ű�ι���Ʈ�� �̷�����ִ�. 
			byte[] buffer = new byte[1024 * 8];
			while(true) {
				
				//count -> �� byte �󸶳� ������ �ȴ�.
				int count = in.read(buffer);
				
				//while�� ���� �ݺ����̶� ���� �ݺ��ϴ� count �� -1�� �Ǵ¼��� if������ ���� break�� �ɸ���.
				if(count == -1)
					break;
				out.write(buffer, 0, count);
			}
			in.close();
			out.close();
	}
}
