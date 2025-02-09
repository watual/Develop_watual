package org.project.ranking_idol_project.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    // 기본페이지 요청 메서드
    @GetMapping("/")
    public String index() {
        return "MainPage"; // => templates 폴더의 index.html을 찾아감
    }
}