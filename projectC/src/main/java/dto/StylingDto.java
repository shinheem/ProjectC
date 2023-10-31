package dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Builder
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Setter
public class StylingDto {
	
	private int snum;
	private int category;  // 카테고리를 정수형으로 변경
	private int clothesNum1; // 아우터
	private int clothesNum2; // 상의
	private int clothesNum3; // 하의
	private int clothesNum4; // 신발
	private String stylingContent;
	private String picture;
	private Date styleDate;

	// 새로운 setCategory 메소드 (String 인수)
    public void setCategory(String category) {
        // String을 int로 변환하여 설정
        try {
            this.category = Integer.parseInt(category);
        } catch (NumberFormatException e) {
            // 유효한 int로 변환할 수 없는 경우 처리
            // 예외 처리 방법에 따라서 처리 코드 추가
        }
    }
    public void setCategory(int category) {
        this.category = category;
    }

	
	// 스타일링 카테고리를 반환하는 메서드
    public String category() {
        if ((snum >= 10001 && snum <= 19999) || (snum >= 40001 && snum <= 49999) || (snum >= 70001 && snum <= 79999)) {
            return "데일리";
        } else if ((snum >= 20001 && snum <= 29999) || (snum >= 50001 && snum <= 59999) || (snum >= 80001 && snum <= 89999)) {
            return "모던";
        } else if ((snum >= 30001 && snum <= 39999) || (snum >= 60001 && snum <= 69999) || (snum >= 90001 && snum <= 99999)) {
            return "힙";
        } else {
            return "신발"; // 다른 범위에 속하는 경우
        }
    }
}