package dto;

import java.security.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Builder
@ToString
public class CustomerAnswerDto {

	private int anum;
	private int question;
	private String answerWriter;
	private String answerContents;
	private Timestamp answerDate;
	private String ip;
}
