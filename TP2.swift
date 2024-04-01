// Définition de la structure Personne
struct Personne {
    let nom: String
    let sexe: String
    let anneeNaissance: Int
}

// Création des instances de Personne
let personnes: [Personne] = [
    Personne(nom: "Pierre", sexe: "M", anneeNaissance: 2010),
    Personne(nom: "Michelle", sexe: "F", anneeNaissance: 2008),
    Personne(nom: "Estelle", sexe: "F", anneeNaissance: 2005),
    Personne(nom: "Quentin", sexe: "M", anneeNaissance: 2010),
    Personne(nom: "Francois", sexe: "M", anneeNaissance: 1980),
    Personne(nom: "Cristelle", sexe: "F", anneeNaissance: 1995)
]

// Affichage du nom de toutes les personnes concaténés avec leur date de naissance
print("Noms et dates de naissance :")
for personne in personnes {
    if personne.sexe == "M" {
        print("\(personne.nom) est né en \(personne.anneeNaissance)")
    } else {
        print("\(personne.nom) est née en \(personne.anneeNaissance)")
    }
}

// Fonction pour calculer l'âge à partir de l'année de naissance
func age(anneeNaissance: Int) -> Int {
    return 2024 - anneeNaissance
}

// Affichage des noms de toutes les personnes majeures
print("\nNoms des personnes majeures :")
for personne in personnes {
    if age(anneeNaissance: personne.anneeNaissance) >= 18 {
        print(personne.nom)
    }
}

// Affichage des filles puis des garçons
print("\nFilles :")
for personne in personnes {
    if personne.sexe == "F" {
        print(personne.nom)
    }
}

print("\nGarçons :")
for personne in personnes {
    if personne.sexe == "M" {
        print(personne.nom)
    }
}

// Ajout d'une nouvelle personne dans la liste
let nouvellePersonne = Personne(nom: "Marie", sexe: "F", anneeNaissance: 2000)
var personnesMisesAJour = personnes
personnesMisesAJour.append(nouvellePersonne)

// Affichage de la liste mise à jour
print("\nListe des personnes mise à jour :")
for personne in personnesMisesAJour {
    print("\(personne.nom), \(personne.sexe), \(personne.anneeNaissance)")
}
