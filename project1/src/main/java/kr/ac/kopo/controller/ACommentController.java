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

import kr.ac.kopo.model.ACommentVO;
import kr.ac.kopo.service.ACommentService;


 

 
@Controller
@RequestMapping("/acomment")
public class ACommentController {
 
    @Autowired
    ACommentService ACommentService;
   
    @RequestMapping("/count")
    private int commentCount(int articleCode) {
    	
    	return ACommentService.commentCount(articleCode);
    }
    
    @RequestMapping("/list") //댓글 리스트
    @ResponseBody
    private List<ACommentVO> mCommentServiceList(Model model, @RequestParam int articleCode) throws Exception{
       
//    	System.out.println(">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"+articleCode);
    	
        return ACommentService.commentListService(articleCode);
    }
    
    @RequestMapping(value="/insert") //댓글 작성 
    @ResponseBody
    private int mCommentServiceInsert(@RequestParam int articleCode, @RequestParam String content, HttpSession session, @RequestParam long mCode) throws Exception{
    	System.out.println(articleCode);
        ACommentVO comment = new ACommentVO();
        comment.setId((String) session.getAttribute("user"));
        comment.setmCode(mCode);
        comment.setArticleCode(articleCode);
       comment.setContent(content);
       System.out.println(comment.getArticleCode());
       System.out.println(comment.getContent());
     
        return ACommentService.commentInsertService(comment);
        
    }
    
    @RequestMapping("/update") //댓글 수정  
    @ResponseBody
    private int mCommentServiceUpdateProc(@RequestParam int cno, @RequestParam String content) throws Exception{
        
        ACommentVO comment = new ACommentVO();
        comment.setCno(cno);
        comment.setContent(content);
        
        return ACommentService.commentUpdateService(comment);
    }
    
    @RequestMapping("/delete/{cno}") //댓글 삭제  
    @ResponseBody
    private int mCommentServiceDelete(@PathVariable int cno) throws Exception{
        
        return ACommentService.commentDeleteService(cno);
    }
    
}


