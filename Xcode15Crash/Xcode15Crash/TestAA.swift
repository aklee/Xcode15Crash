//
//  TestA.swift
//  GtSdkDemo-swift
//
//  Created by ak on 2023/8/3.
//  Copyright © 2023 Gexin Interactive (Beijing) Network Technology Co.,LTD. All rights reserved.
//

import Foundation
import Network

@available(iOS 14.0, *)
@objcMembers
public class TestAA: NSObject {
    var connection: NWConnection?
    let queueKey = DispatchSpecificKey<String>()
    let queue = DispatchQueue(label: "com.demo.www.channel", qos:.default)
    
    @objc public var remoteHost: String = ""
    @objc public var remotePort: UInt16 = 5224
    @objc public var timeout: TimeInterval = 15
    @objc public var error: NSError?
    
    var currentPath: AnyObject?
    
    
    lazy var parames: NWParameters = {
        let parames = NWParameters(tls: nil, tcp: self.tcpOptions)
        return parames
    }()
    
    lazy var tcpOptions: NWProtocolTCP.Options = {
        let options = NWProtocolTCP.Options()
//        options.enableFastOpen = true // Enable TCP Fast Open (TFO)
        options.connectionTimeout = Int(self.timeout) // connection timed out
        return options
    }()
    
    @objc override public init() {
        super.init()
    }
    
    public func test()  {
        print("test")
        //Crash in iOS 16.1 iPhone XR 
        let httpsHost1 = NWEndpoint.Host("www.baidu.com") //crash
        let httpsHost2 = NWEndpoint.hostPort(host: "www.baidu.com", port: NWEndpoint.Port(rawValue: 80)!) // crash too
        

        let conn = NWConnection(host: NWEndpoint.Host("www.baidu.com"), port: NWEndpoint.Port(rawValue: 5225)!, using: parames)
        print("test end")
        self.connection = conn
        
//        catch不到，app还是会crash
//        do {
//            let ep = try NWEndpoint.Host("cm-10-33.getui.com")
//            // 做一些其他操作
//        } catch let error {
//            print("发生错误：\(error.localizedDescription)")
//        }
    }
}

