package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import dto.ClothesDto;
import mybatis.SqlSessionBean;

public class ClothesDao {

    public static ClothesDao dao = new ClothesDao();
    private ClothesDao() {}
    public static ClothesDao getInstance() {
        return dao;
    }

    // 상품 목록 조회
    public List<ClothesDto> list() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<ClothesDto> list = sqlSession.selectList("ClothesDto.list");
        sqlSession.close();
        return list;
    }
    
    public List<ClothesDto> stylelist() {
    	SqlSession sqlSession = SqlSessionBean.getSession();
        List<ClothesDto> list = sqlSession.selectList("ClothesDto.list");
        sqlSession.close();
        return list;
    }
    
    //아우터 목록 조회
    public List<ClothesDto> outerlist() {
    	SqlSession sqlSession = SqlSessionBean.getSession();
        List<ClothesDto> list = sqlSession.selectList("ClothesDto.outerlist");
        sqlSession.close();
        return list;
    }
    
    //상의 목록 조회
    public List<ClothesDto> toplist() {
    	SqlSession sqlSession = SqlSessionBean.getSession();
        List<ClothesDto> list = sqlSession.selectList("ClothesDto.toplist");
        sqlSession.close();
        return list;
    }
    
    //하의 목록 조회
    public List<ClothesDto> pantslist() {
    	SqlSession sqlSession = SqlSessionBean.getSession();
    	List<ClothesDto> list = sqlSession.selectList("ClothesDto.pantslist");
    	sqlSession.close();
    	return list;
    }
    
    //신발 목록 조회
    public List<ClothesDto> shoeslist() {
    	SqlSession sqlSession = SqlSessionBean.getSession();
    	List<ClothesDto> list = sqlSession.selectList("ClothesDto.shoeslist");
    	sqlSession.close();
    	return list;
    }

    // 상품 페이지 목록 조회
    public List<ClothesDto> pagelist(Map<String, Object> map) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<ClothesDto> list = sqlSession.selectList("ClothesDto.pagelist", map);
        sqlSession.close();
        return list;
    }

    // 전체 상품 개수 조회
    public int count() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        int result = sqlSession.selectOne("ClothesDto.count");
        sqlSession.close();
        return result;
    }

    // 조회수 증가
    public int setReadCount(int id) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        int result = sqlSession.update("ClothesDto.setReadCount", id);
        sqlSession.commit();
        sqlSession.close();
        return result;
    }

    // 상품 정보 수정
    public int update(ClothesDto vo) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        int result = sqlSession.update("ClothesDto.update", vo);
        sqlSession.commit();
        sqlSession.close();
        return result;
    }

    // 특정 상품 조회
    public ClothesDto selectOne(int id) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        ClothesDto result = sqlSession.selectOne("ClothesDto.selectOne", id);
        sqlSession.close();
        return result;
    }

    // 상품 삭제
    public int delete(int clothesNum) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        int result = sqlSession.delete("ClothesDto.delete", clothesNum);
        sqlSession.commit();
        sqlSession.close();
        return result;
    }
    // 상품 등록
    public int insert(ClothesDto vo) {
        SqlSession sqlSession = SqlSessionBean.getSession();
       int result = sqlSession.insert("ClothesDto.insert", vo);
        sqlSession.commit();
        sqlSession.close();
        return result;
    }
 // 스타일링 데일리 조회
    public List<ClothesDto> listDaily() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<ClothesDto> list = sqlSession.selectList("ClothesDto.listDaily");
        sqlSession.close();
        return list;
    }
    // 스타일링 힙 조회
    public List<ClothesDto> listHip() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<ClothesDto> list = sqlSession.selectList("ClothesDto.listHip");
        sqlSession.close();
        return list;
    }
    // 스타일링 모던 조회
    public List<ClothesDto> listModern() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<ClothesDto> list = sqlSession.selectList("ClothesDto.listModern");
        sqlSession.close();
        return list;
    }
    public List<ClothesDto> getStylingByCategory(String category) {
        List<ClothesDto> stylingList;
        SqlSession sqlSession = SqlSessionBean.getSession();

        try {
            // MyBatis 매퍼 파일에서 정의한 SQL 쿼리를 사용하여 카테고리에 해당하는 스타일링 데이터를 가져옵니다.
            stylingList = sqlSession.selectList("styling.getStylingByCategory", category);
        } finally {
            sqlSession.close();
        }

        return stylingList;
    }
}
