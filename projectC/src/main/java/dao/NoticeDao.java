package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import dto.NoticeDto;
import mybatis.SqlSessionBean;

public class NoticeDao {

	public static NoticeDao dao = new NoticeDao();

	private NoticeDao() {
	}

	public static NoticeDao getInstance() {
		return dao;
	}

    //전체목록
	public List<NoticeDto> list() {
		SqlSession mapper = SqlSessionBean.getSession();
		List<NoticeDto> list = mapper.selectList("NoticeDto.list");
		mapper.close();
		return list;
	}
	public NoticeDto selectByNoticeNum(int noticeNum) {
		SqlSession mapper = SqlSessionBean.getSession();
		NoticeDto vo = mapper.selectOne("NoticeDto.selectByNoticeNum",noticeNum);
		mapper.close();
		return vo;
	}
	//메인글 목록 가져오기 - 할일 : 한번에(즉 한페이지에) 글 10개씩 가져오도록 변경  
	public List<NoticeDto> pagelist(Map<String,Integer> map) {
		SqlSession mapper = SqlSessionBean.getSession();
		List<NoticeDto> list = mapper.selectList("NoticeDto.pagelist",map);
		mapper.close();
		return list;
	}
	//전체 글 갯수
	public int noticecount() {
			SqlSession mapper = SqlSessionBean.getSession();
			int result = mapper.selectOne("NoticeDto.noticecount");
			mapper.close();
			return result;
	}

	public int noticeboardInsert(NoticeDto vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		mapper.insert("NoticeDto.noticeboardInsert",vo);
		mapper.commit();
		mapper.close();
			
	//맵퍼 xml에서 selectkey로 시퀀스 값을 vo 객체로 idx 프로퍼티에 저장을 시켰다.
	   return vo.getNoticeNum();
	
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
	public int noticeboardUpdate(NoticeDto vo) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.update("NoticeDto.noticeboardUpdate",vo);
		mapper.commit();
		mapper.close();
		return result;
	
	}

	//id 받아서 삭제하기
	public int noticeboardDelete(int noticeNum) {
		SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.delete("NoticeDto.noticeboardDelete",noticeNum);
		mapper.commit();
		mapper.close();
		return result;
	}
}