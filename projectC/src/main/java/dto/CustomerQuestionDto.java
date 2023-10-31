package dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;
@Getter
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class CustomerQuestionDto {
    
	private long r;
	private int qnum;
	private String questionWriter;
	private String questionTitle; 
	private String questionContent;
	private Date questionDate;
	private String ip;
	private int answerCount;
}
