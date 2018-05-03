package kr.co.magiclms.mypage.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;

import kr.co.magiclms.common.db.MyAppSqlConfig;
import kr.co.magiclms.common.file.MlecFileRenamePolicy;
import kr.co.magiclms.domain.Content;
import kr.co.magiclms.mapper.ContentMapper;

@WebServlet("/mypage/contentRegist")
public class WriteContentController extends HttpServlet{

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ContentMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(ContentMapper.class);
		
		String uploadPath = "c:/java-lec/content_upload";
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/HH");
		String datePath = sdf.format(new Date());
		File file = new File(uploadPath + datePath);
		if(!file.exists()) file.mkdirs();
		
		MultipartRequest mRequest = new MultipartRequest(
				request, 
				uploadPath + datePath,
				1024*1024*100,
				"utf-8",
				new MlecFileRenamePolicy());
		
		Content content = new Content();
		content.setContentNo(Integer.parseInt(mRequest.getParameter("contentNo")));
		content.setTitle(mRequest.getParameter("title"));
		content.setRef(mRequest.getParameter("ref"));
		mapper.insertContent(content);
		
		// Save File(s)
		Enumeration<String> names = mRequest.getFileNames();
		while(names.hasMoreElements()) {
			String name = names.nextElement();
			File f = mRequest.getFile(name);
			if(f!=null) {
				String origName = mRequest.getOriginalFileName(name);
				String sysName = mRequest.getFilesystemName(name);
				
				Content contFile = new Content();
				contFile.setFilePath(datePath);
				contFile.setOrigName(origName); 
				contFile.setSysName(sysName);
				mapper.insertContentFile(contFile);
			}
		}
		response.sendRedirect("contentList");
	}
}
