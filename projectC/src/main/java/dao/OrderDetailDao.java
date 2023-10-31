package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.OrderDetailDto;
import mybatis.SqlSessionBean;

public class OrderDetailDao {

    public static OrderDetailDao dao = new OrderDetailDao();
    private OrderDetailDao() {}
    public static OrderDetailDao getInstance() {
        return dao;
    }


    // 주문 상세 목록 조회
    public List<OrderDetailDto> list() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<OrderDetailDto> list = sqlSession.selectList("dao.OrderDetailDao.list");
        sqlSession.close();
        return list;
    }

    // 주문 상세 정보 추가
    public void insert(OrderDetailDto dto) {
    	SqlSession sqlSession = SqlSessionBean.getSession();
    	sqlSession.insert("dao.OrderDetailDao.insert", dto);
    	sqlSession.commit();
    	sqlSession.close();
    }
    // 주문 상세 정보 삭제
    public int delete(int odNum) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        int result = sqlSession.delete("dao.OrderDetailDao.delete", odNum);
        sqlSession.commit();
        sqlSession.close();
        return result;
    }

    // 주문 상세 정보 수정
    public int update(OrderDetailDto dto) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        int result = sqlSession.update("dao.OrderDetailDao.update", dto);
        sqlSession.commit();
        sqlSession.close();
        return result;
    }
}
