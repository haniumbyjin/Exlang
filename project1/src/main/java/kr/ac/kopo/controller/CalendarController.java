package kr.ac.kopo.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.model.Article;
import kr.ac.kopo.model.Calendar;
import kr.ac.kopo.model.Meeting;
import kr.ac.kopo.model.Notice;
import kr.ac.kopo.model.Review;
import kr.ac.kopo.service.CalendarService;

@Controller
@RequestMapping("/calendar")
public class CalendarController {
	final String path = "calendar/";
	
	@Autowired
	CalendarService service;
	
	
	@RequestMapping("/view/{mCode}&{mName}")
	String view(Model model, @PathVariable long mCode, @PathVariable String mName) {

		List<Calendar> list = service.getList(mCode);
		
//		Calendar item=service.item(mCode);
		model.addAttribute("mName", mName);
		model.addAttribute("mCode", mCode);
		model.addAttribute("list", list);
		
//		model.addAttribute("item", item);
//		System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@"+mCode);
		return path+ "view";
	}
	  //id媛믪쑝濡� 由ъ뒪�듃�븯�굹 �뜑留뚮뱾�뼱�꽌 媛��졇�삤湲�
	@RequestMapping("/calview")
	String calview(Model model, HttpSession session) {
		String pId=(String)session.getAttribute("user");
		
		
	    List<Calendar> list = service.perlist(pId);	    
		model.addAttribute("list", list);

		return path+ "calview";
	}
	

//	@RequestMapping(value="/list")
//	String list(Model model) {
//		List<Calendar> list = service.getList();
//		model.addAttribute("list", list);
//		return path + "list";
//	}
	
	@RequestMapping(value="delete", method=RequestMethod.POST)
	@ResponseBody
	int delete(int calNum) {
		System.out.println(calNum);
		
		service.delete(calNum);
		return calNum;
	}
	
	
//	------------------------------add------
	
	@RequestMapping(value="/add", method=RequestMethod.GET)
	String add() {
		return path + "add";
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	@ResponseBody
	Calendar add(Calendar item, HttpSession session, String calPlan) {
	  item.setmId((String)session.getAttribute("user"));
	 
	  item.setCalPlan(calPlan);
//	  System.out.println(calPlan);
	  service.add(item);    
	  return item;
}
	
	@RequestMapping(value="/padd", method=RequestMethod.GET)
	String padd() {
		return path + "padd";
	}
	
	@RequestMapping(value="/padd", method=RequestMethod.POST)
	@ResponseBody
	Calendar padd(Calendar item, HttpSession session, String calPlan) {
	  item.setpId((String)session.getAttribute("user"));
	  item.setCalPlan(calPlan);
//	  System.out.println(calPlan);
	  service.padd(item);    
	  return item;
}
//	String add(Calendar item) {
//		service.add(item);
//		return "redirect:list";
//	}

	
//	------------------------------update------	
	
	@RequestMapping(value="/update", method=RequestMethod.GET)
	String update(int calNum, Model model) {
		Calendar item=service.getItem(calNum);
		model.addAttribute("item", item);
		return path + "update";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	@ResponseBody
	Calendar update(Calendar item) {  
		
//		System.out.println("item"+ item.getCalPlan());
		service.update(item);
		return item;
	}
	
	@RequestMapping(value="/update1", method=RequestMethod.GET)
	String update1(int calNum, Model model) {
		Calendar item=service.getItem(calNum);
		model.addAttribute("item", item);
		return path + "update1";
	}
	
	@RequestMapping(value="/update1", method=RequestMethod.POST)
	@ResponseBody
	Calendar update1(Calendar item) {  
		
//		System.out.println("item"+ item.getCalPlan());
		service.update1(item);
		return item;
	}
	
}

