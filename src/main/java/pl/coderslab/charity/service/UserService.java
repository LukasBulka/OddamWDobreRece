package pl.coderslab.charity.service;

import org.springframework.security.core.userdetails.UserDetailsService;
import pl.coderslab.charity.dto.UserDto;
import pl.coderslab.charity.model.User;

public interface UserService extends UserDetailsService {

    User save(UserDto userDto);
}
