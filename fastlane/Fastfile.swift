// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
	func buildLane() {
        desc("Build for testing")
		scan(
			xcodebuildFormatter: "xcpretty",
			derivedDataPath: "derivedData",
			buildForTesting: .userDefined(true)
		)
	}
	
	func unitTestLane() {
		desc("Run Unit-tests")
		scan(
			onlyTesting: "GithubActionsTests",
			xcodebuildFormatter: "xcpretty",
			derivedDataPath: "derivedData",
			testWithoutBuilding: .userDefined(true)
		)
	}
	
	func uiTestLane() {
		desc("Run UI-tests")
		scan(
			onlyTesting: "GithubActionsUITests",
			xcodebuildFormatter: "xcpretty",
			derivedDataPath: "derivedData",
			testWithoutBuilding: .userDefined(true)
		)
	}
}
