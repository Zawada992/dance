package pl.taniec.dance.model;

import javax.persistence.*;


@Entity
@Table(name = "announcementsFindPartner")
public class AnnouncementsFindPartner {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String title;
    private String description;
    private String foto;

    private String email;
    private String phoneNumber;



    @ManyToOne
    private User user;

    @OneToOne
    private Country country;

    @OneToOne
    private Town town;

    @OneToOne
    private Age age;

    @OneToOne
    private Height height;

    @OneToOne
    private Gender gender;

    @OneToOne
    private CategoryDance categoryDance;

    @OneToOne
    private BallroomClass ballroomClass;

    @OneToOne
    private LatinClass latinClass;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Country getCountry() {
        return country;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public Town getTown() {
        return town;
    }

    public void setTown(Town town) {
        this.town = town;
    }

    public Age getAge() {
        return age;
    }

    public void setAge(Age age) {
        this.age = age;
    }

    public Height getHeight() {
        return height;
    }

    public void setHeight(Height height) {
        this.height = height;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public CategoryDance getCategoryDance() {
        return categoryDance;
    }

    public void setCategoryDance(CategoryDance categoryDance) {
        this.categoryDance = categoryDance;
    }

    public BallroomClass getBallroomClass() {
        return ballroomClass;
    }

    public void setBallroomClass(BallroomClass ballroomClass) {
        this.ballroomClass = ballroomClass;
    }

    public LatinClass getLatinClass() {
        return latinClass;
    }

    public void setLatinClass(LatinClass latinClass) {
        this.latinClass = latinClass;
    }
    //    private String gender;2
//    private String country;2
//    private String town;2
//    private String categoryDance;2
//    private int age;2
//    private int height;2
//    private String classLatin;
//    private String classBallroom;


}
