# Composed

Composed let's you easily compose new types from other types and get typesafe access to the properties of the contained types directly on the composed type.

```
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

If the types you are wrapping conforms to the ```Decodable```protocol, so will your composed types.

```
typealias MoneyMakingMonkey = Compose2<Monkey, MoneyMaker>

let json = """
{
    "name": "Joe",
    "hasTail": true,
    "salary": 0
 }
 """.data(using: .utf8)

let decodedMonkey = try? JSONDecoder().decode(MoneyMakingMonkey.self, from: json!)
XCTAssertNotNil(decodedMonkey)
```

