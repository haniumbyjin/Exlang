package kr.ac.kopo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.model.RCommentVO;
import kr.ac.kopo.service.RCommentService;




 

 
@Controller
@RequestMapping("/rcomment")
public class RCommentController {
 
    @Autowired
    RCommentService service;
   
    @RequestMapping("/count")
    private int commentCount(int reviewCode) {
    	
    	return service.commentCount(reviewCode);
    }
    
    @RequestMapping("/list") //댓글 리스트
    @ResponseBody
    private List<RCommentVO> rcommentServiceList(Model model, @RequestParam int reviewCode) throws Exception{
       
//    	System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+reviewCode);
    	
        return service.commentListService(reviewCode);
    }
    
    @RequestMapping(value="/insert") //댓글 작성 
    @ResponseBody
    private int rcommentServiceInsert(@RequestParam int reviewCode, @RequestParam String content, HttpSession session, @RequestParam long mCode) throws Exception{
    	System.out.println(reviewCode);
        RCommentVO comment = new RCommentVO();
        comment.setId((String) session.getAttribute("user"));
        comment.setmCode(mCode);
        comment.setReviewCode(reviewCode);
       comment.setContent(content);
       System.out.println(comment.getReviewCode());
       System.out.println(comment.getContent());
     
        return service.commentInsertService(comment);
        
    }
    
    @RequestMapping("/update") //댓글 수정  
    @ResponseBody
    private int rcommentServiceUpdateProc(@RequestParam int cno, @RequestParam String content) throws Exception{
        
        RCommentVO comment = new RCommentVO();
        comment.setCno(cno);
        comment.setContent(content);
        
        return service.commentUpdateService(comment);
    }
    
    @RequestMapping("/delete/{cno}") //댓글 삭제  
    @ResponseBody
    private int rcommentServiceDelete(@PathVariable int cno) throws Exception{
        
        return service.commentDeleteService(cno);
    }
    
}


