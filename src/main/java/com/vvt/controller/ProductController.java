package com.vvt.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.vvt.entity.Product;
import com.vvt.service.ProductSerivce;

@Controller
public class ProductController {
	@Autowired
	ProductSerivce productSerivce;

	@RequestMapping("product/list")
	public String list(Model model, @RequestParam("cid") Optional<String> cid,@RequestParam("page") Optional<Integer> page) {
		if (cid.isPresent()) {
			Pageable pageable = PageRequest.of(page.orElse(0), 8);
			Page<Product> list = productSerivce.findByCategoryId(cid.get(),pageable);
			model.addAttribute("items", list);
		} else {
			Pageable pageable = PageRequest.of(page.orElse(0), 12);
			Page<Product> list = productSerivce.findAll(pageable);
			model.addAttribute("items", list);
		}
		return "product/list";
	}

	@RequestMapping("product/detail/{id}")
	public String details(Model model, @PathVariable("id") Integer id) {
		Product item = productSerivce.findById(id);
		model.addAttribute("item", item);
		return "product/detail";
	}
}
