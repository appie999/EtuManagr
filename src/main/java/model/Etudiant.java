package model;

public class Etudiant {

    private int id , date_de_naissance ;
    private String nom , prenom , email;

    public Etudiant(int id, int date_de_naissance, String nom, String prenom, String email) {
        this.id = id;
        this.date_de_naissance = date_de_naissance;
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDate_de_naissance() {
        return date_de_naissance;
    }

    public void setDate_de_naissance(int date_de_naissance) {
        this.date_de_naissance = date_de_naissance;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
