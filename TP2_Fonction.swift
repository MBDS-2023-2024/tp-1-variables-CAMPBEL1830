//1) Affichage des x premiers nombres pairs ou impairs 

func afficherNombresPairsOuImpairs(_ x: Int, _ pairs: Bool = true) {
    print("Les \(x) premiers nombres \(pairs ? "pairs" : "impairs") sont :")
    var nombre = 0
    var compteur = 0
    while compteur < x {
        if (nombre % 2 == 0 && pairs) || (nombre % 2 != 0 && !pairs) {
            print(nombre)
            compteur += 1
        }
        nombre += 1
    }
}

afficherNombresPairsOuImpairs(5) 
afficherNombresPairsOuImpairs(5, false)

//2)Affichage des x premiers nombres de la suite Fibonacci 

func afficherSuiteFibonacci(_ x: Int) {
    var a = 0, b = 1
    print("Les \(x) premiers nombres de la suite Fibonacci sont :")
    for _ in 0..<x {
        print(a)
        let temp = a + b
        a = b
        b = temp
    }
}

afficherSuiteFibonacci(5) 

//3) Calcul du factoriel d'un nombre x (10 par défaut)

func factoriel(_ x: Int = 10) -> Int {
    if x == 0 {
        return 1
    }
    return x * factoriel(x - 1)
}
let resultatFactoriel = factoriel(5) 
print("Le factoriel de 5 est \(resultatFactoriel)")

//4) Affichage des x premiers nombres premiers 

func estNombrePremier(_ n: Int) -> Bool {
    if n <= 1 {
        return false
    }
    for i in 2..<n {
        if n % i == 0 {
            return false
        }
    }
    return true
}

func afficherNombresPremiers(_ x: Int) {
    print("Les \(x) premiers nombres premiers sont :")
    var nombre = 2
    var compteur = 0
    while compteur < x {
        if estNombrePremier(nombre) {
            print(nombre)
            compteur += 1
        }
        nombre += 1
    }
}
afficherNombresPremiers(5)
