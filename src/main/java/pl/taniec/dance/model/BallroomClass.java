package pl.taniec.dance.model;

import javax.persistence.*;

@Entity
@Table(name = "ballroom")
public class BallroomClass {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String BallroomClass;

//    @OneToOne
//    private AnnouncementsFindPartner announcementsFindPartner;
}
