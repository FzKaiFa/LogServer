package Bean;

public class BackData {
    public String product_name;
    public String product;
    public String ena13;
    public String remark;
    public String created_at;
    public String updated_at;
    public InnerID id;
    public String FString;


    //http://oa.o-in.me:9001/repairs/history.json?code=
    /*
    [
    {
        "customer": "隋敏",
        "tel": "17809919911",
        "description": "耗电快",
        "treatment_program": "",
        "responsibility": "客责",
        "repair_code": 7740,
        "tabulation": "",
        "storage_time": "12/12/2018"
    }
    ]

    */
    public String customer;//客户名
    public String tel;//客户电话
    public String description;//异常描述
    public String treatment_program;//处理方案
    public String responsibility;//责任归属
    public String repair_code;//维修编号
    public String tabulation;//维修人员
    public String storage;//入库时间



    public BackData(String FString) {
        this.FString = FString;
    }

    public String getFString() {
        return FString;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public String getEna13() {
        return ena13;
    }

    public void setEna13(String ena13) {
        this.ena13 = ena13;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
    }

    public InnerID getId() {
        return id;
    }

    public void setId(InnerID id) {
        this.id = id;
    }

    public void setFString(String FString) {
        this.FString = FString;
    }


    public class InnerID{
        public String $oid;

        public String get$oid() {
            return $oid;
        }

        public void set$oid(String $oid) {
            this.$oid = $oid;
        }
    }


}
