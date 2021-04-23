package pl.taniec.dance.service;

import lombok.AllArgsConstructor;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import pl.taniec.dance.model.Users;

@Component
@AllArgsConstructor
public class PasswordServiceImpl implements PasswordService{
    private final BCryptPasswordEncoder passwordEncoder;

    @Override
    public boolean checkOldPassword(Users user, String oldPassword) {
        return passwordEncoder.matches(oldPassword, user.getPassword());
    }

    @Override
    public boolean isPassword(String newPassword, String confirmPassword) {
        return newPassword.equals(confirmPassword);
    }
}
