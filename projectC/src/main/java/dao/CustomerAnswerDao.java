package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import dto.CustomerAnswerDto;
import mybatis.SqlSessionBean;

public class CustomerAnswerDao {
    private static CustomerAnswerDao dao = new CustomerAnswerDao();
    private CustomerAnswerDao() {}

    public static CustomerAnswerDao getInstance() {
        return dao;
    }
    // Customer Q&A 답변 등록
    public int answerInsert(CustomerAnswerDto vo) {
        SqlSession mapper = SqlSessionBean.getSession();
        int anum=mapper.insert("CustomerAnswerDto.answerInsert",vo);
        mapper.commit();
        mapper.close();
        return anum;
    }
    // Customer Q&A 답변 삭제
    public int answerDelete(int anum) {
    	SqlSession mapper = SqlSessionBean.getSession();
		int result = mapper.delete("CustomerAnswerDto.answerDelete",anum);
		mapper.commit();
		mapper.close();
		return result;
   
    }
    //기본키 최대값 구하기
    public int maxOf() {
		SqlSession session = SqlSessionBean.getSession();
		int result = session.selectOne("CustomerAnswerDto.maxOf");
		session.close();
		return result;
	}
    //답변 불러오기
    public List<CustomerAnswerDto> commentsList(int anum){
		SqlSession session = SqlSessionBean.getSession();
		List<CustomerAnswerDto> list = session.selectList("commentsList",anum);
		session.close();
		return list;
	}
    //답변 개수 
	public int setCommentCount(int anum) {
		SqlSession session = SqlSessionBean.getSession();
		int result = session.update("setCommentCount",anum);
		session.commit();
		session.close();
		return result;
				
		
	}
}
