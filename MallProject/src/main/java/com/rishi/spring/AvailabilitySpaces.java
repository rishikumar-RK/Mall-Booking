package com.rishi.spring;

import java.util.*;


public class AvailabilitySpaces {
	int spaceId;
	String spaceName;
	List<String> duration= new ArrayList<String>();
	List<String> rentType= new ArrayList<String>();
	List<Integer> cost=new ArrayList<Integer>();
	List<Integer> roomId=new ArrayList<Integer>();
	
	
	
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
	public void setDuration(List<String> duration) {
		this.duration=duration;
	}
	public List<String> getDuration() {
		return duration;
	}
	public void setRentType(List<String> rentType) {
		this.rentType=rentType;
	}
	public List<String> getRentType() {
		return rentType;
	}
	public void setRoomId(List<Integer> roomId) {
		this.roomId=roomId;
	}
	public List<Integer> getRoomId() {
		return roomId;
	}
	public void setCost(List<Integer> cost) {
		this.cost=cost;
	}
	public List<Integer> getCost() {
		return cost;
	}

}
