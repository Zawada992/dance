package pl.taniec.dance.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@Entity
@Table(name = "advertisementsSales")
public class AdvertisementsSales {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String price;
    private String description;
    private String city;

    private String foto;

    private String email;
    private String phoneNumber;

    @ManyToOne
    private User user;

    @ManyToOne
    private Country country;

    @ManyToOne
    private ConditionNewUsed conditionNewUsed;

}
