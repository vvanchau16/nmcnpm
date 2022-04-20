package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "VIDEO")
public class VideoEntity {
	@Id
	@Column(name = "MaVideo")
	private Integer mavideo;
	@Column(name = "LinkVideo")
	private String linkvideo;
	
	@ManyToOne
	@JoinColumn(name = "MaBaiViet")
	private BaiVietEntity baiviet;
	public Integer getMavideo() {
		return mavideo;
	}
	public void setMavideo(Integer mavideo) {
		this.mavideo = mavideo;
	}
	public String getLinkvideo() {
		return linkvideo;
	}
	public void setLinkvideo(String linkvideo) {
		this.linkvideo = linkvideo;
	}
	public BaiVietEntity getBaiviet() {
		return baiviet;
	}
	public void setBaiviet(BaiVietEntity baiviet) {
		this.baiviet = baiviet;
	}
	
}
