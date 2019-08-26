package kr.ac.kopo.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.model.ACommentVO;
import kr.ac.kopo.model.Article;

import kr.ac.kopo.model.Meeting;
import kr.ac.kopo.model.MeetingMember;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Post;
import kr.ac.kopo.model.Review;
import kr.ac.kopo.controller.UploadController;
import kr.ac.kopo.util.MediaUtils;
import kr.ac.kopo.util.UploadFileUtils;
import kr.ac.kopo.service.MeetingService;

import kr.ac.kopo.util.Pager;


@Controller
@RequestMapping("/meeting")
public class MeetingController {
	final String path = "meeting/";
	final String uploadpath="d://lsm//upload//";
	@Autowired
	MeetingService service;
	UUID uid = UUID.randomUUID();
	
//	private static final Logger logger = LoggerFactory.getLogger(UploadController.class);
//	
//	@RESOURCE(NAME = "UPLOADPATH")
//	PRIVATE STRING UPLOADPATH;
//	
//	
	
//	@RequestMapping("/imageUpload")
//	@ResponseBody
//	ResponseEntity<String> profileUpload(MultipartFile file,HttpServletRequest request, HttpServletResponse response) throws IOException, Exception{
//		logger.info("originalName:" + file.getOriginalFilename());
//		logger.info("size:" + file.getSize());
//		logger.info("contentType:" + file.getContentType());
//		
//		
////		String path = service.profileUpload(file,request,response);
//		return new ResponseEntity<>(UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.CREATED);
//	}
//
//	
//	
//	@ResponseBody
//	@RequestMapping(value="/sample/upload/displayFile", method = RequestMethod.GET)
//	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {
//		
//		InputStream in = null;
//		ResponseEntity<byte[]> entity = null;
//		
//		logger.info("File name: " + fileName);
//		
//		try {
//			String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
//			
//			MediaType mType = MediaUtils.getMediaType(formatName);
//			
//			HttpHeaders headers = new HttpHeaders();
//			
//		
//			
//			
//			
//			in = new FileInputStream(uploadPath + fileName);
//			
//			
//			if(mType != null) {
//				headers.setContentType(mType);
//			}else {
//				fileName = fileName.substring(fileName.indexOf("_")+1);
//				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
//				headers.add("Content-Disposition", "attachment; filename=\"" + new String(fileName.getBytes("UTF-8"), "ISO-8859-1") + "\"");
//			}// else
//			
//			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.CREATED);
//			
//		} catch(Exception e) {
//			e.printStackTrace();
//			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
//		} finally {
//			in.close();
//		}
//		
//		return entity;
//	}
//	
//	
		
		
	@RequestMapping("/view/{mCode}")
	String view(@PathVariable long mCode,Model model, HttpSession session) {
		List<Article> alist=service.alist(mCode);
		List<Notice> nlist =service.nlist(mCode);
		List<Review> rlist =service.rlist(mCode);
		List<Calendar> clist =service.clist(mCode);
		Meeting item=service.item(mCode);
		int total =service.countMember(mCode);
		String id=(String)session.getAttribute("user");
		List memchk= new ArrayList();
		memchk = service.checkMember(mCode);
		model.addAttribute("memchk", memchk);
		item.setTotal(total);
		System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>...." + memchk);
		model.addAttribute("item",item);
		model.addAttribute("nlist", nlist);
		model.addAttribute("alist", alist);
		model.addAttribute("rlist", rlist);
		model.addAttribute("clist", clist);
		
		return path+ "view";
	}
	
	@RequestMapping("/view2")
	String view2() {
		return path+"view2";
	}
	@RequestMapping("/list")
	String list(Model model, Pager pager, @RequestParam(value="name" , required=false) String mCategory, Meeting meeting, HttpServletRequest req) {
		List<Meeting> list = service.list(pager, mCategory);
		
		
		
		model.addAttribute("list", list);
		
		String category= req.getParameter("name");
		model.addAttribute("category", category);
		
		return path + "list";
	}
	@RequestMapping(value="/add", method=RequestMethod.GET)
	String add() {
		return path + "add";
		
		
	}

	@RequestMapping(value="/add",method=RequestMethod.POST)
	String add(Meeting item, HttpSession session) {
		item.setmId((String) session.getAttribute("user"));
				
		if(item.getUploadFile() != null) {
			String mFilename =item.getUploadFile().getOriginalFilename();
			try {
				item.getUploadFile().transferTo(new File(uploadpath + mFilename));
				
				item.setmFilename(mFilename);
				
			} catch (IllegalStateException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		}
		service.add(item);
		System.out.println("filename>>>>>>"+item.getmFilename());
		return "redirect:list";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	String update(long mCode,Model model) {
		Meeting item=service.item(mCode);
		
		model.addAttribute("item", item);
			
		
		return path+"update";
	}
	
	@RequestMapping(value="/memadd",method=RequestMethod.POST)
	String memadd(Long mCode, MeetingMember item, HttpSession session) {
		item.setMmId((String) session.getAttribute("user"));
		
		
		System.out.println("id는 "+item.getMmId());
		System.out.println(">>>>>>>>>>>>>>>>>>>><<<"+item.getmCode());
		service.memadd(item);
		
		return "redirect:list";
	}
	
	
	
	

}
