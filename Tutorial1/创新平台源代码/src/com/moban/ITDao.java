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
	public List<T> loada(String jibie,String suozai,String jingji);  //全精准
	public List<T> loadb(String jibie,String suozai,String jingji);  //级别精准，所在模糊，经济模糊，全并且
	public List<T> loadc(String jibie,String suozai,String jingji);  //级别精准，所在精准，经济模糊，全或
	public List<T> loadd(String jibie,String suozai,String jingji);	 //级别精准，所在模糊，经济精准，全或
	public List<T> loade(String jibie,String suozai,String jingji);	 //级别模糊，所在精准，经济精准，全或
	public List<T> loadf(String jibie,String suozai,String jingji);  //级别模糊，所在模糊，经济精准，全或
	public List<T> loadg(String jibie,String suozai,String jingji);	 //级别模糊，所在精准，经济模糊，全或
	public List<T> loadh(String jibie,String suozai,String jingji);  //全模糊
}