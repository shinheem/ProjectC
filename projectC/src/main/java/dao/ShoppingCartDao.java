package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import dto.ShoppingCartDto;
import mybatis.SqlSessionBean;

public class ShoppingCartDao {
    private static ShoppingCartDao dao = new ShoppingCartDao();
    private ShoppingCartDao() {}

    public static ShoppingCartDao getShoppingCartDao() {
        return dao;
    }

    // 장바구니 조회
    public List<ShoppingCartDto> list() {
        SqlSession mapper = SqlSessionBean.getSession();
        List<ShoppingCartDto> list = mapper.selectList("ShoppingCartDto.selectAll");
        mapper.close();
        return list;
    }
    
    public List<ShoppingCartDto> selectId(String vo) {
    	SqlSession mapper = SqlSessionBean.getSession();
    	List<ShoppingCartDto> list = mapper.selectList("ShoppingCartDto.cartlist", vo);
    	mapper.close();
    	return list;
    }

    // 장바구니 추가
    public int insert(ShoppingCartDto cnum) {
        SqlSession mapper = SqlSessionBean.getSession();
           int num = mapper.insert("ShoppingCartDto.insert", cnum);
            mapper.commit();
            mapper.close();
            return num;
    }
    // 장바구니 삭제
    public int delete(String id) {
        SqlSession mapper = SqlSessionBean.getSession();
           int delete =  mapper.delete("ShoppingCartDto.delete", id);
            mapper.commit();
            mapper.close();
            return delete;
    }
    //장바구니 업데이트
    public int update(ShoppingCartDto id) {
    	SqlSession mapper = SqlSessionBean.getSession();
    	int delete =  mapper.delete("ShoppingCartDto.update", id);
    	mapper.commit();
    	mapper.close();
    	return delete;
    }
    public int deleteone(ShoppingCartDto id) {
        SqlSession mapper = SqlSessionBean.getSession();
        int delete =  mapper.delete("ShoppingCartDto.deleteone", id);
        mapper.commit();
        mapper.close();
        return delete;
     }
    //장바구니 옷 카운트
    public int itemDuplicated(Map<String, Object> map) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        int  count = sqlSession.selectOne("itemDuplicated", map);
        sqlSession.close();
        return count;
}
    //장바구니 카운트 증가 업데이트
    public int updateplus(Map<String, Object> map) {
       SqlSession mapper = SqlSessionBean.getSession();
       int update =  mapper.update("updateplus", map);
       mapper.commit();
       mapper.close();
       return update;
    }
}
