package ptithcm.controller;

import java.util.Date;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import ptithcm.entity.TaiKhoanEntity;
import ptithcm.entity.TenQuyenEntity;

@Transactional
@Controller
public class HomeController {
	@Autowired
	SessionFactory factory;
	
	@RequestMapping(value = "home")
	public String home () {
		return "home";
	}
	@RequestMapping(value = "home", params = "btnDK", method = RequestMethod.POST)
	public String home1 (HttpServletRequest request, @ModelAttribute("dangky") TaiKhoanEntity dangky,ModelMap model) {
		System.out.println(request.getParameter("confirm"));
		System.out.println(dangky.getMatkhau());
		if (dangky.getMatkhau().equals(request.getParameter("confirm"))) {
			Integer temp = this.insertUser(dangky);
			if(temp != 0) {
				model.addAttribute("message","them thanh cong");

			}else 	{
				model.addAttribute("message","them that bai");
			}
		}
		else model.addAttribute("message1","khong trung mat khau");
		return "home";
	}
	public Integer insertUser (TaiKhoanEntity tk) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			tk.setTinhtrang(true);
			tk.setTenquyen(this.getTenQuyen(2));
			session.save(tk);
			t.commit();	
		}
		catch (Exception e) {
			t.rollback();
			return 0;
		}
		finally {
			session.close();
		}
		return 1;
	}
	public TenQuyenEntity getTenQuyen(Integer id) {
		Session session = factory.getCurrentSession();
		String hql = "FROM TenQuyenEntity where maquyen =:id";
		Query query = session.createQuery(hql);
		query.setParameter("id", id);
		TenQuyenEntity list = (TenQuyenEntity) query.list().get(0);
		return list;
	}
}
