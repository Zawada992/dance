package pl.taniec.dance.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.taniec.dance.model.User;
import pl.taniec.dance.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService{

    private final UserRepository userRepository;

    private final BCryptPasswordEncoder passwordEncoder;

    public UserServiceImpl(UserRepository userRepository,
                           BCryptPasswordEncoder passwordEncoder) {
        this.passwordEncoder = passwordEncoder;
        this.userRepository = userRepository;
    }




    @Override
    public User findByNickName(String nickName) {
        return userRepository.findByNickName(nickName);
    }

    @Override
    public void saveUser(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setEnabled(1);
        user.setSuperAdmin(0);
        userRepository.save(user);
    }


    @Override
    public void add(User user) {
       userRepository.save(user);

    }

    @Override
    public void delete(Long id) {
        userRepository.deleteById(id);

    }



}
