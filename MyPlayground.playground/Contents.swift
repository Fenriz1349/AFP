import UIKit

struct Cat{
    let name : String
    let race : String
    var age : Int
}

var cat1 = Cat(name: "Batman", race: "Maine Coone", age: 4)
//print(cat1.age)
let cat2 = Cat(name: "Felicette", race: "Europeen", age: 1)
let cats : [Cat] = [cat1,cat2]
for cat in cats{
//    print(cat.name)
}

struct Voiture {
    let marque : CarBrand
    let modele : String
    let kilometrage : Int
    let anneeImmatriculation : Int
    let color : CarColor
    
    func drive () {
        print("\(marque) \(modele) demarre VROOM VROOM !")
    }
    func moveForward(){
        print("\(marque) \(modele) avance Gotta Go Fast !")
    }
    func stop(){
        print("\(marque) \(modele) s'arrete, Stop Hammertime !")
    }
}
enum CarColor : String{
    case red = "rouge"
    case black = "noire"
    case yellow = "jaune"
    case white = "blanc"
}
enum CarBrand :String {
    case opel = "Opel"
    case ferrari = "Ferrari"
    case mercedes = "Mercedes"
    case bmw = "BMW"
    case buggatti = "Buggati"
}
let voiture1 = Voiture(marque: .opel, modele: "Corsa", kilometrage: 100000, anneeImmatriculation: 2004, color: .red)
let voiture2 = Voiture(marque: .ferrari, modele: "Mondiale", kilometrage: 10045, anneeImmatriculation: 2020, color: .red)
let voiture3 = Voiture(marque: .mercedes, modele: "Class A", kilometrage: 666666, anneeImmatriculation: 2005, color: .white)
let voiture4 = Voiture(marque: .opel, modele: "Zezette", kilometrage: 1000, anneeImmatriculation: 2023, color: .white)
let voiture5 = Voiture(marque: .opel, modele: "Astra", kilometrage: 1000456, anneeImmatriculation: 2006, color: .yellow)
let voiture6 = Voiture(marque: .buggatti, modele: "Veyron", kilometrage: 6754, anneeImmatriculation: 2012, color: .black)
let voitures : [Voiture] = [voiture1,voiture2,voiture3,voiture4,voiture5,voiture6]

for voiture in voitures {
    if voiture.color == .red && voiture.marque == .opel{
        print("La voiture \(voiture.modele) \(voiture.color.rawValue) de marque \(voiture.marque.rawValue) immatriculée en \(voiture.anneeImmatriculation) à roulé \(voiture.kilometrage)")
        voiture.drive()
        voiture.moveForward()
        voiture.stop()
    }
}


