



@propertyWrapper
struct Validate {
    
    var wrappedValue: String {
        didSet {
            wrappedValue = wrappedValue.isEmpty ? arg + " 1" : wrappedValue
        }
    }
    
    private(set) var arg: String
    
    
    //        init(wrappedValue: String, arg: String) {
    //               self.wrappedValue = wrappedValue.isEmpty ? arg + " 2" : wrappedValue
    //               self.arg = arg
    //           }
    
}




struct Dog {
    @Validate(arg: "aaaaaa") var name: String = ""
}




var dog = Dog()
//dog.name = ""

print(dog.name)


