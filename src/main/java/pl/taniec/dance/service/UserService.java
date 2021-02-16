package pl.taniec.dance.service;


import pl.taniec.dance.model.User;

public interface UserService {
    User findByNickName(String nickName);
    void saveUser(User user);
    void add(User user);
    void delete(Long id);

}
