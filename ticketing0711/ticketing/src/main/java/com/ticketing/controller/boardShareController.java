package com.ticketing.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("board/share/*")
public class boardShareController {

	
	@RequestMapping("/get")
	public String getBoardListGetPage() {
		return "board/share/get";
	}
	@RequestMapping("/list")
	public String getBoardListListPage() {
		return "board/share/list";
	}
	@RequestMapping("/write")
	public String getBoardListWritePage() {
		return "board/share/write";
	}
	@RequestMapping("/update")
	public String getBoardListUpdatePage() {
		return "board/share/update";
	}
}
