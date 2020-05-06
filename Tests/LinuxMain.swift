import XCTest

import ComposedTests

var tests = [XCTestCaseEntry]()
tests += ComposedTests.allTests()
XCTMain(tests)
