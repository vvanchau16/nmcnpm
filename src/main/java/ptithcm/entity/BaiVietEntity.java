package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "BAIVIET")
public class BaiVietEntity {
	@Id
	@Column(name = "MaBaiViet")
	private Integer mabaiviet;
	@Column(name = "TieuDe")
	private String tieude;
	@Column(name = "Gia")
	private Float gia;
	@Column(name = "KhuVuc")
	private String khuvuc;
	@Column(name = "DiaChi")
	private String diachi;
	@Column(name = "TinhTrang")
	private String tinhtrang;
	@Column(name = "Anh")
	private String anh;
	@Column(name = "LinkAnh")
	private String linkanh;
	
	@ManyToOne
	@JoinColumn(name = "MaND")
	private NguoiDungEntity nguoidung;
	
	@OneToOne(mappedBy = "chitietbaiviet")
	private ChiTietBaiVietController chitietbaiviet;
	
	@OneToMany(mappedBy = "baiviet", fetch = FetchType.EAGER)
	private Collection<VideoEntity> video;
	
	@OneToMany(mappedBy = "baiviet",fetch = FetchType.EAGER)
	private Collection<AnhEntity> Anh;
	
	public Integer getMabaiviet() {
		return mabaiviet;
	}
	public void setMabaiviet(Integer mabaiviet) {
		this.mabaiviet = mabaiviet;
	}
	public String getTieude() {
		return tieude;
	}
	public void setTieude(String tieude) {
		this.tieude = tieude;
	}
	public Float getGia() {
		return gia;
	}
	public void setGia(Float gia) {
		this.gia = gia;
	}
	public String getKhuvuc() {
		return khuvuc;
	}
	public void setKhuvuc(String khuvuc) {
		this.khuvuc = khuvuc;
	}
	public String getDiachi() {
		return diachi;
	}
	public void setDiachi(String diachi) {
		this.diachi = diachi;
	}
	public String getTinhtrang() {
		return tinhtrang;
	}
	public void setTinhtrang(String tinhtrang) {
		this.tinhtrang = tinhtrang;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getLinkanh() {
		return linkanh;
	}
	public void setLinkanh(String linkanh) {
		this.linkanh = linkanh;
	}
	public NguoiDungEntity getNguoidung() {
		return nguoidung;
	}
	public void setNguoidung(NguoiDungEntity nguoidung) {
		this.nguoidung = nguoidung;
	}
	
	
}
