package itis;

import java.lang.String;
import java.util.*;

public class UserBean{
    public UserBean(){
        User user=new User("Almaz","Iskhakov",19);
        userlist.add(user);
        user=new User("Ayrat","Iskhakov",21);
        userlist.add(user);
        user=new User("Danil","Yednakov",19);
        userlist.add(user);
        user=new User("Roland","Diskane",47);
        userlist.add(user);
        user=new User("Harry","Potter",19);
        userlist.add(user);
    }
    public static class User{
        public User(){

        }
        public User(String fn, String ln, int a) {
            firstname=fn;
            lastname=ln;
            age=a;
        }
        String firstname;
        String lastname;
        int age;

        public String getFirstname() {
            return firstname;
        }

        public void setFirstname(String firstname) {
            this.firstname = firstname;
        }

        public String getLastname() {
            return lastname;
        }

        public void setLastname(String lastname) {
            this.lastname = lastname;
        }

        public int getAge() {
            return age;
        }

        public void setAge(int age) {
            this.age = age;
        }
    }
    ArrayList<User> userlist= new ArrayList<User>();

    public void setUserlist(ArrayList<User> list) {
        userlist = list;
    }
    public ArrayList<User> getUserlist(){
        return userlist;
    }
}