import XCTest

extension AriaTests {
  static let __allTests = [
    ("testAriaAttributes", testAriaAttributes),
    ]
}

extension AttributesTests {
  static let __allTests = [
    ("testAttributes", testAttributes),
    ]
}

extension ElementsTests {
  static let __allTests = [
    ("testBase64Snapshot", testBase64Snapshot),
    ]
}

extension EventsTests {
  static let __allTests = [
    ("testEventsSnapshot", testEventsSnapshot),
    ]
}

extension HTML5BoilerPlateTests {
  static let __allTests = [
    ("testHTML5BoilerPlate", testHTML5BoilerPlate),
    ]
}

extension MediaTypeTests {
  static let __allTests = [
    ("testMediaType", testMediaType),
    ]
}

#if os(Linux)
public func __allTests() -> [XCTestCaseEntry] {
  return [
    testCase(AriaTests.__allTests),
    testCase(AttributesTests.__allTests),
    testCase(ElementsTests.__allTests),
    testCase(EventsTests.__allTests),
    testCase(HTML5BoilerPlateTests.__allTests),
    testCase(MediaTypeTests.__allTests),
  ]
}
#endif
