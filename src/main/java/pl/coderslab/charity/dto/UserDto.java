package pl.coderslab.charity.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class UserDto {

    private String firstName;

    private String lastName;

    private String email;

    private String password;

    private String password2;
}
