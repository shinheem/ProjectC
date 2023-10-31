package dto;

import java.sql.Date;

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
public class NoticeDto {
	private long r;
	private int noticeNum;
	private String writer;
    private String noticeTitle;
	private String noticeContent;
	private String ip;
	private Date noticeDate;
}