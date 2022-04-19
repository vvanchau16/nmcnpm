package ptithcm.entity;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "NGUOIDUNG")
public class NguoiDungEntity {
	@Id
	@Column(name = "MaND")
	private Integer maND;
	@Column(name = "SDT")
	private String sdt;
	@Column(name = "Email")
	private String email;
	@Column(name = "DiaChi")
	private String diachi;
	@Column(name = "LinkAnhDaiDien")
	private String linkanhdaidien;
	@OneToOne (cascade = CascadeType.ALL)
	@JoinColumn(name = "TenDN", referencedColumnName = "TenDN")
	private TaiKhoanEntity taikhoan;
	public Integer getMaND() {
		return maND;
	}
	public void setMaND(Integer maND) {
		this.maND = maND;
	}
	public String getSdt() {
		return sdt;
	}
	public void setSdt(String sdt) {
		this.sdt = sdt;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getLinkanhdaidien() {
		return linkanhdaidien;
	}
	public void setLinkanhdaidien(String linkanhdaidien) {
		this.linkanhdaidien = linkanhdaidien;
	}
	public TaiKhoanEntity getTaikhoan() {
		return taikhoan;
	}
	public void setTaikhoan(TaiKhoanEntity taikhoan) {
		this.taikhoan = taikhoan;
	}
	
}
