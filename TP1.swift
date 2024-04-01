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
