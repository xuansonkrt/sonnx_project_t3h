package application.model.viewmodel;

public class LayoutHeaderAdminVM {

    private String userName;
    private String avatar;

    public LayoutHeaderAdminVM(String userName, String avatar) {
        this.userName = userName;
        this.avatar = avatar;
    }

    public LayoutHeaderAdminVM() {
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }
}
