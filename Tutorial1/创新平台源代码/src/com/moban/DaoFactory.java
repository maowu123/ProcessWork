package com.moban;

import com.moban.TDaoImpl;

public class DaoFactory {
	public static TDaoImpl getDaoImpl() {
		return new TDaoImpl();
	}
}
