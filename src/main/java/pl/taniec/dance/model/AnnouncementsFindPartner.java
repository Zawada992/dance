package pl.taniec.dance.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@Entity
@Table(name = "announcementsFindPartner")
public class AnnouncementsFindPartner {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String description;
    private String age;
    private String height;
    private String city;

    private String foto;

    private String email;
    private String phoneNumber;



    @ManyToOne
    private Users user;

    @ManyToOne
    private Country country;

    @ManyToOne
    private Gender gender;

    @ManyToOne
    private CategoryDance categoryDance;

    @ManyToOne
    private BallroomClass ballroomClass;

    @ManyToOne
    private LatinClass latinClass;



}
