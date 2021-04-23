package pl.taniec.dance.service;

import pl.taniec.dance.model.Users;

public interface PasswordService {
    boolean checkOldPassword(Users user, String oldPassword);
    boolean isPassword (String newPassword, String confirmPassword);
}
