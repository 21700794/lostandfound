package com.my.mmy.lost;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class LostController {
	@Autowired
	LostService lostService;
	
	@RequestMapping(value = "/lost/list", method=RequestMethod.GET)
	public String lostlist(Model model) {
		model.addAttribute("list", lostService.getLostList());
		return "posts";
	}
	
	@RequestMapping(value = "/lost/add", method=RequestMethod.GET)
	public String addPost() {
		return "addpostform";
	}
	
	@RequestMapping(value = "/lost/addok", method=RequestMethod.POST)
	public String addPostOK(LostVO vo) throws IOException {
//		String fileName=null;
//		MultipartFile uploadFile = vo.getUploadFile();
//		if (!uploadFile.isEmpty()) {
//			String originalFileName = uploadFile.getOriginalFilename();
//			String ext = FilenameUtils.getExtension(originalFileName);	//확장자 구하기
//			UUID uuid = UUID.randomUUID();	//UUID 구하기
//			fileName=uuid+"."+ext;
//			uploadFile.transferTo(new File("D:\\upload\\" + fileName));
//		}
//		vo.setPhoto(fileName);
		int i = lostService.insertLost(vo);
		if (i == 0)
			System.out.println("데이터 추가 실패!");
		else
			System.out.println("데이터 추가 성공!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/lost/editpost/{id}", method=RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model model) {
		LostVO lostVO = lostService.getLost(id);
		model.addAttribute("lostVO", lostVO);
		return "editform";
	}
	
	@RequestMapping(value = "/lost/editok", method=RequestMethod.POST)
	public String editPostOK(LostVO vo) {
		int i = lostService.updateLost(vo);
		if (i == 0)
			System.out.println("데이터 수정 실패!");
		else
			System.out.println("데이터 수정 성공!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/lost/delete/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable("id") int id) {
		int i = lostService.deleteLost(id);
		if (i == 0)
			System.out.println("데이터 삭제 실패!");
		else
			System.out.println("데이터 삭제 성공!");
		return "redirect:../list";
	}
}
