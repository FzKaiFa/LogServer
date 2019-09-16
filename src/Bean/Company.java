package Bean;

public class Company {
    public int id;//公司名称
    public String CompanyName;//公司名称
    public String AppVersion;//金蝶版本
    public String KingdeeVersion;//金蝶版本
    public String AppID;//程序id
    public String Img_Logo;//备注
    public String Phone;//备注
    public String Address;//备注
    public String Remark;//备注
    public String EndTime;//终止日期格式： 20120101
    public String CanUse;//0；允许使用，1停止使用
    public String create_time;//创建日期
//    public String CreateTime;//创建日期

    public Company(String companyName, String appVersion, String kingdeeVersion, String appID, String img_Logo, String phone, String address, String remark, String endTime, String canUse, String createTime) {
        CompanyName = companyName;
        AppVersion = appVersion;
        KingdeeVersion = kingdeeVersion;
        AppID = appID;
        Img_Logo = img_Logo;
        Phone = phone;
        Address = address;
        Remark = remark;
        EndTime = endTime;
        CanUse = canUse;
        create_time = createTime;
    }
    public Company() {
    }
    public String getCreateTime() {
        return create_time;
    }

    public void setCreateTime(String createTime) {
        create_time = createTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCompanyName() {
        return CompanyName;
    }

    public void setCompanyName(String companyName) {
        CompanyName = companyName;
    }

    public String getAppVersion() {
        return AppVersion;
    }

    public void setAppVersion(String appVersion) {
        AppVersion = appVersion;
    }

    public String getKingdeeVersion() {
        return KingdeeVersion;
    }

    public void setKingdeeVersion(String kingdeeVersion) {
        KingdeeVersion = kingdeeVersion;
    }

    public String getAppID() {
        return AppID;
    }

    public void setAppID(String appID) {
        AppID = appID;
    }

    public String getImg_Logo() {
        return Img_Logo;
    }

    public void setImg_Logo(String img_Logo) {
        Img_Logo = img_Logo;
    }

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) {
        Phone = phone;
    }

    public String getAddress() {
        return Address;
    }

    public void setAddress(String address) {
        Address = address;
    }

    public String getRemark() {
        return Remark;
    }

    public void setRemark(String remark) {
        Remark = remark;
    }

    public String getEndTime() {
        return EndTime;
    }

    public void setEndTime(String endTime) {
        EndTime = endTime;
    }

    public String getCanUse() {
        return CanUse;
    }

    public void setCanUse(String canUse) {
        CanUse = canUse;
    }
}
