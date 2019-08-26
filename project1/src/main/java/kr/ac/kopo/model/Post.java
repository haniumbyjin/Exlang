package kr.ac.kopo.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class Post {
	
	long code;
	String id;
	String title;
	String contents;
	long ref;
	long recommend;
	


	public long getRecommend() {
		return recommend;
	}
	public void setRecommend(long recommend) {
		this.recommend = recommend;
	}



	//클라이언트에서 받아올때는 attach로 받고
	MultipartFile attach;
	//DB에 넣어줄때는 filename으로 사용해준다.
	String filename;
	
	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public MultipartFile getAttach() {
		return attach;
	}
	public void setAttach(MultipartFile attach) {
		this.attach = attach;
	}
	
	
	
	Date regDate;
	
	
	public long getCode() {
		return code;
	}
	public void setCode(long code) {
		this.code = code;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public long getRef() {
		return ref;
	}
	public void setRef(long ref) {
		this.ref = ref;
	}

	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
}
