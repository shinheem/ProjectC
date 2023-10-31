package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import dto.BuyDto;
import mybatis.SqlSessionBean;

public class BuyDao {

    public static BuyDao dao = new BuyDao();
    private BuyDao() {}
    public static BuyDao getInstance() {
        return dao;
    }

    public int buyinsert(Map<String,Object> key){
    	SqlSession sqlSession = SqlSessionBean.getSession();
    	int vo = sqlSession.insert("Buy.insert", key);
    	sqlSession.commit();
    	sqlSession.close();
    	return vo;
    }

    // 주문 정보조회
    public List<BuyDto> list() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<BuyDto> list = sqlSession.selectList("Buy.list");
        sqlSession.close();
        return list;
    }
    //전체 글 개수
    public int buycount() {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.selectOne("Buy.buyCount");
		mapper.close();
		return result;
}
    //10개씩 글 불러오기
	public List<BuyDto> pagelist(Map<String,Integer> map) {
		SqlSession mapper = SqlSessionBean.getSession();
		List<BuyDto> list = mapper.selectList("Buy.pagelist",map);
		mapper.close();
		return list;
	}
}
