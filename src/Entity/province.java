package Entity;

public class province {
    private  Long id;
    private String name;
    private String profile;
    private  String indexPicture;

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

    public String getIndexPicture() {
        return indexPicture;
    }

    public void setIndexPicture(String indexPicture) {
        this.indexPicture = indexPicture;
    }
}
