package dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString
@Setter
public class ClothesDto {

	private int clothesNum;
	private String clothesKind;
	private int price2;
	private String clothesName;
	private String clothesContent;	//옷설명 
	private String clothesImage;	//옷사진 
	private int clothesCount;	//옷수량
	private Date pregDate;
	private String useyn;	//판매:Y 품절:N
	
	private int typeNum;	//아우터 데일리=1, 아우터 모던=2, 아우터 힙 =3,
	//상의 데일리 =4, 상의 모던=5, 상의 힙=6,
	//하의 데일리=7, 하의 모던=8, 하의 힙=9
	//신발=10 

private int clothesNum2;	//type이 각각 1,2,3,4 ... 일 떄 그에 맞게 10000,20000 ...씩 넣어준 값.


public void setClothesNumByType() {
// typeNum에 따라 clothesNum 설정
switch (typeNum) {
case 1:
clothesNum2 = 10000;
break;
case 2:
clothesNum2 = 20000;
break;
case 3:
clothesNum2 = 30000;
break;
case 4:
clothesNum2 = 40000;
break;
case 5:
clothesNum2 = 50000;
break;
case 6:
clothesNum2 = 60000;
break;
case 7:
clothesNum2 = 70000;
break;
case 8:
clothesNum2 = 80000;
break;
case 9:
clothesNum2 = 90000;
break;
case 10:
clothesNum2 = 100000;
break;
default:
clothesNum2 = 0; // 예외 처리 필요
break;
}
}
}
