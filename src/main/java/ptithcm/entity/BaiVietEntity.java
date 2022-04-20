package ptithcm.entity;

import java.util.Collection;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
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
	@GeneratedValue
	@Column(name = "MaBaiViet")
	private Long mabaiviet;
	@Column(name = "TieuDe")
	private String tieude;
	@Column(name = "Gia")
	private Float gia;
	@Column(name = "KhuVuc")
	private String khuvuc;
	@Column(name = "DiaChi")
	private String diachi;
	@Column(name = "TinhTrang")
	private Boolean tinhtrang;
	@Column(name = "An")
	private Boolean an;
	@Column(name = "LinkAnh")
	private String linkanh;
	@Column(name = "DienTich")
	private Float dientich;
	
	
	@ManyToOne
	@JoinColumn(name = "MaND")
	private NguoiDungEntity nguoidung;
	
	@OneToOne(mappedBy = "chitietbaiviet")
	private ChiTietBaiVietEntity chitietbaiviet;
	
	@OneToMany(mappedBy = "baiviet", fetch = FetchType.EAGER)
	private Collection<VideoEntity> video;
	
	@OneToMany(mappedBy = "baiviet",fetch = FetchType.EAGER)
	private Collection<AnhEntity> anh;
	
	@OneToMany(mappedBy = "baiviet", fetch = FetchType.EAGER)
	private Collection<QuangCaoEntity> quangcao;
	
	public Long getMabaiviet() {
		return mabaiviet;
	}

	public void setMabaiviet(Long mabaiviet) {
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

	public Boolean getTinhtrang() {
		return tinhtrang;
	}

	public void setTinhtrang(Boolean tinhtrang) {
		this.tinhtrang = tinhtrang;
	}

	public Boolean getAn() {
		return an;
	}

	public void setAn(Boolean an) {
		this.an = an;
	}

	public String getLinkanh() {
		return linkanh;
	}

	public void setLinkanh(String linkanh) {
		this.linkanh = linkanh;
	}

	public Float getDientich() {
		return dientich;
	}

	public void setDientich(Float dientich) {
		this.dientich = dientich;
	}

	public NguoiDungEntity getNguoidung() {
		return nguoidung;
	}

	public void setNguoidung(NguoiDungEntity nguoidung) {
		this.nguoidung = nguoidung;
	}

	public ChiTietBaiVietEntity getChitietbaiviet() {
		return chitietbaiviet;
	}

	public void setChitietbaiviet(ChiTietBaiVietEntity chitietbaiviet) {
		this.chitietbaiviet = chitietbaiviet;
	}

	public Collection<VideoEntity> getVideo() {
		return video;
	}

	public void setVideo(Collection<VideoEntity> video) {
		this.video = video;
	}

	public Collection<AnhEntity> getAnh() {
		return anh;
	}

	public void setAnh(Collection<AnhEntity> anh) {
		this.anh = anh;
	}

	public Collection<QuangCaoEntity> getQuangcao() {
		return quangcao;
	}

	public void setQuangcao(Collection<QuangCaoEntity> quangcao) {
		this.quangcao = quangcao;
	}

	
	
	
	
	
}
