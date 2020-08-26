package com.rishi.spring;


import java.util.Date;

public class UserSpace {
	
	int bookId;
	int id;
	int roomId;
	int spaceId;
	String spaceName;
	String from;
	String to;
	Date fromDate;
	Date toDate;
	long cost;
	int sqFt;
	
	public UserSpace() {
		super();
	}
	public UserSpace(int bookId,int id, int roomId, int spaceId, String spaceName, Date fromDate, Date toDate,long cost) {
		this.bookId=bookId;
		this.id=id;
		this.roomId=roomId;
		this.spaceId=spaceId;
		this.spaceName=spaceName;
		this.fromDate=fromDate;
		this.toDate=toDate;
		this.cost=cost;
	}
	
	public void setBookId(int bookId) {
		this.bookId=bookId;
	}
	public int getBookId() {
		return bookId;
	}
	public void setId(int id) {
		this.id=id;
	}
	public int getId() {
		return id;
	}
	public void setRoomId(int roomId) {
		this.roomId=roomId;
	}
	public int getRoomId() {
		return roomId;
	}
	public void setSpaceId(int spaceId) {
		this.spaceId=spaceId;
	}
	public int getSpaceId() {
		return spaceId;
	}
	public void setSpaceName(String spaceName) {
		this.spaceName=spaceName;
	}
	public String getSpaceName() {
		return spaceName;
	}
	public void setFromDate(Date fromDate) {
		this.fromDate=fromDate;
	}
	public Date getFromDate() {
		return fromDate;
	}
	public void setToDate(Date toDate) {
		this.toDate=toDate;
	}
	public Date getToDate() {
		return toDate;
	}
	public void setCost(long cost) {
		this.cost=cost;
	}
	public long getCost() {
		return cost;
	}
	public void setFrom(String from) {
		this.from=from;
	}
	public String getFrom() {
		return from;
	}
	public void setTo(String to) {
		this.to=to;
	}
	public String getTo() {
		return to;
	}
	public void setSqFt(int sqFt) {
		this.sqFt=sqFt;
	}
	public int getSqFt() {
		return sqFt;
	}
}
