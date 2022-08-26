package com.visitingfaculty.dto;

//created by suraj 
public class Designation {

	private String id;
	private String name;
	private String points;
	private String active;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPoints() {
		return points;
	}

	public void setPoints(String points) {
		this.points = points;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public Designation(String id, String name) {
		super();
		this.id = id;
		this.name = name;
	}

	@Override
	public String toString() {
		return "Designation [id=" + id + ", name=" + name + ", points=" + points + ", active=" + active + "]";
	}

	public Designation(String id, String name, String points, String active) {
		super();
		this.id = id;
		this.name = name;
		this.points = points;
		this.active = active;
	}

	public Designation() {
		super();
		// TODO Auto-generated constructor stub
	}
}
