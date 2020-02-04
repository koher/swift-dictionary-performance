import XCTest
import SwiftDictionaryPerformance

private let n = 100_000 + (0..<2).randomElement()!

final class SwiftDictionaryPerformanceTests: XCTestCase {
    func testDictionary_1() {
        let count = 1
        var dictionary: [Int: Set<Int>] = .init(uniqueKeysWithValues: (0..<100).map { ($0, Set(0..<count)) })
        XCTAssertEqual(dictionary.count, 100)
        XCTAssertEqual(dictionary[0]!.count, count)
        measure {
            for i in 0..<n {
                let key = i % 100
                dictionary[key]?.insert(i)
                XCTAssertTrue(dictionary[key]!.contains(i))
            }
        }
    }
    
    func testDictionary_10() {
        let count = 10
        var dictionary: [Int: Set<Int>] = .init(uniqueKeysWithValues: (0..<100).map { ($0, Set(0..<count)) })
        XCTAssertEqual(dictionary.count, 100)
        XCTAssertEqual(dictionary[0]!.count, count)
        measure {
            for i in 0..<n {
                let key = i % 100
                dictionary[key]?.insert(i)
                XCTAssertTrue(dictionary[key]!.contains(i))
            }
        }
    }
    
    func testDictionary_100() {
        let count = 100
        var dictionary: [Int: Set<Int>] = .init(uniqueKeysWithValues: (0..<100).map { ($0, Set(0..<count)) })
        XCTAssertEqual(dictionary.count, 100)
        XCTAssertEqual(dictionary[0]!.count, count)
        measure {
            for i in 0..<n {
                let key = i % 100
                dictionary[key]?.insert(i)
                XCTAssertTrue(dictionary[key]!.contains(i))
            }
        }
    }
    
    func testDictionary_1_000() {
        let count = 1_000
        var dictionary: [Int: Set<Int>] = .init(uniqueKeysWithValues: (0..<100).map { ($0, Set(0..<count)) })
        XCTAssertEqual(dictionary.count, 100)
        XCTAssertEqual(dictionary[0]!.count, count)
        measure {
            for i in 0..<n {
                let key = i % 100
                dictionary[key]?.insert(i)
                XCTAssertTrue(dictionary[key]!.contains(i))
            }
        }
    }
    
    func testDictionary_10_000() {
        let count = 10_000
        var dictionary: [Int: Set<Int>] = .init(uniqueKeysWithValues: (0..<100).map { ($0, Set(0..<count)) })
        XCTAssertEqual(dictionary.count, 100)
        XCTAssertEqual(dictionary[0]!.count, count)
        measure {
            for i in 0..<n {
                let key = i % 100
                dictionary[key]?.insert(i)
                XCTAssertTrue(dictionary[key]!.contains(i))
            }
        }
    }
    
    func testDictionary_100_000() {
        let count = 100_000
        var dictionary: [Int: Set<Int>] = .init(uniqueKeysWithValues: (0..<100).map { ($0, Set(0..<count)) })
        XCTAssertEqual(dictionary.count, 100)
        XCTAssertEqual(dictionary[0]!.count, count)
        measure {
            for i in 0..<n {
                let key = i % 100
                dictionary[key]?.insert(i)
                XCTAssertTrue(dictionary[key]!.contains(i))
            }
        }
    }

    func testDictionary_1_000_000() {
        let count = 1_000_000
        var dictionary: [Int: Set<Int>] = .init(uniqueKeysWithValues: (0..<100).map { ($0, Set(0..<count)) })
        XCTAssertEqual(dictionary.count, 100)
        XCTAssertEqual(dictionary[0]!.count, count)
        measure {
            for i in 0..<n {
                let key = i % 100
                dictionary[key]?.insert(i)
                XCTAssertTrue(dictionary[key]!.contains(i))
            }
        }
    }

    func testDictionary_10_000_000() {
        let count = 10_000_000
        var dictionary: [Int: Set<Int>] = .init(uniqueKeysWithValues: (0..<100).map { ($0, Set(0..<count)) })
        XCTAssertEqual(dictionary.count, 100)
        XCTAssertEqual(dictionary[0]!.count, count)
        measure {
            for i in 0..<n {
                let key = i % 100
                dictionary[key]?.insert(i)
                XCTAssertTrue(dictionary[key]!.contains(i))
            }
        }
    }
}
