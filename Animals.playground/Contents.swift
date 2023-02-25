import UIKit

class Animal {
    var name: String
    var health = 100
    init(name: String){
        self.name = name

    }
    func DisplayHealth(){
        print(health)
    }
}

class Cat: Animal {
    override init(name: String) {
        super.init(name: name)
        health = 150
    }

    func growl(){
        print("Rawr!")
    }
    
    func run(){
        print("Running")
        self.health -= 10
    }
}

class Cheetah: Cat{
    override func run() {

        if self.health == 0 {}
        else {
            print("Running Fast")
            self.health -= 50
        }
    }
    
    func sleep(){
        if self.health < 200 {
            self.health += 50
        }
    }
}

class Lion: Cat{
    override init(name: String) {
        super.init(name: name)
        health = 200
    }
    override func growl() {
        print("ROAR!!! i am the King of the Jungle")
    }
}

let cheta: Cheetah = Cheetah(name: "MyChetah")
for _ in 0...3 {
    cheta.run()
}

cheta.DisplayHealth()

let lion: Lion = Lion(name: "liion")
for _ in 0...2 {
    lion.run()
}
lion.growl()
