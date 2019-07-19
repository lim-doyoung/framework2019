package com.bit.action;

import com.bit.model.Struts04Dao;
import com.bit.model.entity.Struts04Dto;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ModelDriven;
import com.opensymphony.xwork2.Preparable;

public class InsertAction implements Action,ModelDriven<Struts04Dto>,Preparable{

	Struts04Dto bean=null;
	
	public Struts04Dto getBean(){
		
		return bean;
	}
	
	@Override
	public String execute() throws Exception {
//		new Struts04Dao().insertOne(sub, name, content);
		System.out.println(bean.getSub());
		System.out.println(bean.getName());
		System.out.println(bean.getContent());
		new Struts04Dao().insertOne(bean);
		return this.SUCCESS;
	}
	
	//inters가장먼저 들어와서 필드 초기화 객체생성
	@Override
	public void prepare() throws Exception {
		//모델드라이빙하기전에 먼저 실행해야됌
		bean=new Struts04Dto();
	}

	@Override
	//모델드라이브는 인터플리먼트와 이름 동일,
	public Struts04Dto getModel() {
		// TODO Auto-generated method stub
		return bean;
	}


}
