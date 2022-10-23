package com.house.model.vo;

public class KnowhowVO {
	// 노하우글번호, 작성자아이디, 노하우글제목, 노하우글내용, 노하우글작성날짜
	// 노하우글조회수, 노하우글썸네일경로, 노하우글카테고리
	private String knowhowIdx, id, subject, content, regdate;
	private String views, thumbnail, category;
	private String scrapCnt;

	public String getKnowhowIdx() {
		return knowhowIdx;
	}

	public void setKnowhowIdx(String knowhowIdx) {
		this.knowhowIdx = knowhowIdx;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getScrapCnt() {
		return scrapCnt;
	}

	public void setScrapCnt(String scrapCnt) {
		this.scrapCnt = scrapCnt;
	}

}
