package kr.ac.kopo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.model.User;
import kr.ac.kopo.service.UserService;




	@Controller
	public class RootController {
		@Autowired
		UserService userService;
			
		@RequestMapping("/")
		public String index() {
			
			return "index";
		}
		 //회원가입
		   final String path = "signup/";
		   
		   @RequestMapping(value ="/idChk",method =RequestMethod.POST )
		   @ResponseBody
		   public int idChk(String id) {
		      System.out.println("id>>>>>"+id);
		      
		      return userService.idChk(id);
		   }
		   
		   @RequestMapping(value ="/nameChk",method =RequestMethod.POST )
		   @ResponseBody
		   public int nameChk(String name) {
		      System.out.println("name>>>>>"+name);
		      
		      return userService.nameChk(name);
		   }
		   
		   //약관동의
		   @RequestMapping(value="/acceptTerms", method=RequestMethod.GET)
		   String acceptTerms() {
		      return path+"acceptTerms";
		   }
		   //회원정보입력
		   
		   @RequestMapping(value="/memberadd", method=RequestMethod.GET)
		   String MemberAdd() {
		      return path+"signup";
		   }
		   @RequestMapping(value="/memberadd", method=RequestMethod.POST)
		   String MemberAdd(User user) {
		      user.setAddress(user.getAddress1_input()+user.getAddress2_input());
//		      user.setAge(user.getBirth_input1()+user.getBirth_input2()+user.getBirth_input3());
		      user.setAge(user.getBirth_input1());
		      user.setPhone(user.getPhone1_input()+user.getPhone2_input()+user.getPhone3_input());
		      
		      System.out.println("생년월일"+user.getAge());
		      System.out.println("주소"+user.getAddress());
		      System.out.println("폰번호"+user.getPhone());
		      userService.memberAdd(user);
		      return "redirect:/";
		   }
		   
		   @RequestMapping(value="/complete", method=RequestMethod.GET)
		   String complete() {
		      return path+"complete";
		   }
		   
		   @RequestMapping(value="/loginChk", method=RequestMethod.POST)
		   @ResponseBody
		   boolean login(User user, HttpSession session) {
		      if(userService.login(user)&&user.getId().equals("admin")) {
		      session.setAttribute("admin", user.getId());
		      session.setAttribute("user", user.getId());
		      /*session.setAttribute("nickname", user.getNickname());*/
		      System.out.println("관리자 권한 로그인 성공 아이디는 : "+session.getAttribute("admin"));
		      } else if(userService.login(user)&&!user.getId().equals("admin")){
		      session.setAttribute("user", user.getId());
		      System.out.println("유저 권한 로그인 성공 아이디는 : "+session.getAttribute("user"));
		      }else {
		         System.out.println("로그인 실패");
		      }
		      
		      return userService.login(user);
		   }

		   @RequestMapping(value="/login", method=RequestMethod.GET)
		   String login() {
		      return "login";
		   }
		   @RequestMapping("/logout")
		   String logout(HttpSession session,Model model) {
//		      System.out.println("ACCESS_TOKEN>>>>"+ACCESS_TOKEN);
//		      
//		      String deleteTokenUrl =naverLoginBO.deleteToken(ACCESS_TOKEN);
//		      model.addAttribute("deleteTokenUrl",deleteTokenUrl);
		      session.invalidate();
		      
		      return "redirect:.";
		   }
		   @RequestMapping("/contactus")
		   String contactUs() {
			   return "contactus";
		   }
}