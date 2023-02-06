package com.niharika.tutorials.repository;

import com.niharika.tutorials.model.UserDto;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserDto, Long> {

        UserDto findByUsername(String username);

}
