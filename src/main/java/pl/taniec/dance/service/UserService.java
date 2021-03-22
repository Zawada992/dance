package pl.taniec.dance.service;


import pl.taniec.dance.model.Users;

import java.util.List;

public interface UserService {
    Users findByNickName(String nickName);
    void saveUser(Users user);
    void add(Users user);
    void delete(Long id);
    Users get(Long id);
    List<Users> getUsers();


}
