package com.ticketing.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("board/free/*")
public class viewController {

	
	@RequestMapping("/get")
	public String getBoardListGetPage() {
		return "board/free/get";
	}
	@RequestMapping("/list")
	public String getBoardListListPage() {
		return "board/free/list";
	}
	@RequestMapping("/write")
	public String getBoardListWritePage() {
		return "board/free/write";
	}
	@RequestMapping("/update")
	public String getBoardListUpdatePage() {
		return "board/free/update";
	}
	@RequestMapping("/list_test")
	public String getBoardListTestPage() {
		return "board/free/list_test_for_responsiveTable";
	}
}
