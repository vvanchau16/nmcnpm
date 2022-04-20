package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ANH")
public class AnhEntity {
	@Id
	@Column(name = "MaAnh")
	private Integer maanh;
	@Column(name = "LinkAnh")
	private String linkanh;
	
	@ManyToOne
	@JoinColumn(name = "MaBaiViet")
	private BaiVietEntity baiviet;
	public Integer getMaanh() {
		return maanh;
	}
	public void setMaanh(Integer maanh) {
		this.maanh = maanh;
	}
	public String getLinkanh() {
		return linkanh;
	}
	public void setLinkanh(String linkanh) {
		this.linkanh = linkanh;
	}
	public BaiVietEntity getBaiviet() {
		return baiviet;
	}
	public void setBaiviet(BaiVietEntity baiviet) {
		this.baiviet = baiviet;
	}
	
}
