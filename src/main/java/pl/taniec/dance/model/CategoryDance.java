package pl.taniec.dance.model;

import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Data
@NoArgsConstructor
@Entity
@Table(name = "categoryDance")
public class CategoryDance {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String CategoryDance;

//    @OneToOne
//    private AnnouncementsFindPartner announcementsFindPartner;
}
