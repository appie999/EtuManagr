package model;

public class Cours {

    private String Nom , Description ;

    public Cours(String nom, String description) {
        Nom = nom;
        Description = description;
    }

    public String getNom() {
        return Nom;
    }

    public void setNom(String nom) {
        Nom = nom;
    }

    public String getDescription() {
        return Description;
    }

    public void setDescription(String description) {
        Description = description;
    }
}
