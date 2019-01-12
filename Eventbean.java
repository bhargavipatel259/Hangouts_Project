package bean;

import java.io.Serializable;
import java.sql.Blob;

import javax.servlet.http.Part;

public class Eventbean implements Serializable{
private String title ;
private String textpart;
private String speaker;
private String speakerinfo;
private String venue;
private String email;
private String time;
private String date;
private int eventid;
private long filesize;
//private Blob rep;

public long getFilesize() {
	return filesize;
}
public void setFilesize(long filesize) {
	this.filesize = filesize;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public int getEventid() {
	return eventid;
}
public void setEventid(int eventid) {
	this.eventid = eventid;
}
//public void setB(Blob rep) {
//	this.rep = rep;
//}
//public Blob getRep() {
//	return rep;
//}
public String getTextpart() {
	return textpart;
}
public void setTextpart(String textpart) {
	this.textpart = textpart;
}
public String getSpeaker() {
	return speaker;
}
public void setSpeaker(String speaker) {
	this.speaker = speaker;
}
public String getSpeakerinfo() {
	return speakerinfo;
}
public void setSpeakerinfo(String speakerinfo) {
	this.speakerinfo = speakerinfo;
}
public String getVenue() {
	return venue;
}
public void setVenue(String venue) {
	this.venue = venue;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
}