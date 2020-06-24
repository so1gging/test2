package com.mvc.jigulyeog.controller;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.jigulyeog.biz.TogetherApplyBiz;
import com.mvc.jigulyeog.model.dto.TogetherApplyDto;

@Controller
public class TogetherAppplyController {
	
	@Autowired
	private TogetherApplyBiz biz;
	
	private static final Logger logger = LoggerFactory.getLogger(TogetherAppplyController.class);
	 
	//함께해요 신청하기
	@RequestMapping("/together_apply.do")
	public String togetherApply(TogetherApplyDto dto,@RequestParam(value="user_id") String user_id) {
		logger.info("함께해요 신청");
		logger.info("========================tog_no : "+dto.getTog_no());
		logger.info("========================user_id : "+user_id);
		int res = biz.insert(dto);
		if(res>0) {
			return "redirect:together.do";
		} else {
			return "redirect:together.do";
		}
	}
	
	@RequestMapping("/together_applyCancel.do")
	public String togetherApplyCancel(TogetherApplyDto dto,@RequestParam(value="user_id") String user_id) {
		logger.info("함께해요 취소신청");
		logger.info("========================tog_no : "+dto.getTog_no());
		logger.info("========================user_id : "+user_id);
		int res = biz.delete(dto);
		if(res>0) {
			return "redirect:together.do";
		} else {
			return "redirect:together.do";
		}
	}
	
}
