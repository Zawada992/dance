package pl.taniec.dance.service;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import pl.taniec.dance.model.Role;
import pl.taniec.dance.model.User;
import pl.taniec.dance.repository.RoleRepository;
import pl.taniec.dance.repository.UserRepository;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final BCryptPasswordEncoder passwordEncoder;

    public UserServiceImpl(UserRepository userRepository,
                           RoleRepository roleRepository, BCryptPasswordEncoder passwordEncoder) {
        this.roleRepository = roleRepository;

        this.passwordEncoder = passwordEncoder;
        this.userRepository = userRepository;
    }




    @Override
    public User findByNickName(String username) {
        return userRepository.findByUsername(username);
    }

    @Override
    public void saveUser(User user) {
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setEnabled(1);
        Role userRole = roleRepository.findByName("ROLE_USER");
        user.setRoles(new HashSet<Role>(Arrays.asList(userRole)));
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
    @Override
    public User get(Long id) {
        return userRepository.findById(id).orElseThrow(()->new IllegalArgumentException("User does not exists"));
    }

    @Override
    public List<User> getUsers() {
        return userRepository.findAll();
    }


}
