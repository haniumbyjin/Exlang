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

import kr.ac.kopo.model.NCommentVO;
import kr.ac.kopo.service.NCommentService;



 

 
@Controller
@RequestMapping("/ncomment")
public class NCommentController {
 
    @Autowired
    NCommentService service;
   
    @RequestMapping("/count")
    private int commentCount(int noticeCode) {
    	
    	return service.commentCount(noticeCode);
    }
    
    @RequestMapping("/list") //댓글 리스트
    @ResponseBody
    private List<NCommentVO> nCommentServiceList(Model model, @RequestParam int noticeCode) throws Exception{
       
//    	System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+noticeCode);
    	
        return service.commentListService(noticeCode);
    }
    
    @RequestMapping(value="/insert") //댓글 작성 
    @ResponseBody
    private int nCommentServiceInsert(@RequestParam int noticeCode, @RequestParam String content, HttpSession session, @RequestParam long mCode) throws Exception{
    	System.out.println(noticeCode);
        NCommentVO comment = new NCommentVO();
        comment.setId((String) session.getAttribute("user"));
        comment.setmCode(mCode);
        comment.setNoticeCode(noticeCode);
       comment.setContent(content);
       System.out.println(comment.getNoticeCode());
       System.out.println(comment.getContent());
     
        return service.commentInsertService(comment);
        
    }
    
    @RequestMapping("/update") //댓글 수정  
    @ResponseBody
    private int nCommentServiceUpdateProc(@RequestParam int cno, @RequestParam String content) throws Exception{
        
        NCommentVO comment = new NCommentVO();
        comment.setCno(cno);
        comment.setContent(content);
        
        return service.commentUpdateService(comment);
    }
    
    @RequestMapping("/delete/{cno}") //댓글 삭제  
    @ResponseBody
    private int nCommentServiceDelete(@PathVariable int cno) throws Exception{
        
        return service.commentDeleteService(cno);
    }
    
}


