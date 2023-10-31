package dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import dto.CustomerQuestionDto;
import mybatis.SqlSessionBean;

public class CustomerQeustionDao {

	public static CustomerQeustionDao dao = new CustomerQeustionDao();

	private CustomerQeustionDao() {
	}

	public static CustomerQeustionDao getInstance() {
		return dao;
	}
	public List<CustomerQuestionDto> serchPagelist(String keyword, int start, int end) {
	       try (SqlSession sqlSession = SqlSessionBean.getSession()) {
	           Map<String, Object> map = new HashMap<>();
	           map.put("keyword", keyword);
	           map.put("start", start);
	           map.put("end", end);
	           return sqlSession.selectList("CustomerQuestionDto.serch", map);
	       }
	   }
	public int serchCount(String keyword) {
	       try (SqlSession sqlSession = SqlSessionBean.getSession()) {
	           Map<String, Object> map = new HashMap<>();
	           map.put("keyword", keyword);
	           return sqlSession.selectOne("CustomerQuestionDto.serchCount", map);
	       }
	   }
	
	//검색기능
	public List<CustomerQuestionDto> serch(Map<String,Integer> map){
		SqlSession mapper = SqlSessionBean.getSession();
		List<CustomerQuestionDto> serch = mapper.selectOne("CustomerQuestionDto.serch",map);
		mapper.close();
		return serch;
	}
    //전체목록
	public List<CustomerQuestionDto> list() {
		SqlSession mapper = SqlSessionBean.getSession();
		List<CustomerQuestionDto> list = mapper.selectList("CustomerQuestionDto.list");
		mapper.close();
		return list;
	}
	public CustomerQuestionDto selectByqnum(int qnum) {
		SqlSession mapper = SqlSessionBean.getSession();
		CustomerQuestionDto vo = mapper.selectOne("CustomerQuestionDto.selectByqnum",qnum);
		mapper.close();
		return vo;
	}
	//메인글 목록 가져오기 - 할일 : 한번에(즉 한페이지에) 글 10개씩 가져오도록 변경  
	public List<CustomerQuestionDto> pagelist(Map<String,Integer> map) {
		SqlSession mapper = SqlSessionBean.getSession();
		List<CustomerQuestionDto> list = mapper.selectList("CustomerQuestionDto.pagelist",map);
		mapper.close();
		return list;
	}
	//전체 글 갯수
	public int count() {
			SqlSession mapper = SqlSessionBean.getSession();
			int result = mapper.selectOne("CustomerQuestionDto.count");
			mapper.close();
			return result;
	}

	public int questionInsert(CustomerQuestionDto vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		mapper.insert("CustomerQuestionDto.questionInsert",vo);
		mapper.commit();
		mapper.close();
			
	//맵퍼 xml에서 selectkey로 시퀀스 값을 vo 객체로 idx 프로퍼티에 저장을 시켰다.
	   return vo.getQnum();
	
	}

	/* 상세보기
	public static NoticeDto noticeboardDetailData(int no) {
		NoticeDto vo = new NoticeDto();
		SqlSession session = null;
		try {
			session = ssf.openSession();
			session.update("Notice.noticehitIncrement", no);
			session.commit();
			vo = session.selectOne("Notice.noticeboardDetailData", no);
		} catch (Exception ex) {
			System.out.println("Notice.noticeboardDetailData : error");
			ex.printStackTrace();
		} finally {
			if (session != null)
				session.close(); // POOL => 반환
		}
		return vo;
	}
	*/
	//수정하기
	public int questionUpdate(CustomerQuestionDto vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("CustomerQuestionDto.questionUpdate",vo);
		mapper.commit();
		mapper.close();
		return result;
	
	}

	//id 받아서 삭제하기
	public int questionDelete(int qnum) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.delete("CustomerQuestionDto.questionDelete",qnum);
		mapper.commit();
		mapper.close();
		return result;
	}
}