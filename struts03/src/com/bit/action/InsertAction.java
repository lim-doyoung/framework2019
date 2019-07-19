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
	
	//inters������� ���ͼ� �ʵ� �ʱ�ȭ ��ü����
	@Override
	public void prepare() throws Exception {
		//�𵨵���̺��ϱ����� ���� �����ؾ߉�
		bean=new Struts04Dto();
	}

	@Override
	//�𵨵���̺�� �����ø���Ʈ�� �̸� ����,
	public Struts04Dto getModel() {
		// TODO Auto-generated method stub
		return bean;
	}


}
