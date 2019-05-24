package com.moban;

import java.util.List;

import com.moban.T;

public interface ITDao {
	public void add(T t);
	public void update(T t);
	public T load(int id);
/*	public T load(String zname);*/
	public List<T> load();
	public List<T> load(String ymingcheng,String zname,String youbian);
	public List<T> load(String suozai);
	public List<T> load1(String ymingcheng,String zname,String youbian);
	public List<T> load2(String jibie);
	public List<T> load3(String jingji);
	public List<T> loada(String jibie,String suozai,String jingji);  //ȫ��׼
	public List<T> loadb(String jibie,String suozai,String jingji);  //����׼������ģ��������ģ����ȫ����
	public List<T> loadc(String jibie,String suozai,String jingji);  //����׼�����ھ�׼������ģ����ȫ��
	public List<T> loadd(String jibie,String suozai,String jingji);	 //����׼������ģ�������þ�׼��ȫ��
	public List<T> loade(String jibie,String suozai,String jingji);	 //����ģ�������ھ�׼�����þ�׼��ȫ��
	public List<T> loadf(String jibie,String suozai,String jingji);  //����ģ��������ģ�������þ�׼��ȫ��
	public List<T> loadg(String jibie,String suozai,String jingji);	 //����ģ�������ھ�׼������ģ����ȫ��
	public List<T> loadh(String jibie,String suozai,String jingji);  //ȫģ��
}