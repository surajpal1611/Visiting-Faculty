package com.visitingfaculty.dto;

public class WorkExperience {
private String id;
private String name;
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
@Override
public String toString() {
	return "WorkExperience [id=" + id + ", name=" + name + "]";
}
public WorkExperience() {
	super();
	// TODO Auto-generated constructor stub
}
public WorkExperience(String id, String name) {
	super();
	this.id = id;
	this.name = name;
}


}
