import XCTest
import Composed

final class ComposedTests: XCTestCase {
    
    func test_can_create_a_composed_object_from_two_structs() {
        _ = MoneyMakingMonkey(
            Monkey(name: "Chico", hasTail: true),
            MoneyMaker(salary: 100000)
        )
    }
    
    func test_can_create_a_composed_object_from_three_structs() {
        _ = MoneyMakingBoozeMonkey(
            Monkey(name: "Chico", hasTail: true),
            MoneyMaker(salary: 100000),
            Boozehound(poisonOfChoice: "Bourbon")
        )
    }
    
    func test_can_access_properties_from_composed_object() {
        let monkey = MoneyMakingBoozeMonkey(
            Monkey(name: "Rutger", hasTail: true),
            MoneyMaker(salary: 10),
            Boozehound(poisonOfChoice: "Anything")
        )
        
        XCTAssertTrue(monkey.name == "Rutger")
        XCTAssertTrue(monkey.hasTail)
        XCTAssertTrue(monkey.salary == 10)
        XCTAssertTrue(monkey.poisonOfChoice == "Anything")
    }
    
    func test_can_compose_composed_object_and_access_all_properties() {
        typealias MoneyMakingBoozeMonkeyFilmBuff = Compose2<MoneyMakingBoozeMonkey, FilmBuff>
        
        let monkey = MoneyMakingBoozeMonkeyFilmBuff(
            MoneyMakingBoozeMonkey.standard,
            FilmBuff(favoriteMovie: "Jaws")
        )
        
        XCTAssertTrue(monkey.name == "Ralph")
        XCTAssertFalse(monkey.hasTail)
        XCTAssertTrue(monkey.salary == 0)
        XCTAssertTrue(monkey.poisonOfChoice == "Brandy")
        XCTAssertTrue(monkey.favoriteMovie == "Jaws")
    }
    
    func test_can_decode_composed_object_from_json_string() {
        typealias MoneyMakingMonkey = Compose2<Monkey, MoneyMaker>
        
        let json = """
        {
            "name": "Joe",
            "hasTail": true,
            "salary": 0
        }
        """.data(using: .utf8)

        let monkey = try? JSONDecoder().decode(MoneyMakingMonkey.self, from: json!)
        XCTAssertNotNil(monkey)
    }
    
    func test_can_compose_from_2_up_to_8_objects() {
        typealias Two = Compose2<Monkey, MoneyMaker>
        typealias Three = Compose3<Monkey, MoneyMaker, Boozehound>
        typealias Four = Compose4<Monkey, MoneyMaker, Boozehound, String>
        typealias Five = Compose5<Monkey, MoneyMaker, Boozehound, String, Bool>
        typealias Six = Compose6<Monkey, MoneyMaker, Boozehound, String, Bool, Int>
        typealias Seven = Compose7<Monkey, MoneyMaker, Boozehound, String, Bool, Int, Double>
        typealias Eight = Compose8<Monkey, MoneyMaker, Boozehound, String, Bool, Int, Double, Int16>
    }
    
    func test_can_update_property_on_composed_object() {
        var monkey = MoneyMakingBoozeMonkey.standard
        let name = "Pepe"
        XCTAssertFalse(monkey.name == name)
        monkey.name = name
        XCTAssertTrue(monkey.name == name)
    }
    
    func test_can_access_immutable_values_on_wrapped_types() {
        let c = Compose2<String, Int>("Hey", 1)
        XCTAssertFalse(c.isEmpty)
    }
}

//MARK: Helpers

fileprivate typealias MoneyMakingMonkey = Compose2<Monkey, MoneyMaker>
fileprivate typealias MoneyMakingBoozeMonkey = Compose3<Monkey, MoneyMaker, Boozehound>

fileprivate extension MoneyMakingBoozeMonkey {
    static let standard: MoneyMakingBoozeMonkey = MoneyMakingBoozeMonkey(
        Monkey(name: "Ralph", hasTail: false),
        MoneyMaker(salary: 0),
        Boozehound(poisonOfChoice: "Brandy")
    )
}

fileprivate struct Monkey: Codable {
    var name: String
    var hasTail: Bool
}

fileprivate struct MoneyMaker: Codable {
    var salary: Int
}

fileprivate struct Boozehound: Codable {
    var poisonOfChoice: String
}

fileprivate struct FilmBuff {
    var favoriteMovie: String
}
