// TP2
// Création du tableau

var moyensDeTransport = ["bateau", "voiture", "vélo", "avion", "bus", "train", "moto"]

// Affichage des mots aux indices 2, 3 et 20
print("Mots aux indices 2, 3 et 20 :")
print(moyensDeTransport[safe: 2] ?? "Indice 2 hors de portée")
print(moyensDeTransport[safe: 3] ?? "Indice 3 hors de portée")
print(moyensDeTransport[safe: 20] ?? "Indice 20 hors de portée")

// Affichage de tous les mots sous forme de phrases
print("\nAffichage des moyens de transport :")
for (index, moyen) in moyensDeTransport.enumerated() {
    print("Moyen de transport numéro \(index) est \(moyen)")
}

// Affichage des mots aux indices impairs puis pairs
print("\nMots aux indices impairs :")
for (index, moyen) in moyensDeTransport.enumerated() where index % 2 != 0 {
    print(moyen)
}

print("\nMots aux indices pairs :")
for (index, moyen) in moyensDeTransport.enumerated() where index % 2 == 0 {
    print(moyen)
}

// Inversion de l'ordre du tableau
let reversedMoyensDeTransport = moyensDeTransport.reversed()
print("\nTableau inversé : \(Array(reversedMoyensDeTransport))")

// Insertion des mots 'camion' et 'taxi'
moyensDeTransport.insert("camion", at: 0) // En tête de liste
moyensDeTransport.append("taxi") // En fin de liste
moyensDeTransport.insert(contentsOf: ["camion", "taxi"], at: 2) // À partir de l'indice 2

// Affichage du tableau mis à jour
print("\nTableau mis à jour : \(moyensDeTransport)")

// Extension pour éviter les dépassements d'indices
extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}






//T











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



