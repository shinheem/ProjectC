package test;

import static org.junit.Assert.assertNotNull;

import org.apache.ibatis.session.SqlSession;
import org.junit.jupiter.api.Test;

import mybatis.SqlSessionBean;

class Testt {
	
	@Test
	void connect() {
		SqlSession session = SqlSessionBean.getSession();
		System.out.println(session);
		assertNotNull(session);
	}

}
