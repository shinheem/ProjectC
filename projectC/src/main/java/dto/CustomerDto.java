package dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Builder 
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class CustomerDto {

	private String id;
	private String password;
	private String name;
	private String tel;
	private String email;
	private String role;
}
