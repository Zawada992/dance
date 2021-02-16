package pl.taniec.dance.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@Entity
@Table(name = "height")
public class Height {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String height;
    //TODO: ZASTANAWIAM SIĘ CZY MA BYĆ W OSOBNA CZY W FIND_PARTNER

//    @OneToOne
//    private AnnouncementsFindPartner announcementsFindPartner;
}
