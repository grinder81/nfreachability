//
//  NFReachability.swift
//  NFReachability
//
//  Created by MD AL MAMUN on 9/27/18.
//  Copyright © 2018 MD AL MAMUN. All rights reserved.
//

import Network

public enum NFStatus {
    case available(path: NWPath)
    case unavailable
    case waiting
}
/**
    Create an instance of it and use
     - observeReachability(_ observer: @escaping (NFStatus) -> (Void))
    to get network connectivity status
 */
public class NFReachability {
    private let queue           = DispatchQueue(label: "NFReachability")
    private let networkMonitor  = NWPathMonitor()
}

extension NFReachability {
    /**
        Provide a closure to get the status on main thread. You should call only once. If you need more
     then just create more instance. 
     - parameter observer: a closure to get network reachability
     */
    public func observeReachability(_ observer: @escaping (NFStatus) -> (Void)) {
        self.networkMonitor.pathUpdateHandler = { path in
            DispatchQueue.main.async {
                switch path.status {
                case .satisfied:
                    observer(.available(path: path))
                case .unsatisfied:
                    observer(.unavailable)
                case .requiresConnection:
                    observer(.waiting)
                }
            }
        }
        self.networkMonitor.start(queue: self.queue)
    }
}
