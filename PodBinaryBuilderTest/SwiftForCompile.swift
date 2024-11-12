//
//  SwiftForCompile.swift
//  PodBinaryBuilderTest
//
//  Created by ChildhoodAndy on 2024/11/11.
//

import SwiftyJSON
import SwiftFramework2
import ZZKit_Swift
import AFNetworking

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
    
    @objc public func testZZKit() {
        let a: String = "Hello world"
        let b: NSString = a.oc_string
        print(b)
    }
    
    @objc public func callMainProj() {
//        let vc = ViewController()
//        print(vc)
    }
    
    @objc public func testAFNetworking() {
        let manager = AFHTTPSessionManager()
        manager.get("http://www.baidu.com", parameters: nil, headers: nil, progress: nil, success: { (task, responseObject) in
            print(responseObject ?? "")
        }) { (task, error) in
            print(error)
        }
    }
    
}


