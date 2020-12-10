package Entity;

public class pointview {
    private Long id;
    private String name;
    private String profile;
    private String advise;
    private String guide;

    public String getIndexPicture() {
        return indexPicture;
    }

    public void setIndexPicture(String indexPicture) {
        this.indexPicture = indexPicture;
    }

    private String indexPicture;

    public pointview(Long id, String name, String profile, String advise, String guide, String indexPicture) {
        this.id = id;
        this.name = name;
        this.profile = profile;
        this.advise = advise;
        this.guide = guide;
        this.indexPicture = indexPicture;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getProfile() {
        return profile;
    }

    public void setProfile(String profile) {
        this.profile = profile;
    }

    public String getAdvise() {
        return advise;
    }

    public void setAdvise(String advise) {
        this.advise = advise;
    }

    public String getGuide() {
        return guide;
    }

    public void setGuide(String guide) {
        this.guide = guide;
    }
}
