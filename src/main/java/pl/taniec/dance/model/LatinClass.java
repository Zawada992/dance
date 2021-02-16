package pl.taniec.dance.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@Entity
@Table(name = "latin")
public class LatinClass {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String LatinClass;

//    @OneToOne
//    private AnnouncementsFindPartner announcementsFindPartner;
}
