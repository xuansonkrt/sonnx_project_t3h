package application.model.viewmodel.Admin;

public class LayoutHeaderAdminVM {

    private String userName;
    private String avatar;

    public LayoutHeaderAdminVM(String userName, String avatar) {
        this.userName = userName;
        this.avatar = avatar;
    }

    public LayoutHeaderAdminVM() {
        this.userName = "anonymous";
        this.avatar = "/link/avatar.jpg";
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
