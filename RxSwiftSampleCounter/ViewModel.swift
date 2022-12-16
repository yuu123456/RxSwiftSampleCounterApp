//
//  ViewModel.swift
//  RxSwiftSampleCounter
//
//  Created by 秋山悠 on 2022/12/16.
//

import UIKit

class ViewModel {
    private(set) var count = 0
    
    func incrementCount(callback: (Int) -> ()) {
        count += 1
        callback(count)
    }
    
    func decrementCount(callback: (Int) -> ()) {
        count -= 1
        callback(count)
    }
    
    func resetCount(callback: (Int) -> ()) {
        count = 0
        callback(count)
    }
}
