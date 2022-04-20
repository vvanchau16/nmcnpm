package ptithcm.entity;

import java.sql.Timestamp;


import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CHITIETBAIVIET")
public class ChiTietBaiVietEntity {
	@Id
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "MaBaiViet", referencedColumnName = "MaBaiViet")
	private BaiVietEntity baiviet;
	
	@Column(name = "TinhTP")
	private String tinhtp;
	@Column(name = "QuanHuyen")
	private String quanhuyen;
	@Column(name = "PhuongXa")
	private String phuongxa;
	@Column(name = "MoTa")
	private String mota;
	@Column(name = "ThoiGianBatDau")
	private Timestamp thoigianbatdau;
	@Column(name = "ThoiGianKetThuc")
	private Timestamp thoigianketthuc;
	
	public BaiVietEntity getBaiviet() {
		return baiviet;
	}
	public void setBaiviet(BaiVietEntity baiviet) {
		this.baiviet = baiviet;
	}
	public String getTinhtp() {
		return tinhtp;
	}
	public void setTinhtp(String tinhtp) {
		this.tinhtp = tinhtp;
	}
	public String getQuanhuyen() {
		return quanhuyen;
	}
	public void setQuanhuyen(String quanhuyen) {
		this.quanhuyen = quanhuyen;
	}
	public String getPhuongxa() {
		return phuongxa;
	}
	public void setPhuongxa(String phuongxa) {
		this.phuongxa = phuongxa;
	}
	public String getMota() {
		return mota;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public Timestamp getThoigianbatdau() {
		return thoigianbatdau;
	}
	public void setThoigianbatdau(Timestamp thoigianbatdau) {
		this.thoigianbatdau = thoigianbatdau;
	}
	public Timestamp getThoigianketthuc() {
		return thoigianketthuc;
	}
	public void setThoigianketthuc(Timestamp thoigianketthuc) {
		this.thoigianketthuc = thoigianketthuc;
	}
	

}
