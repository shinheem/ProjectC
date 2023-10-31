package dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@Getter
@ToString
@AllArgsConstructor
@Builder
public class AdminDto {

	private String adid;
	private String adpassword;
	private String adname;
	private String ademail;
	private String adphone;
}
