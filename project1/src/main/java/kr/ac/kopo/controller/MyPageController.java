package kr.ac.kopo.controller;

import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.model.ACommentVO;
import kr.ac.kopo.model.Article;
import kr.ac.kopo.model.Meeting;
import kr.ac.kopo.model.MyPage;
import kr.ac.kopo.model.Review;
import kr.ac.kopo.model.User;
import kr.ac.kopo.service.MyPageService;


@Controller
@RequestMapping("/mypage")
public class MyPageController {
	@Autowired
	MyPageService service;
	
	final String path = "mypage/";
	
	@RequestMapping("/view")
	public String view(Model model, String id , HttpSession session) {
		id=(String) session.getAttribute("user");
		User item=service.item(id);
		
		model.addAttribute("item", item);
		return path+"view";
	}
	@RequestMapping("/mymeeting")
	public String mymeeting(Model model,String id,HttpSession session) {
		id=(String) session.getAttribute("user");
		List<Meeting> mlist =service.getMeeting(id);
//		List<Calendar> clist =service.getCalendar(id);
		List<MyPage> list =service.getList(id);
		model.addAttribute("mlist", mlist);
//		model.addAttribute("clist", clist);
		model.addAttribute("list", list);
		return path+"mymeeting";
	}
	@RequestMapping("/myarticle")
	public String myarticle(String id,HttpSession session, Model model) {
		id=(String) session.getAttribute("user");
		List<MyPage> list =service.getList(id);
		
		model.addAttribute("list",list);
		
		
		return path+"myarticle";
	}
	@RequestMapping("/meetingaccept")
	public String meetingaccept(String id,HttpSession session) {
		id=(String) session.getAttribute("user");
		
		return path+"meetingaccept";
	}
	@RequestMapping("/articlelist") //�뙎湲� 由ъ뒪�듃
    @ResponseBody
    private List<Article> getArticle(Model model, @RequestParam long mCode, HttpSession session) throws Exception{
		String id=(String) session.getAttribute("user");

    	
        return service.getAritcle(id, mCode);
    }
	@RequestMapping("/reviewlist") //�뙎湲� 由ъ뒪�듃
    @ResponseBody
    private List<Review> getReview(Model model, @RequestParam long mCode, HttpSession session) throws Exception{
		String id=(String) session.getAttribute("user");

    	
        return service.getReview(id, mCode);
    }
}
