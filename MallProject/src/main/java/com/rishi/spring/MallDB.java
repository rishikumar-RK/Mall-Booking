package com.rishi.spring;

import java.sql.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.Date;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.*;
import javax.sql.DataSource;

public class MallDB {
	private JdbcTemplate jdbc;
	
	public MallDB(DataSource dataSource) {
		jdbc = new JdbcTemplate(dataSource);
	}
	public User getUser(Integer userid) {
	    String sql = "SELECT * FROM emall.login WHERE id="+userid;
	    return jdbc.query(sql, new ResultSetExtractor<User>() {
	    	public User extractData(ResultSet rs) throws SQLException,
	                DataAccessException {
	            if (rs.next()) {
	            	User l = new User();
	                l.setName(rs.getString("name"));
	                l.setEmail(rs.getString("email"));
	                l.setId(rs.getInt("id"));
	                l.setNumber(rs.getString("number"));
	                return l;
	            }
	 
	            return null;
	        }
	 
	    });
	}
	public Integer getUserId(String email, String pass) {
		String sql="select * from login where binary email='"+email+"' and pass='"+pass+"'";
		return jdbc.query(sql, new ResultSetExtractor<Integer>() {
			public Integer extractData(ResultSet rs) throws SQLException,
            DataAccessException {
	    		
	    		if(rs.next())
	    			return rs.getInt("id");
	    		return 0;
	    	}
		});
	}
	public Boolean validate(String email, String pass) {
		String sql="select * from login where binary email='"+email+"' and pass='"+pass+"'";
		return jdbc.query(sql, new ResultSetExtractor<Boolean>() {
	    	public Boolean extractData(ResultSet rs) throws SQLException,
            DataAccessException {
	    		
	    		if(rs.next())
	    			return true;
	    		return false;
	    	}

		});
		
	}
	public List<AvailabilitySpaces> getAvailability(String from, String to){
		String sqlSelect = "select * from space s join \r\n" + 
				"(select room_id,space_id\r\n" + 
				"from space_availability s \r\n" + 
				"left join (select * from user_booked where ('\r\n" + 
				from + 
				"' between fromDate and toDate) or ('\r\n" + 
				to + 
				"' between fromDate and toDate)) u \r\n" + 
				"using(room_id) \r\n" + 
				"where u.room_id is null ) u\r\n" + 
				"using(space_id)\r\n" + 
				"where s.space_id=u.space_id\r\n" + 
				"order by space_id";
		return jdbc.query(sqlSelect, new ResultSetExtractor<List<AvailabilitySpaces>>() {
	    	public List<AvailabilitySpaces> extractData(ResultSet rs) throws SQLException,
	                DataAccessException {
	    		List<AvailabilitySpaces> l=new ArrayList<AvailabilitySpaces>();
	    		int temp=0;
	    		AvailabilitySpaces as=null;
	    		List<Integer> roomIdList=null;
	            while (rs.next()) {	  	
	            	if(temp!=rs.getInt("space_id")) {
	            		as=new AvailabilitySpaces();
	            		List<String> durationList=new ArrayList<String>();
	            		List<String> rentTypeList=new ArrayList<String>();
	            		List<Integer> costList=new ArrayList<Integer>();
	            		roomIdList =new ArrayList<Integer>();
	            		
	            		as.setSpaceId(rs.getInt("space_id"));
	            		as.setSpaceName(rs.getNString("space_name"));
	            		
	            		if(rs.getNString("space_name").equals("Cinema Theater")) {
	            			durationList.add(rs.getNString("duration"));
		            		rentTypeList.add(rs.getNString("rent_type"));
		            		costList.add(rs.getInt("cost"));
		            		
	            		}
	            		else {
	            			durationList.add(rs.getNString("duration"));
		            		rentTypeList.add(rs.getNString("rent_type"));
		            		costList.add(rs.getInt("cost"));
		            		rs.next();
		            		
		            		durationList.add(rs.getNString("duration"));
		            		rentTypeList.add(rs.getNString("rent_type"));
		            		costList.add(rs.getInt("cost"));
		            		rs.next();
		            		
		            		durationList.add(rs.getNString("duration"));
		            		rentTypeList.add(rs.getNString("rent_type"));
		            		costList.add(rs.getInt("cost"));
	            		}	            		
	            		
	            		roomIdList.add(rs.getInt("room_id"));
	            		
	            		as.setDuration(durationList);
	            		as.setRentType(rentTypeList);
	            		as.setCost(costList);
	            		as.setRoomId(roomIdList);
	            		l.add(as);
	            	}
	            	else {
	            		roomIdList.add(rs.getInt("room_id"));
	            		if(!rs.getNString("space_name").equals("Cinema Theater")) {
	            			rs.next();
		            		rs.next();
	            		}  		
	            	}
	            	temp=rs.getInt("space_id");
	            }
	            
	            return l;
	        }
	 
	    });
	}
	public List<UserSpace> getUserBooked(int id){
		String sqlSelect="Select * from user_booked where id="+id;
		return jdbc.query(sqlSelect,new ResultSetExtractor<List<UserSpace>>() {
			public List<UserSpace> extractData (ResultSet rs) throws SQLException,
            DataAccessException{
				List<UserSpace> l=new ArrayList<UserSpace>();
				while(rs.next()) {
					UserSpace us= new UserSpace();
					us.setBookId(rs.getInt("book_id"));
					us.setRoomId(rs.getInt("room_id"));
					us.setSpaceName(rs.getNString("space_name"));
					us.setFromDate(rs.getDate("fromDate"));
					us.setToDate(rs.getDate("toDate"));
					us.setCost(rs.getInt("cost"));
					us.setSqFt(rs.getInt("sqFt"));
					l.add(us);
				}
				return l;
			}
		});
	}
	public List<UserSpace> getUserBooked2(){
		String sqlSelect="Select * from user_booked";
		return jdbc.query(sqlSelect,new ResultSetExtractor<List<UserSpace>>() {
			public List<UserSpace> extractData (ResultSet rs) throws SQLException,
            DataAccessException{
				List<UserSpace> l=new ArrayList<UserSpace>();
				while(rs.next()) {
					UserSpace us= new UserSpace();
					us.setId(rs.getInt("id"));
					us.setBookId(rs.getInt("book_id"));
					us.setRoomId(rs.getInt("room_id"));
					us.setSpaceName(rs.getNString("space_name"));
					us.setFromDate(rs.getDate("fromDate"));
					us.setToDate(rs.getDate("toDate"));
					us.setCost(rs.getInt("cost"));
					us.setSqFt(rs.getInt("sqFt"));
					l.add(us);
				}
				return l;
			}
		});
	}
	public List<User> getUserDetails(){
		String sqlSelect="Select * from login";
		return jdbc.query(sqlSelect,new ResultSetExtractor<List<User>>() {
			public List<User> extractData (ResultSet rs) throws SQLException,
            DataAccessException{
				List<User> l=new ArrayList<User>();
				rs.next();
				while(rs.next()) {
					User us= new User();
					us.setId(rs.getInt("id"));
					us.setName(rs.getNString("name"));
					us.setEmail(rs.getNString("email"));
					us.setNumber(rs.getNString("number"));
					l.add(us);
				}
				return l;
			}
		});
	}
	public Integer totalCost() {
		String sql="select sum(cost) from user_booked"; 
		return jdbc.query(sql, new ResultSetExtractor<Integer>() {
	    	public Integer extractData(ResultSet rs) throws SQLException,
            DataAccessException {
	    		if(rs.next())
	    			return rs.getInt(1);
	    		return 0;
	    	}
		});
	}
	public boolean emailExist(String email) {
		String sql="select * from login where binary email='"+email+"'"; 
		return jdbc.query(sql, new ResultSetExtractor<Boolean>() {
	    	public Boolean extractData(ResultSet rs) throws SQLException,
            DataAccessException {
	    		if(rs.next())
	    			return true;
	    		return false;
	    	}
		});
	}
	
	public List<Integer> shopRate(){
		String sql="select * from space";
		return jdbc.query(sql,new ResultSetExtractor<List<Integer>>() {
			public List<Integer> extractData(ResultSet rs) throws SQLException,
            DataAccessException{
				List<Integer> l= new ArrayList<Integer>();
				while(rs.next()) {
					l.add(rs.getInt("cost"));
				}
				return l;
			}
		});
	}
	public List<Integer> roomList(){
		String sql="select count(room_id) from space_availability group by space_id";
		return jdbc.query(sql,new ResultSetExtractor<List<Integer>>() {
			public List<Integer> extractData(ResultSet rs) throws SQLException,
            DataAccessException{
				List<Integer> l= new ArrayList<Integer>();
				while(rs.next()) {
					l.add(rs.getInt(1));
				}
				return l;
			}
		});
	}
	public List<Date> getHolidays(){
		String sql="select * from holidays";
		return jdbc.query(sql,new ResultSetExtractor<List<Date>>() {
			public List<Date> extractData(ResultSet rs) throws SQLException,
            DataAccessException{
				List<Date> l= new ArrayList<Date>();
				while(rs.next()) {
					l.add(rs.getDate(1));
				}
				return l;
			}
		});
	}
	public int getSpaceId(String spaceName) {
		String sql="select * from space_availability where space_name='"+spaceName+"'";
		return jdbc.query(sql,new ResultSetExtractor<Integer>() {
			public Integer extractData(ResultSet rs) throws SQLException,
            DataAccessException{
				if(rs.next()) {
					return rs.getInt("space_id");
				}
				return 0;
			}
		});
	}
	public String getSpaceName(int spaceId) {
		String sql="select * from space_availability where space_id="+spaceId;
		return jdbc.query(sql,new ResultSetExtractor<String>() {
			public String extractData(ResultSet rs) throws SQLException,
            DataAccessException{
				if(rs.next()) {
					return rs.getNString("space_name");
				}
				return null;
			}
		});
	}
	public List<Integer> getCost(int roomId){
		
		String sql="select space_id,rent_type,cost from space s left join (select * from space_availability where room_id=\r\n" + 
				roomId + 
				") u using(space_id,space_name) where s.space_id=u.space_id";
		return jdbc.query(sql, new ResultSetExtractor<List<Integer>>() {
			public List<Integer> extractData(ResultSet rs) throws SQLException,
            DataAccessException{
				List<Integer> l= new ArrayList<Integer>();
				while(rs.next()) {
					int s=rs.getInt(1);
					l.add(s);
					if(s==6) {
						if(rs.getNString(2).equals("hour")) {
							l.add(0);
						}
						else {
							l.add(1);
						}
						l.add(rs.getInt(3));
					}
					else {
						if(rs.getNString(2).equals("hour")) {
							l.add(0);
						}
						else {
							l.add(1);
						}
						l.add(rs.getInt(3));
						rs.next();
						if(rs.getNString(2).equals("hour")) {
							l.add(0);
						}
						else {
							l.add(1);
						}
						l.add(rs.getInt(3));
						rs.next();
						if(rs.getNString(2).equals("hour")) {
							l.add(0);
						}
						else {
							l.add(1);
						}
						l.add(rs.getInt(3));
					}
				}
				return l;
			}
		});
	}
	public void addUser(User u) {
		String name,pass,email,number;
		name=u.getName();
		pass=u.getPass();
		email=u.getEmail();
		number=u.getNumber();
		String sql="insert into login(name,pass,email,number) values('"+name+"','"+pass+"','"+email+"','"+number+"')";
		jdbc.update(sql);
	}
	public void registerSpace(int spaceId, String spaceName) {
		String sql="insert into space_availability(space_id,space_name) values("+spaceId+",'"+spaceName+"')";
		jdbc.update(sql);
	}
	public void edit(int spaceId,int cost, String duration) {
		String sql="update space set cost="+cost+" where space_id="+spaceId+" and duration='"+duration+"'";
		jdbc.update(sql);
	}
	public void editUser(int id,String name, String number) {
		String sql="update login set name='"+name+"',number='"+number+"' where id="+id;
		jdbc.update(sql);
	}
	
	public UserSpace calculate(String fromDate,String toDate, int roomId) throws ParseException {
		UserSpace ub=new UserSpace();
		long cost=0;
		int hr=12;
		List<Integer> ob=getCost(roomId);
		ub.setSpaceId(ob.get(0));
		ub.setSpaceName(getSpaceName(ob.get(0)));
		ub.setRoomId(roomId);
		SimpleDateFormat df=new SimpleDateFormat ("yyyy-MM-dd");
		Date startDate = df.parse(fromDate);
		Date endDate = df.parse(toDate);
		ub.setFrom(df.format(startDate));
		ub.setTo(df.format(endDate));
		List<Date> l=getHolidays();
		Calendar start = Calendar.getInstance();
		start.setTime(startDate);
		Calendar end = Calendar.getInstance();
		end.setTime(endDate);
		end.add(Calendar.DATE, 1);
		if(ub.getSpaceId()==6) {
			int noOfDays=(int)((endDate.getTime()-startDate.getTime())/(1000 * 60 * 60 * 24));
			noOfDays++;
			int noOfWeeks=noOfDays/7+ (noOfDays % 7 == 0 ? 0 : 1);
			cost=noOfWeeks * ob.get(2);
			
		}
		else {
			for (Calendar st = start; start.before(end); start.add(Calendar.DATE, 1)) {	
				if(l.contains(st.getTime())) {
					if(ob.get(5)==0) {
						cost+=(ob.get(6)*hr);
					}
					else {
						cost+=ob.get(6);
					}
					
				}
				else if(st.get(Calendar.DAY_OF_WEEK)==7 || st.get(Calendar.DAY_OF_WEEK)==1) {
					if(ob.get(3)==0) {
						cost+=(ob.get(4)*hr);
					}
					else {
						cost+=ob.get(4);
					}
					
				}
				else {
					if(ob.get(1)==0) {
						cost+=(ob.get(2)*hr);
					}
					else {
						cost+=ob.get(2);
					}
				}
			    
			}
			
		}
		ub.setCost(cost);
		return ub;
	}
	public void userBook(UserSpace u) {
		String name,from,to;
		int id,roomId,sqFt;
		long cost;
		name=u.getSpaceName();
		from=u.getFrom();
		to=u.getTo();
		id=u.getId();
		roomId=u.getRoomId();
		sqFt=u.getSqFt();
		cost=u.getCost();
		String sql="insert into user_booked(id,room_id,space_name,fromDate,toDate,cost,sqFt) values(" +id +"," +roomId +",'" + 
				name +"','" +from +"','" +to +"'," +cost +"," +sqFt +")";
		jdbc.update(sql);
	}
	public void cancelBook(int bookId) {
		String sql="delete from user_booked where book_id="+bookId;
		jdbc.update(sql);
	}
	public void complaintRegister(int id,int roomId,String category,String description) {
		String sql="insert into complaint(id,room_id,category,description) values(" + id + "," + roomId +
				",'" + category + "','" + description + "')";
		jdbc.update(sql);
	}
	public List<complaintUser> complaintList(int id){
		String sql="select * from complaint where id="+id;
		return jdbc.query(sql, new ResultSetExtractor<List<complaintUser>>() {
			public List<complaintUser> extractData (ResultSet rs) throws SQLException,
            DataAccessException{
				List<complaintUser> l=new ArrayList<complaintUser>();
				while(rs.next()) {
					complaintUser c= new complaintUser();
					c.setRoomId(rs.getInt("room_id"));
					c.setCategory(rs.getNString("category"));
					c.setDescription(rs.getNString("description"));
					c.setApproved(rs.getNString("approved"));
					l.add(c);
				}
				return l;
			}
		});
	}
	public List<complaintUser> complaintList2(){
		String sql="select * from complaint";
		return jdbc.query(sql, new ResultSetExtractor<List<complaintUser>>() {
			public List<complaintUser> extractData (ResultSet rs) throws SQLException,
            DataAccessException{
				List<complaintUser> l=new ArrayList<complaintUser>();
				while(rs.next()) {
					complaintUser c= new complaintUser();
					c.setId(rs.getInt("id"));
					c.setRoomId(rs.getInt("room_id"));
					c.setCategory(rs.getNString("category"));
					c.setDescription(rs.getNString("description"));
					c.setApproved(rs.getNString("approved"));
					l.add(c);
				}
				return l;
			}
		});
	}
	public List<Integer> spaceCost(){
		String sql="select space_name,sum from (select space_name from space_availability group by space_name) s left join \r\n" + 
				"(select *,sum(cost) as sum from user_booked group by space_name) u using(space_name)";
		return jdbc.query(sql, new ResultSetExtractor<List<Integer>>() {
			public List<Integer> extractData (ResultSet rs) throws SQLException,
            DataAccessException{
				List<Integer> l=new ArrayList<Integer>();
				while(rs.next()) {
					if(rs.getInt("sum")>0)
						l.add(rs.getInt("sum"));
					else
						l.add(0);
				}
				return l;
			}
		});
	}
	public List<Integer> spacesBooked(String date){
		String sql="select space_id\r\n" + 
				"from space_availability s \r\n" + 
				"left join (select * from user_booked where ('\r\n" + 
				date + 
				"' between fromDate and toDate)) u \r\n" + 
				"using(room_id) \r\n" + 
				"where u.room_id is null\r\n" + 
				"group by space_id";
		return jdbc.query(sql, new ResultSetExtractor<List<Integer>>() {
			public List<Integer> extractData (ResultSet rs) throws SQLException,
            DataAccessException{
				List<Integer> l=new ArrayList<Integer>();
				while(rs.next()) {
					l.add(rs.getInt(1));
				}
				return l;
			}
		});
	}
	public List<Integer> getRoomIdList(String spaceName){
		String sql="select room_id from space_availability where space_name='"+spaceName+"'";
		return jdbc.query(sql, new ResultSetExtractor<List<Integer>>() {
			public List<Integer> extractData (ResultSet rs) throws SQLException,
            DataAccessException{
				List<Integer> l=new ArrayList<Integer>();
				while(rs.next()) {
					l.add(rs.getInt(1));
				}
				return l;
			}
		});
	}
	public List<String> getAvailableRoomId(String spaceName,String date){
		String sql="select room_id,id from\r\n" + 
				"(select * from space_availability where space_name='"+spaceName+"') s\r\n" + 
				"left join\r\n" + 
				"(select * from user_booked where (('\r\n" + 
				date + 
				"' between fromDate and toDate) and space_name='"+spaceName+"')) u \r\n" + 
				"using(room_id)";
		return jdbc.query(sql, new ResultSetExtractor<List<String>>() {
			public List<String> extractData (ResultSet rs) throws SQLException,
            DataAccessException{
				List<String> l=new ArrayList<String>();
				while(rs.next()) {
					if(rs.getInt("id")>0)
						l.add(String.valueOf(rs.getInt("id")));
					else
						l.add(String.valueOf(0));
				}
				return l;
			}
		});
	}
}
