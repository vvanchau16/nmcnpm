package ptithcm.entity;

import java.util.Collection;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "NGUOIDUNG")
public class NguoiDungEntity {
	@Id
	@GeneratedValue
	@Column(name = "MaND")
	private Long maND;
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
	
	@OneToMany(mappedBy = "nguoidung", fetch = FetchType.EAGER)
	private Collection<BaiVietEntity> baiviet;
	
	@OneToMany(mappedBy = "nguoidung",fetch = FetchType.EAGER )
	private Collection<ThongBaoEntity> thongbao;
	
	@OneToMany(mappedBy = "nguoidung",fetch = FetchType.EAGER )
	private Collection<GopYEntity> gopy;
	
	public Long getMaND() {
		return maND;
	}
	public void setMaND(Long maND) {
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
	public Collection<BaiVietEntity> getBaiviet() {
		return baiviet;
	}
	public void setBaiviet(Collection<BaiVietEntity> baiviet) {
		this.baiviet = baiviet;
	}
	public Collection<ThongBaoEntity> getThongbao() {
		return thongbao;
	}
	public void setThongbao(Collection<ThongBaoEntity> thongbao) {
		this.thongbao = thongbao;
	}
	public Collection<GopYEntity> getGopy() {
		return gopy;
	}
	public void setGopy(Collection<GopYEntity> gopy) {
		this.gopy = gopy;
	}
	
	
	
}
