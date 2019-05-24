package com.moban;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.moban.DBUtil;
import com.moban.UserException;
import com.moban.User;

import sun.net.www.content.text.plain;

public class UserDaoImpl implements IUserDao {

	@Override
	public void add(User user) {
		//获得链接对象
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select count(*) from a_user where username = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getUsername());
			//接收结果�?
			resultSet = preparedStatement.executeQuery();
			//遍历结果�?
			while(resultSet.next()) {
				if (resultSet.getInt(1) > 0) {
					throw new UserException("用户已存在") ;
				}
			}
			
			sql = "insert into a_user(username,password,qpassword,pname,num,leixing,year,wenhao,lingyu,yituo,guanli,tname,bumen,tel,phone,dizhi,time) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getQpassword());
			preparedStatement.setString(4, user.getPname());
			preparedStatement.setString(5, user.getNum());
			preparedStatement.setString(6, user.getLeixing());
			preparedStatement.setString(7, user.getYear());
			preparedStatement.setString(8, user.getWenhao());
			preparedStatement.setString(9, user.getLingyu());
			preparedStatement.setString(10, user.getYituo());
			preparedStatement.setString(11, user.getGuanli());
			preparedStatement.setString(12, user.getTname());
			preparedStatement.setString(13, user.getBumen());
			preparedStatement.setString(14, user.getTel());
			preparedStatement.setString(15, user.getPhone());
			preparedStatement.setString(16, user.getDizhi());
			preparedStatement.setString(17, user.getTime());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			//关闭资源
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
	}

	@Override
	public void delete(int id) {
		Connection connection = DBUtil.getConnection();
		String sql = "delete from a_user where id = ?";
		PreparedStatement preparedStatement = null;
		
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		
	}

	@Override
	public void update(User user) {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "update a_user set username=?,password = ? , qpassword=?,pname=?,num=?,leixing=?,year=?,wenhao=?,lingyu=?,yituo=?,guanli=?,tname=?,bumen=?,tel=?,phone=?,dizhi=?,time=? where id = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getPassword());
			preparedStatement.setString(3, user.getQpassword());
			preparedStatement.setString(4, user.getPname());
			preparedStatement.setString(5, user.getNum());
			preparedStatement.setString(6, user.getLeixing());
			preparedStatement.setString(7, user.getYear());
			preparedStatement.setString(8, user.getWenhao());
			preparedStatement.setString(9, user.getLingyu());
			preparedStatement.setString(10, user.getYituo());
			preparedStatement.setString(11, user.getGuanli());
			preparedStatement.setString(12, user.getTname());
			preparedStatement.setString(13, user.getBumen());
			preparedStatement.setString(14, user.getTel());
			preparedStatement.setString(15, user.getPhone());
			preparedStatement.setString(16, user.getDizhi());
			preparedStatement.setString(17, user.getTime());
			preparedStatement.setInt(18, user.getId());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
	}

	@Override
	public User load(int id) {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from a_user  where id = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				user = new User();
				user.setId(id);
				user.setUsername(resultSet.getString("username"));
				user.setPassword(resultSet.getString("password"));
				user.setQpassword(resultSet.getString("qpassword"));
				user.setPname(resultSet.getString("pname"));
				user.setNum(resultSet.getString("num"));
				user.setLeixing(resultSet.getString("leixing"));
				user.setYear(resultSet.getString("year"));
				user.setWenhao(resultSet.getString("wenhao"));
				user.setLingyu(resultSet.getString("lingyu"));
				user.setYituo(resultSet.getString("yituo"));
				user.setGuanli(resultSet.getString("guanli"));
				user.setTname(resultSet.getString("tname"));
				user.setBumen(resultSet.getString("bumen"));
				user.setTel(resultSet.getString("tel"));
				user.setPhone(resultSet.getString("phone"));
				user.setDizhi(resultSet.getString("dizhi"));
				user.setTime(resultSet.getString("time"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  user;
	}

	@Override
	public User load(String username) {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from a_user  where username = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		User user = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, username);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				user = new User();
				user.setId(resultSet.getInt("id"));
				user.setUsername(username);
				user.setPassword(resultSet.getString("password"));
				user.setQpassword(resultSet.getString("qpassword"));
				user.setPname(resultSet.getString("pname"));
				user.setNum(resultSet.getString("num"));
				user.setLeixing(resultSet.getString("leixing"));
				user.setYear(resultSet.getString("year"));
				user.setWenhao(resultSet.getString("wenhao"));
				user.setLingyu(resultSet.getString("lingyu"));
				user.setYituo(resultSet.getString("yituo"));
				user.setGuanli(resultSet.getString("guanli"));
				user.setTname(resultSet.getString("tname"));
				user.setBumen(resultSet.getString("bumen"));
				user.setTel(resultSet.getString("tel"));
				user.setPhone(resultSet.getString("phone"));
				user.setDizhi(resultSet.getString("dizhi"));
				user.setTime(resultSet.getString("time"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  user;
	}

	@Override
	public List<User> load() {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from a_user ";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<User> users = new ArrayList<User>();
		User user = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				user = new User();
				user.setId(resultSet.getInt("id"));
				user.setUsername(resultSet.getString("username"));
				user.setPassword(resultSet.getString("password"));
				user.setQpassword(resultSet.getString("qpassword"));
				user.setPname(resultSet.getString("pname"));
				user.setNum(resultSet.getString("num"));
				user.setLeixing(resultSet.getString("leixing"));
				user.setYear(resultSet.getString("year"));
				user.setWenhao(resultSet.getString("wenhao"));
				user.setLingyu(resultSet.getString("lingyu"));
				user.setYituo(resultSet.getString("yituo"));
				user.setGuanli(resultSet.getString("guanli"));
				user.setTname(resultSet.getString("tname"));
				user.setBumen(resultSet.getString("bumen"));
				user.setTel(resultSet.getString("tel"));
				user.setPhone(resultSet.getString("phone"));
				user.setDizhi(resultSet.getString("dizhi"));
				user.setTime(resultSet.getString("time"));
				users.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  users;
	}

}
