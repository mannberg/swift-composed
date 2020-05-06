# Composed

Composed let's you easily compose new types from other types and get typesafe access to the properties of the contained types directly on the composed type.

```
struct Monkey {
    let name: String
    let hasTail: Bool
}

struct MoneyMaker {
    let salary: Int
}

struct Boozehound {
    let poisonOfChoice: String
}

typealias MoneyMakingBoozeMonkey = Compose3<Monkey, MoneyMaker, Boozehound>

let monkey = MoneyMakingBoozeMonkey(
    Monkey(name: "Rutger", hasTail: true),
    MoneyMaker(salary: 100000),
    Boozehound(poisonOfChoice: "Anything")
)
        
XCTAssertTrue(monkey.name == "Rutger")
XCTAssertTrue(monkey.hasTail)
XCTAssertTrue(monkey.salary == 100000)
XCTAssertTrue(monkey.poisonOfChoice == "Anything")        
```

