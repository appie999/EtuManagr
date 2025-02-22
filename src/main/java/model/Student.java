package model;

public class Student {
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String dateNaiss;

    public Student() {
    }

    public Student(String firstName, String lastName, String email, String dateNaiss) {

        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.dateNaiss = dateNaiss;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDateNaiss() {
        return dateNaiss;
    }

    public void setDateNaiss(String dateNaiss) {
        this.dateNaiss = dateNaiss;
    }
}
