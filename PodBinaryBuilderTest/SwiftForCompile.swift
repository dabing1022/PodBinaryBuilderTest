//
//  SwiftForCompile.swift
//  PodBinaryBuilderTest
//
//  Created by ChildhoodAndy on 2024/11/11.
//

import SwiftyJSON
import SwiftFramework2
//import ZZKit_Swift

public class SwiftForCompile: NSObject {
    
    @objc public func sayHello() {
        print("hello world")
        
        let framework2 = SwiftFrameworkClass2()
        framework2.test()
    }
    
    @objc public func testSwiftyJson() {
        let jsonDic = ["key": "value"]
        let json = JSON(jsonDic)
        print(json)
    }
    
    @objc public func callMainProj() {
//        let vc = ViewController()
//        print(vc)
    }
    
}


