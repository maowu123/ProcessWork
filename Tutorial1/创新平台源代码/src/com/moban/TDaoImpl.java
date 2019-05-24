package com.moban;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.moban.DBUtil;
import com.moban.TException;
import com.moban.T;

import sun.net.www.content.text.plain;

public class TDaoImpl implements ITDao {

	@Override
	public void add(T t) {
		//获得链接对象
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select count(*) from b_user where jibie = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, t.getJibie());
			//接收结果�?
			resultSet = preparedStatement.executeQuery();
			//遍历结果�?
			sql = "insert into b_user(jibie,suozai,zuzhi,jgongjian,jingji,xueke,ymingcheng,daima,yname,ytel,yleixing,gongjian,zname,zsex,zyear,zzhicheng,zzhuanye,zxueli,zxuewei,zphone,ztel,zemail,wname,wangzhi,tdizhi,youbian) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, t.getJibie());
			preparedStatement.setString(2, t.getSuozai());
			preparedStatement.setString(3, t.getZuzhi());
			preparedStatement.setString(4, t.getJgongjian());
			preparedStatement.setString(5, t.getJingji());
			preparedStatement.setString(6, t.getXueke());
			preparedStatement.setString(7, t.getYmingcheng());
			preparedStatement.setString(8, t.getDaima());
			preparedStatement.setString(9, t.getYname());
			preparedStatement.setString(10, t.getYtel());
			preparedStatement.setString(11, t.getYleixing());
			preparedStatement.setString(12, t.getGongjian());
			preparedStatement.setString(13, t.getZname());
			preparedStatement.setString(14, t.getZsex());
			preparedStatement.setString(15, t.getZyear());
			preparedStatement.setString(16, t.getZzhicheng());
			preparedStatement.setString(17, t.getZzhuanye());
			preparedStatement.setString(18, t.getZxueli());
			preparedStatement.setString(19, t.getZxuewei());
			preparedStatement.setString(20, t.getZphone());
			preparedStatement.setString(21, t.getZtel());
			preparedStatement.setString(22, t.getZemail());
			preparedStatement.setString(23, t.getWname());
			preparedStatement.setString(24, t.getWangzhi());
			preparedStatement.setString(25, t.getTdizhi());
			preparedStatement.setString(26, t.getYoubian());
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
	public void update(T t) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "update b_user set jibie = ? , suozai=?,zuzhi=?,jgongjian=?,jingji=?,xueke=?,ymingcheng=?,daima=?,yname=?,ytel=?,yleixing=?,gongjian=?,zname=?,zsex=?,zyear=?,zzhicheng=?,zzhuanye=?,zxueli=?,zxuewei=?,zphone=?,ztel=?,zemail=?,wname=?,wangzhi=?,tdizhi=?,youbian=? where id = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, t.getJibie());
			preparedStatement.setString(2, t.getSuozai());
			preparedStatement.setString(3, t.getZuzhi());
			preparedStatement.setString(4, t.getJgongjian());
			preparedStatement.setString(5, t.getJingji());
			preparedStatement.setString(6, t.getXueke());
			preparedStatement.setString(7, t.getYmingcheng());
			preparedStatement.setString(8, t.getDaima());
			preparedStatement.setString(9, t.getYname());
			preparedStatement.setString(10, t.getYtel());
			preparedStatement.setString(11, t.getYleixing());
			preparedStatement.setString(12, t.getGongjian());
			preparedStatement.setString(13, t.getZname());
			preparedStatement.setString(14, t.getZsex());
			preparedStatement.setString(15, t.getZyear());
			preparedStatement.setString(16, t.getZzhicheng());
			preparedStatement.setString(17, t.getZzhuanye());
			preparedStatement.setString(18, t.getZxueli());
			preparedStatement.setString(19, t.getZxuewei());
			preparedStatement.setString(20, t.getZphone());
			preparedStatement.setString(21, t.getZtel());
			preparedStatement.setString(22, t.getZemail());
			preparedStatement.setString(23, t.getWname());
			preparedStatement.setString(24, t.getWangzhi());
			preparedStatement.setString(25, t.getTdizhi());
			preparedStatement.setString(26, t.getYoubian());
			preparedStatement.setInt(27, t.getId());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}	
	}
	public T load(int id) {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user  where id = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, id);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(id);
				t.setJibie(resultSet.getString("jibie"));
				t.setSuozai(resultSet.getString("suozai"));
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZzhuanye(resultSet.getString("zzhuanye"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  t;
	}
	/*public T load(String zname) {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user  where id = ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, zname);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(resultSet.getString("jibie"));
				t.setSuozai(resultSet.getString("suozai"));
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(zname);
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  t;
	}*/
	public List<T> load() {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user ";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(resultSet.getString("jibie"));
				t.setSuozai(resultSet.getString("suozai"));
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}
	public List<T> load(String suozai) {
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where suozai=?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, suozai);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(resultSet.getString("jibie"));
				t.setSuozai(suozai);
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}
	public List<T> load(String ymingcheng,String zname,String youbian)
	{
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where ymingcheng =? and zname =? and youbian =?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,ymingcheng);
			preparedStatement.setString(2,zname);
			preparedStatement.setString(3,youbian);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(resultSet.getString("jibie"));
				t.setSuozai(resultSet.getString("suozai"));
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(ymingcheng);
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(zname);
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(youbian);
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}

	@Override
	public List<T> load1(String ymingcheng, String zname, String youbian) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where ymingcheng like ? or zname like ? or youbian like ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,"%"+ymingcheng+"%");
			preparedStatement.setString(2,"%"+zname+"%");
			preparedStatement.setString(3,"%"+youbian+"%");
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(resultSet.getString("jibie"));
				t.setSuozai(resultSet.getString("suozai"));
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}

	@Override
	public List<T> load2(String jibie) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where jibie=?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, jibie);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(jibie);
				t.setSuozai(resultSet.getString("suozai"));
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}

	@Override
	public List<T> load3(String jingji) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where jingji=?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, jingji);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJingji(jingji);
				t.setSuozai(resultSet.getString("suozai"));
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}

	@Override
	public List<T> loada(String jibie, String suozai, String jingji) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where jibie =? and suozai =? and jingji =?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,jibie);
			preparedStatement.setString(2,suozai);
			preparedStatement.setString(3,jingji);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(jibie);
				t.setSuozai(suozai);
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(jingji);
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}

	@Override
	public List<T> loadb(String jibie, String suozai, String jingji) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where jibie=? or suozai like ? or jingji like ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,jibie);
			preparedStatement.setString(2,"%"+suozai+"%");
			preparedStatement.setString(3,"%"+jingji+"%");
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(jibie);
				t.setSuozai(resultSet.getString("suozai"));
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}

	@Override
	public List<T> loadc(String jibie, String suozai, String jingji) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where jibie=? or suozai=? or jingji like ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,jibie);
			preparedStatement.setString(2,suozai);
			preparedStatement.setString(3,"%"+jingji+"%");
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(jibie);
				t.setSuozai(suozai);
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}

	@Override
	public List<T> loadd(String jibie, String suozai, String jingji) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where jibie=? or suozai like ? or jingji=?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,jibie);
			preparedStatement.setString(2,"%"+suozai+"%");
			preparedStatement.setString(3,jingji);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(jibie);
				t.setSuozai(resultSet.getString("suozai"));
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(jingji);
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}

	@Override
	public List<T> loade(String jibie, String suozai, String jingji) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where jibie like ? or suozai=? or jingji=?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,"%"+jibie+"%");
			preparedStatement.setString(2,suozai);
			preparedStatement.setString(3,jingji);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(resultSet.getString("jibie"));
				t.setSuozai(suozai);
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(jingji);
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}

	@Override
	public List<T> loadf(String jibie, String suozai, String jingji) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where jibie like ? or suozai like ? or jingji=?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,"%"+jibie+"%");
			preparedStatement.setString(2,"%"+suozai+"%");
			preparedStatement.setString(3,jingji);
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(resultSet.getString("jibie"));
				t.setSuozai(resultSet.getString("suozai"));
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(jingji);
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}

	@Override
	public List<T> loadg(String jibie, String suozai, String jingji) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where jibie like ? or suozai=? or jingji like ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,"%"+jibie+"%");
			preparedStatement.setString(2,suozai);
			preparedStatement.setString(3,"%"+jingji+"%");
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(resultSet.getString("jibie"));
				t.setSuozai(suozai);
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}

	@Override
	public List<T> loadh(String jibie, String suozai, String jingji) {
		// TODO 自动生成的方法存根
		Connection connection = DBUtil.getConnection();
		//准备sql语句
		String sql = "select * from b_user where jibie like ? or suozai like ? or jingji like ?";
		//创建语句传输对象
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		//集合中只能放入user对象
		List<T> ts = new ArrayList<T>();
		T t = null;
		try {
			preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1,"%"+jibie+"%");
			preparedStatement.setString(2,"%"+suozai+"%");
			preparedStatement.setString(3,"%"+jingji+"%");
			resultSet = preparedStatement.executeQuery();
			while(resultSet.next()) {
				t = new T();
				t.setId(resultSet.getInt("id"));
				t.setJibie(resultSet.getString("jibie"));
				t.setSuozai(resultSet.getString("suozai"));
				t.setZuzhi(resultSet.getString("zuzhi"));
				t.setJgongjian(resultSet.getString("jgongjian"));
				t.setJingji(resultSet.getString("jingji"));
				t.setXueke(resultSet.getString("xueke"));
				t.setYmingcheng(resultSet.getString("ymingcheng"));
				t.setDaima(resultSet.getString("daima"));
				t.setYname(resultSet.getString("yname"));
				t.setYtel(resultSet.getString("ytel"));
				t.setYleixing(resultSet.getString("Yleixing"));
				t.setGongjian(resultSet.getString("gongjian"));
				t.setZname(resultSet.getString("zname"));
				t.setZsex(resultSet.getString("zsex"));
				t.setZyear(resultSet.getString("zyear"));
				t.setZzhicheng(resultSet.getString("zzhicheng"));
				t.setZxueli(resultSet.getString("zxueli"));
				t.setZxuewei(resultSet.getString("zxuewei"));
				t.setZphone(resultSet.getString("zphone"));
				t.setZtel(resultSet.getString("ztel"));
				t.setZemail(resultSet.getString("zemail"));
				t.setWname(resultSet.getString("wname"));
				t.setWangzhi(resultSet.getString("wangzhi"));
				t.setTdizhi(resultSet.getString("tdizhi"));
				t.setYoubian(resultSet.getString("youbian"));
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.close(resultSet);
			DBUtil.close(preparedStatement);
			DBUtil.close(connection);
		}
		return  ts;
	}
}