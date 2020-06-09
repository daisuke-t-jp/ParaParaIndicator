import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ParaParaIndicatorTests.allTests),
    ]
}
#endif
