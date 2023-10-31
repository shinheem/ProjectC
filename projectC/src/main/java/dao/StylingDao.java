package dao;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import dto.StylingDto;
import mybatis.SqlSessionBean;

public class StylingDao {
    private static StylingDao dao = new StylingDao();

    private StylingDao() {
    }

    public static StylingDao getStylingDao() {
        return dao;
    }

    public static StylingDao getInstance() {
        return dao;
    }

    // Styling 목록 조회
    public List<StylingDto> list() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<StylingDto> list = sqlSession.selectList("styling.list");
        sqlSession.close();
        return list;
    }

    // Styling 등록
    public void insert(StylingDto dto) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        sqlSession.insert("styling.insert", dto);
        sqlSession.commit();
        sqlSession.close();
    }

    public void update(StylingDto dto) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        sqlSession.update("styling.update", dto);
        sqlSession.commit();
        sqlSession.close();
    }

    // Styling 삭제
    public void delete(int snum) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        sqlSession.delete("styling.delete", snum);
        sqlSession.commit();
        sqlSession.close();
    }

    // 스타일링 모던 조회
    public List<StylingDto> listModern() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<StylingDto> list = sqlSession.selectList("styling.listModern");
        sqlSession.close();
        return list;
    }

    // 스타일링 데일리 조회
    public List<StylingDto> listDaily() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<StylingDto> list = sqlSession.selectList("styling.listCasual");
        sqlSession.close();
        return list;
    }

    // 스타일링 힙 조회
    public List<StylingDto> listHip() {
        SqlSession sqlSession = SqlSessionBean.getSession();
        List<StylingDto> list = sqlSession.selectList("styling.listHip");
        sqlSession.close();
        return list;
    }

    public StylingDto getStyling(int snum) {
        SqlSession sqlSession = SqlSessionBean.getSession();
        StylingDto styling = sqlSession.selectOne("styling.getStyling", snum);
        sqlSession.close();
        return styling;
    }

    public List<StylingDto> getStylingByCategory(String category) {
        List<StylingDto> stylingList;
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
