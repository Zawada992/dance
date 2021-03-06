package pl.taniec.dance.service;


import pl.taniec.dance.model.User;

import java.util.List;

public interface UserService {
    User findByNickName(String nickName);
    void saveUser(User user);
    void add(User user);
    void delete(Long id);
    User get(Long id);
    List<User> getUsers();


}
