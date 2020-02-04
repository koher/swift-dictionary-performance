import XCTest
import SwiftDictionaryPerformance

private let n = 100_000 + (0..<2).randomElement()!

final class SwiftDictionaryPerformanceTests: XCTestCase {
    func testDictionary_1() {
        var dictionary: [Int: Int] = .init(uniqueKeysWithValues: (0..<1).map { ($0, $0 + 1) })
        XCTAssertEqual(dictionary.count, 1)
        let count = dictionary.count
        measure {
            for i in 0..<n {
                let key = i % count
                dictionary[key] = i + 2
                XCTAssertEqual(dictionary[key], i + 2)
            }
        }
    }
    
    func testDictionary_10() {
        var dictionary: [Int: Int] = .init(uniqueKeysWithValues: (0..<10).map { ($0, $0 + 1) })
        XCTAssertEqual(dictionary.count, 10)
        let count = dictionary.count
        measure {
            for i in 0..<n {
                let key = i % count
                dictionary[key] = i + 2
                XCTAssertEqual(dictionary[key], i + 2)
            }
        }
    }
    
    func testDictionary_100() {
        var dictionary: [Int: Int] = .init(uniqueKeysWithValues: (0..<100).map { ($0, $0 + 1) })
        XCTAssertEqual(dictionary.count, 100)
        let count = dictionary.count
        measure {
            for i in 0..<n {
                let key = i % count
                dictionary[key] = i + 2
                XCTAssertEqual(dictionary[key], i + 2)
            }
        }
    }
    
    func testDictionary_1_000() {
        var dictionary: [Int: Int] = .init(uniqueKeysWithValues: (0..<1_000).map { ($0, $0 + 1) })
        XCTAssertEqual(dictionary.count, 1_000)
        let count = dictionary.count
        measure {
            for i in 0..<n {
                let key = i % count
                dictionary[key] = i + 2
                XCTAssertEqual(dictionary[key], i + 2)
            }
        }
    }
    
    func testDictionary_10_000() {
        var dictionary: [Int: Int] = .init(uniqueKeysWithValues: (0..<10_000).map { ($0, $0 + 1) })
        XCTAssertEqual(dictionary.count, 10_000)
        let count = dictionary.count
        measure {
            for i in 0..<n {
                let key = i % count
                dictionary[key] = i + 2
                XCTAssertEqual(dictionary[key], i + 2)
            }
        }
    }
    
    func testDictionary_100_000() {
        var dictionary: [Int: Int] = .init(uniqueKeysWithValues: (0..<100_000).map { ($0, $0 + 1) })
        XCTAssertEqual(dictionary.count, 100_000)
        let count = dictionary.count
        measure {
            for i in 0..<n {
                let key = i % count
                dictionary[key] = i + 2
                XCTAssertEqual(dictionary[key], i + 2)
            }
        }
    }
    
    func testDictionary_1_000_000() {
        var dictionary: [Int: Int] = .init(uniqueKeysWithValues: (0..<1_000_000).map { ($0, $0 + 1) })
        XCTAssertEqual(dictionary.count, 1_000_000)
        let count = dictionary.count
        measure {
            for i in 0..<n {
                let key = i % count
                dictionary[key] = i + 2
                XCTAssertEqual(dictionary[key], i + 2)
            }
        }
    }
    
    func testDictionary_10_000_000() {
        var dictionary: [Int: Int] = .init(uniqueKeysWithValues: (0..<10_000_000).map { ($0, $0 + 1) })
        XCTAssertEqual(dictionary.count, 10_000_000)
        let count = dictionary.count
        measure {
            for i in 0..<n {
                let key = i % count
                dictionary[key] = i + 2
                XCTAssertEqual(dictionary[key], i + 2)
            }
        }
    }
}
