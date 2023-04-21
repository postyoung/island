package com.island.app.util.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;

import org.springframework.stereotype.Component;

import lombok.extern.slf4j.Slf4j;

@Component("myFilter") //바구니에 담는 객체 이름 myFilter로 지정하기
@Slf4j
public class EncodingFilterUTF8 implements Filter{
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		log.info("filter called...~");
		request.setCharacterEncoding("UTF-8");
		chain.doFilter(request, response);
	}
}