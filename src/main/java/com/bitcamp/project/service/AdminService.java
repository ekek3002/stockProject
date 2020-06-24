package com.bitcamp.project.service;

import java.util.List;
import java.util.Map;

import com.bitcamp.project.vo.AdminVO;


public interface AdminService {
	public int writeQuestion(AdminVO vo);
	public int writeAnswer(AdminVO vo);
	public int qnaCount(AdminVO vo);
	public Map<String, Object> qnaList(AdminVO vo, int nowPage, int page, String searchStyle, String keyword);
	public AdminVO qnaDetail(AdminVO vo);
	public int questionDelete(AdminVO vo);
	public int answerDelete(AdminVO vo);
	public int qnaUpdate(AdminVO vo);
	public Map<String, Object> reportList(AdminVO vo, int nowPage, int page, String searchStyle, String keyword);
}
