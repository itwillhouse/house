package com.mystudy.house.model.vo;

public class RequestVO {
	private String requestIdx, id, subject, regdate, views, comments, likes, fileName, oriName, ip, rNum;
	
	public String getrNum() {
		return rNum;
	}

	public void setrNum(String rNum) {
		this.rNum = rNum;
	}

	public String getRequestIdx() {
		return requestIdx;
	}

	public void setRequestIdx(String requestIdx) {
		this.requestIdx = requestIdx;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getViews() {
		return views;
	}

	public void setViews(String views) {
		this.views = views;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getLikes() {
		return likes;
	}

	public void setLikes(String likes) {
		this.likes = likes;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getOriName() {
		return oriName;
	}

	public void setOriName(String oriName) {
		this.oriName = oriName;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	@Override
	public String toString() {
		return "RequestVO [requestIdx=" + requestIdx + ", id=" + id + ", subject=" + subject + ", regdate=" + regdate
				+ ", views=" + views + ", comments=" + comments + ", likes=" + likes + ", fileName=" + fileName
				+ ", oriName=" + oriName + ", ip=" + ip + "]";
	}
	
	
	
	
	
}
