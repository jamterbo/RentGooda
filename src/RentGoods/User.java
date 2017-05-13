package RentGoods;

/**
 * Created by Fantasia on 2017/4/26.
 */
public class User {
    private String userName;
    private String password;
    private String studentID;
    private String school;
    private String telephone;
    private String email;
    private String head;
    private int sex;
    private double credit;
    private String nickName;


    public User(){}

    public User(String userName,String password){
        this.userName = userName;
        this.password = password;
        studentID = null;
        school = null;
        telephone = null;
        email = null;
        head = null;
        sex = 0;
        credit = 0;
        nickName = userName;
    }

    public String getUserName(){
        return userName;
    }

    public String getPassword(){
        return password;
    }

    public void setPassword(String password){
        this.password = password;
    }

    public double getCredit() {
        return credit;
    }

    public void setCredit(double credit) {
        this.credit = credit;
    }

    public void addCredit(double value){
        this.credit += value;
    }

    public int getSex() {

        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getHead() {

        return head;
    }

    public void setHead(String head) {
        this.head = head;
    }

    public String getEmail() {

        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelephone() {

        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getSchool() {

        return school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getStudentID() {

        return studentID;
    }

    public void setStudentID(String studentID) {
        this.studentID = studentID;
    }

    public String getNickName() {
        return nickName;
    }

    public void setNickName(String nickName) {
        this.nickName = nickName;
    }
}
