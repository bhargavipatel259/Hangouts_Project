package bean;
import java.sql.Blob;

import javax.servlet.http.Part;

public class EventReportBean {
private  int eventid;
private  String title;
private  Blob file;
private  String filename;
private  String text;

public int getEventid() {
	return eventid;
}
public void setEventid(int eventid) {
	this.eventid = eventid;
}
public String getTitle() {
	return title;
}
public void setTitle(String title) {
	this.title = title;
}
public Blob getFile() {
	return file;
}
public void setFile(Blob file) {
	this.file = file;
}
public String getFilename() {
	return filename;
}
public void setFilename(String filename) {
	this.filename = filename;
}
public String getText() {
	return text;
}
public  void setText(String text) {
	this.text = text;
}
}