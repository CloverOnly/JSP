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

//FileDownload를 download.do로 지정
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
			
			//utf-8 인코딩
			request.setCharacterEncoding("utf-8");
			
			//ContentType: 리스폰의 바디에 들어 있는 데이터가 어떤 타입인지를 나타냄
			//text/html: html 코드
			response.setContentType("text/html; charset=utf-8");
			
			//파일 경로
			String file_repo = "C:\\file_repo";
			
			//getParameter로 파일 이름 불러와서 fileName에 넣어준다.
			//문자열로 값변환
			String fileName = (String) request.getParameter("fileName");
			
			//출력
			System.out.println("fileName=" + fileName);
		    
			//서버에서 클라언트로 데이터를 보낼수 있게 해준다.
			OutputStream out = response.getOutputStream();
			
			//파일 저장된 디렉토리 위치와 다운로드 할 파일 이름을 결합
			//다운로드할 파일의 전체 경로를 얻는다.
			String downFile = file_repo + "\\" + fileName;
			File f = new File(downFile);
			response.setHeader("Cache-Control", "no-cache");
			response.addHeader("Content-disposition", "attachment; fileName="
					 + fileName);
			FileInputStream in = new FileInputStream(f);
			
			//이미지 파일은 8키로바이트로 이루어져있다. 
			byte[] buffer = new byte[1024 * 8];
			while(true) {
				
				//count -> 곧 byte 얼마나 쓴지가 된다.
				int count = in.read(buffer);
				
				//while은 무한 반복문이라 무한 반복하다 count 가 -1이 되는순간 if문으로 들어가고 break가 걸린다.
				if(count == -1)
					break;
				out.write(buffer, 0, count);
			}
			in.close();
			out.close();
	}
}
