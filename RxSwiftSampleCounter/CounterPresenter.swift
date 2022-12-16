//
//  CounterPresenter.swift
//  RxSwiftSampleCounter
//
//  Created by 秋山悠 on 2022/12/16.
//

import UIKit

class CounterPresenter {
    
    private var count = 0 {
        didSet {
            delegate?.updateConut(count: count)
        }
    }
    
    private var delegate: CouterDelegate?
    
    func attachView(_ delegate: CouterDelegate) {
        self.delegate = delegate
    }
    
    func  detachView() {
        self.delegate = nil
    }
    
    func incrementCount() {
        count += 1
    }
    
    func decrementCount() {
        count -= 1
    }
    
    func resetCount() {
        count = 0
    }
}
