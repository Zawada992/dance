package pl.taniec.dance.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@Entity
@Table(name = "towns")
public class Town {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

//    @OneToOne
//    private AnnouncementsSellers announcementsSellers;
//
//    @OneToOne
//    private AnnouncementsFindPartner announcementsFindPartner;
}
