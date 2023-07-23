import Cocoa

class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("bark, bark")
    }
}

class Poodle: Dog {
    override func speak() {
        print("wuff, wuff")
    }
}

class Corgi: Dog {
    override func speak() {
        print("woo, woo")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    func speak () {
        print("meow, meow")
    }
    
    init(isTame: Bool, legs: Int) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Persian: Cat {
    override func speak() {
        print("growl, growl")
    }
}

class Lion: Cat {
    override func speak() {
        print("roar, roar")
    }
}


let dog = Dog(legs: 4)
let poodle = Poodle(legs: 4)
let corgi = Corgi(legs: 4)
let persian = Persian(isTame: true, legs: 4)
let lion = Lion(isTame: false, legs: 4)
dog.speak()
poodle.speak()
corgi.speak()
persian.speak()
lion.speak()
