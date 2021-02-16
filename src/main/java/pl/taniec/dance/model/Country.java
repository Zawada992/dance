package pl.taniec.dance.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@Entity
@Table(name = "countries")
public class Country {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;

//    @OneToOne
//    private AnnouncementsFindPartner announcementsFindPartners;
//
//    @OneToOne
//    private AnnouncementsSellers announcementsSellers;
}