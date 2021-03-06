package com.wsndata.dbaccess;
import java.util.List;
import org.apache.log4j.Logger;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;
import com.dcs.hibernate.HibernateHome;
import com.wsndata.data.LandType;

public class LandTypeHome extends HibernateHome {
	private static final Logger log = Logger.getLogger(LandTypeHome.class);
	public List<LandType> findAll(){
		try {			
			Criteria crit = sessionFactory.getCurrentSession().createCriteria(LandType.class);
			crit.addOrder(Order.asc("landTypeName"));
			return crit.list();
		} catch (RuntimeException re) {
			log.error("findAll failed", re);
			throw re;
		}
	}
}
