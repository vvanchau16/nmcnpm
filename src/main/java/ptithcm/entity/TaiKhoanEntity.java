package ptithcm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TAIKHOAN")
public class TaiKhoanEntity {
	@Id
	@Column(name = "TenDN")
	private String tenDN;
	@Column(name = "MatKhau")
	private String matkhau;
	@Column(name = "TinhTrang")
	private Boolean tinhtrang;
	@ManyToOne 
	@JoinColumn(name = "MaQuyen")
	private TenQuyenEntity tenquyen;
	@OneToOne(mappedBy = "taikhoan")
	private NguoiDungEntity nguoidung;
	public String getTenDN() {
		return tenDN;
	}
	public void setTenDN(String tenDN) {
		this.tenDN = tenDN;
	}
	public String getMatkhau() {
		return matkhau;
	}
	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}
	public Boolean getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(Boolean tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	public TenQuyenEntity getTenquyen() {
		return tenquyen;
	}
	public void setTenquyen(TenQuyenEntity tenquyen) {
		this.tenquyen = tenquyen;
	}
	public NguoiDungEntity getNguoidung() {
		return nguoidung;
	}
	public void setNguoidung(NguoiDungEntity nguoidung) {
		this.nguoidung = nguoidung;
	}
	
	
}
