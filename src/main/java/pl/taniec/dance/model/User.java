package pl.taniec.dance.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Set;

@Data
@NoArgsConstructor
@Entity
@Table(name = "user")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nickName;
    private int enabled;
    private String email;
    private String password;
    private int superAdmin;

    @OneToMany
    private Set<AnnouncementsFindPartner> FindPartner;


}
