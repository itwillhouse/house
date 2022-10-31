package com.mystudy.house.model.vo;

public class ProductInquiryVO {
	private String proinIdx, productNum, partnerNum, subject, regdate, views, comments, id, fileName, oriName, ip;

	public String getProinIdx() {
		return proinIdx;
	}

	public void setProinIdx(String proinIdx) {
		this.proinIdx = proinIdx;
	}

	public String getProductNum() {
		return productNum;
	}

	public void setProductNum(String productNum) {
		this.productNum = productNum;
	}

	public String getPartnerNum() {
		return partnerNum;
	}

	public void setPartnerNum(String partnerNum) {
		this.partnerNum = partnerNum;
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
	
	

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((comments == null) ? 0 : comments.hashCode());
		result = prime * result + ((fileName == null) ? 0 : fileName.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((ip == null) ? 0 : ip.hashCode());
		result = prime * result + ((oriName == null) ? 0 : oriName.hashCode());
		result = prime * result + ((partnerNum == null) ? 0 : partnerNum.hashCode());
		result = prime * result + ((productNum == null) ? 0 : productNum.hashCode());
		result = prime * result + ((proinIdx == null) ? 0 : proinIdx.hashCode());
		result = prime * result + ((regdate == null) ? 0 : regdate.hashCode());
		result = prime * result + ((subject == null) ? 0 : subject.hashCode());
		result = prime * result + ((views == null) ? 0 : views.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ProductInquiryVO other = (ProductInquiryVO) obj;
		if (comments == null) {
			if (other.comments != null)
				return false;
		} else if (!comments.equals(other.comments))
			return false;
		if (fileName == null) {
			if (other.fileName != null)
				return false;
		} else if (!fileName.equals(other.fileName))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (ip == null) {
			if (other.ip != null)
				return false;
		} else if (!ip.equals(other.ip))
			return false;
		if (oriName == null) {
			if (other.oriName != null)
				return false;
		} else if (!oriName.equals(other.oriName))
			return false;
		if (partnerNum == null) {
			if (other.partnerNum != null)
				return false;
		} else if (!partnerNum.equals(other.partnerNum))
			return false;
		if (productNum == null) {
			if (other.productNum != null)
				return false;
		} else if (!productNum.equals(other.productNum))
			return false;
		if (proinIdx == null) {
			if (other.proinIdx != null)
				return false;
		} else if (!proinIdx.equals(other.proinIdx))
			return false;
		if (regdate == null) {
			if (other.regdate != null)
				return false;
		} else if (!regdate.equals(other.regdate))
			return false;
		if (subject == null) {
			if (other.subject != null)
				return false;
		} else if (!subject.equals(other.subject))
			return false;
		if (views == null) {
			if (other.views != null)
				return false;
		} else if (!views.equals(other.views))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "ProductInquiryVO [proinIdx=" + proinIdx + ", productNum=" + productNum + ", partnerNum=" + partnerNum
				+ ", subject=" + subject + ", regdate=" + regdate + ", views=" + views + ", comments=" + comments
				+ ", id=" + id + "]";
	}
	
	
	
}
