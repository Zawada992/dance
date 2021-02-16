package pl.taniec.dance.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@Entity
@Table(name = "age")
public class Age {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private int age;
    //TODO: ZASTANAWIAM SIĘ CZY MA BYĆ W OSOBNA CZY W FIND_PARTNER
//    @OneToOne
//    private AnnouncementsFindPartner announcementsFindPartner;
}
