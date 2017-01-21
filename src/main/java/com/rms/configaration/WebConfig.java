package com.rms.configaration;

import org.apache.log4j.Logger;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.view.BeanNameViewResolver;
import org.springframework.web.servlet.view.InternalResourceViewResolver;


@Configuration 
public class WebConfig {
	
	@SuppressWarnings("unused")
	private Logger logger=Logger.getLogger(WebConfig.class);
	
	@Bean 
	public InternalResourceViewResolver templateResolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setPrefix("/WEB-INF/views/");
		resolver.setSuffix(".jsp");
		resolver.setOrder(1);
		resolver.setCache(false);
		return resolver;
	}	
	
	@Bean
	public CommonsMultipartResolver multipartResolver(){
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();
		resolver.setMaxUploadSize(100000);
		return resolver;
	}
	
	@Bean
	public BeanNameViewResolver beanNameResolver(){
		BeanNameViewResolver resolver = new BeanNameViewResolver();
		return resolver;
	}
}
