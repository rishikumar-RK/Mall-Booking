package com.rishi.spring;

public class complaintUser {
	int id;
	int roomId;
	String category;
	String description;
	String approved;
	
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
	public void setCategory(String category) {
		this.category=category;
	}
	public String getCategory() {
		return category;
	}
	public void setDescription(String description) {
		this.description=description;
	}
	public String getDescription() {
		return description;
	}
	public void setApproved(String approved) {
		this.approved=approved;
	}
	public String getApproved() {
		return approved;
	}
}
