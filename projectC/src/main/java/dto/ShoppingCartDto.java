package dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Builder
@ToString
public class ShoppingCartDto {

	private String id;
	private String clothesSize;
	private int clothesNum;
	private String clothesName;
	private int cartQuantity;
	private String clothesImage;
	private int price2;
	private Date cartIndate;
	
	
}


