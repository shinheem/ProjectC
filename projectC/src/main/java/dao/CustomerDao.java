package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import dto.CustomerDto;
import mybatis.SqlSessionBean;

public class CustomerDao {
    // 로그인
	
	 public static CustomerDao dao = new CustomerDao();
	 private CustomerDao() {}
	 public static CustomerDao getInstance() {
	        return dao;
	    }
	 public CustomerDto login(Map<String, String> map) {
	        SqlSession mapperSession = SqlSessionBean.getSession();
	        CustomerDto vo = mapperSession.selectOne("customer.login", map);
	        mapperSession.close();
	        return vo;
	    }
	
   
    
	 public CustomerDto getUserByIdAndPassword(Map<String, String> map) {
	        SqlSession mapperSession = SqlSessionBean.getSession();
	        CustomerDto vo = mapperSession.selectOne("customer.login", map);
	        mapperSession.close();
	        return vo;
	    }

	  // 회원가입
	    public int registerCustomer(CustomerDto customer) {
	        SqlSession mapperSession = SqlSessionBean.getSession();
	        int result = mapperSession.insert("customer.registerCustomer", customer); 
	        mapperSession.commit();
	        mapperSession.close();
	        return result;
	    }
    
	    //고객목록 조회(관리자)
	    public List<CustomerDto> getCustomerList() {
	        SqlSession mapperSession = SqlSessionBean.getSession();
	        List<CustomerDto> customerList = mapperSession.selectList("customer.customerlist");
	        mapperSession.close();
	        return customerList;
	    }
    public CustomerDto selectOne(String id) {
        SqlSession mapperSession = SqlSessionBean.getSession();
        CustomerDto result = mapperSession.selectOne("customer.selectOne", id);
        mapperSession.close();
        return result;
    }
    
    public int update(CustomerDto vo) {
        SqlSession mapperSession = SqlSessionBean.getSession();
        int result = mapperSession.update("customer.update",vo);
        mapperSession.commit();
        mapperSession.close();
        return result;
     }
    
    public int checkDuplicatedId(String id) {
        SqlSession mapperSession = SqlSessionBean.getSession();
        int check = mapperSession.selectOne("customer.checkDuplicatedId",id);  //있으면 1 없으면 0 
        mapperSession.close();
        return check;
    }
}


