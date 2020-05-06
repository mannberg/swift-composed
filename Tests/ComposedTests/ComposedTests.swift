import XCTest
@testable import Composed

final class ComposedTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
    }

    static var allTests = [
        ("testExample", testExample),
    ]
    
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
    
    func test_can_encode_composed_object_to_json_string() {
        let monkey: MoneyMakingBoozeMonkey = .standard
        let data = try! JSONEncoder().encode(monkey)
        let string = String(data: data, encoding: .utf8)
        XCTAssertNotNil(string)
    }
    
    func test_can_encode_compose3_object_to_json_string() {
        let monkey = MoneyMakingBoozeMonkey(
            Monkey(name: "Chico", hasTail: true),
            MoneyMaker(salary: 100000),
            Boozehound(poisonOfChoice: "Bourbon")
        )
        
        let data = try! JSONEncoder().encode(monkey)
        let string = String(data: data, encoding: .utf8)
        XCTAssertNotNil(string)
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
    let name: String
    let hasTail: Bool
}

fileprivate struct MoneyMaker: Codable {
    let salary: Int
}

fileprivate struct Boozehound: Codable {
    let poisonOfChoice: String
}

fileprivate struct FilmBuff {
    let favoriteMovie: String
}
