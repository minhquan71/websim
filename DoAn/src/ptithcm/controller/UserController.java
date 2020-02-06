package ptithcm.controller;


import java.util.ArrayList;
import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import ptithcm.entity.Product;


@Transactional
@Controller
@RequestMapping("/user/")
public class UserController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("index1")
	public String index1(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM Product";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		List<Product> listNoiTieng = new ArrayList<Product>();
		for (Product product : list) {
			if(product.getProduct_type().getId()==4) {
				listNoiTieng.add(product);
			}
		}
		
		model.addAttribute("listNoiTieng",listNoiTieng);
		
		return "user/index1";
	}
	
	
}
