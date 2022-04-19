package ptithcm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.TaiKhoanEntity;

@Controller
@Transactional
@RequestMapping("/dangky/")
public class DangKyController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "form_dangky", method = RequestMethod.GET)
	public String index(HttpServletRequest request, ModelMap model, @ModelAttribute("taikhoan") TaiKhoanEntity taikhoan) {
		List<TaiKhoanEntity> taiKhoan = this.getTaiKhoan();
		model.addAttribute("taiKhoan", taiKhoan);
		return "dangky/form_dangky";
	}
	public List<TaiKhoanEntity> getTaiKhoan(){
		Session session = factory. getCurrentSession();
		String hql = "FROM TaiKhoanEntity";
		Query query = session.createQuery(hql);
		List<TaiKhoanEntity> list = query.list();
		return list;
		
	}
	

}
