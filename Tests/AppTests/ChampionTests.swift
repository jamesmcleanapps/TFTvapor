//
//  ChampionTests.swift
//  App
//
//  Created by James Mclean on 07/10/2019.
//

import Foundation
@testable import App
import XCTest

final class ChampionTests: XCTestCase {

    func testChampHasThreeBestItems() throws {
        Champions.shared.allChampions.forEach { (champion) in
            if champion.bestItems == nil {
                XCTAssert(false)
            } else {
                if champion.bestItems!.count != 3 {
                    XCTAssert(false)
                }
            }
        }
        XCTAssert(true)
    }

}
