import Foundation
@testable import swift_snapshot_line_endings
import SnapshotTesting
import XCTest

#if canImport(FoundationNetworking)
import FoundationNetworking
#endif

final class swift_snapshot_line_endingsTests: XCTestCase {
    func testBasicNetworkRequestSnapshot() {
        var request = URLRequest(url: URL(string: "https://foureyes.me")!)
        request.addValue("ball lightning", forHTTPHeaderField: "X-Cool")

        assertSnapshot(of: request, as: .curl)
    }
}
