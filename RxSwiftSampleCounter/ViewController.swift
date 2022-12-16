//
//  ViewController.swift
//  RxSwiftSampleCounter
//
//  Created by 秋山悠 on 2022/12/16.
//

import UIKit

class ViewController: UIViewController {

//    private var viewModel: ViewModel!
    private let presenter = CounterPresenter()
    
//    private func updateCountLabel(_ count: Int) {
//        countLabel.text = String(count)
//    }
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBAction func countUpButton(_ sender: Any) {
//        viewModel.incrementCount(callback: { [weak self] count in
//            self?.updateCountLabel(count)
//        })
        presenter.incrementCount()
    }
    @IBAction func countDownButton(_ sender: Any) {
//        viewModel.decrementCount(callback: { [weak self] count in
//            self?.updateCountLabel(count)
//        })
        presenter.decrementCount()
    }
    @IBAction func resetButton(_ sender: Any) {
//        viewModel.resetCount(callback: { [weak self] count in
//            self?.updateCountLabel(count)
//        })
        presenter.resetCount()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        viewModel = ViewModel()
        presenter.attachView(self)
    }
}

extension ViewController: CouterDelegate {
    func updateConut(count: Int) {
        countLabel.text = String(count)
    }
}

