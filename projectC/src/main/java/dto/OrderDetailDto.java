package dto;

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
public class OrderDetailDto {

	private int odNum;
	private int orderNum;
	private int clothesNum;
	private int OrderDetailQuantity;
	private String detailResult;
}
