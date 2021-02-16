package pl.taniec.dance.model;

import javax.persistence.*;

@Entity
@Table(name = "advertisementsSales")
public class AdvertisementsSales {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
//    private String condition;
    private String price;
    private String description;
//    private String foto;
//
//    private String email;
//    private String phoneNumber;

    @ManyToOne
    private User user;

    @OneToOne
    private Town town;

    @OneToOne
    private Country country;


//    private String country;
//    private String town;
}
