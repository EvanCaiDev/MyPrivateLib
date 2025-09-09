// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import Alamofire

public struct MyPrivateLib {
    public static func request(_ url: String) {
        AF.request(url).response { response in
            debugPrint(response)
        }
    }
}
