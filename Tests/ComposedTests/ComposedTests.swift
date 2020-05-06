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
            Monkey(name: "Chico", hasTail: true),
            MoneyMaker(salary: 100000),
            Boozehound(poisonOfChoice: "Bourbon")
        )
        
        XCTAssertTrue(monkey.name == "Chico")
        XCTAssertTrue(monkey.hasTail)
        XCTAssertTrue(monkey.salary == 100000)
        XCTAssertTrue(monkey.poisonOfChoice == "Bourbon")
    }
    
    func test_can_compose_composed_object_and_access_all_properties() {
        typealias MoneyMakingBoozeMonkeyFilmBuff = Compose2<MoneyMakingBoozeMonkey, FilmBuff>
        
        let monkey = MoneyMakingBoozeMonkeyFilmBuff(
            MoneyMakingBoozeMonkey(
                Monkey(name: "Chico", hasTail: true),
                MoneyMaker(salary: 100000),
                Boozehound(poisonOfChoice: "Bourbon")
            ),
            FilmBuff(favoriteMovie: "Jaws")
        )
        
        XCTAssertTrue(monkey.name == "Chico")
        XCTAssertTrue(monkey.hasTail)
        XCTAssertTrue(monkey.salary == 100000)
        XCTAssertTrue(monkey.poisonOfChoice == "Bourbon")
        XCTAssertTrue(monkey.favoriteMovie == "Jaws")
    }
}

//MARK: Helpers

fileprivate typealias MoneyMakingMonkey = Compose2<Monkey, MoneyMaker>
fileprivate typealias MoneyMakingBoozeMonkey = Compose3<Monkey, MoneyMaker, Boozehound>

fileprivate struct Monkey {
    let name: String
    let hasTail: Bool
}

fileprivate struct MoneyMaker {
    let salary: Int
}

fileprivate struct Boozehound {
    let poisonOfChoice: String
}

fileprivate struct FilmBuff {
    let favoriteMovie: String
}
