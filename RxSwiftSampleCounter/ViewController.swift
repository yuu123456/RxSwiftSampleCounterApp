//
//  ViewController.swift
//  RxSwiftSampleCounter
//
//  Created by 秋山悠 on 2022/12/16.
//

import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countUpButton: UIButton!
    @IBOutlet weak var countDownButton: UIButton!
    @IBOutlet weak var countResetButton: UIButton!
    
    private let disposeBag = DisposeBag()
    
    private var viewModel: CounterRxViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
    }
    
    private func setupViewModel() {
        viewModel = CounterRxViewModel()
        let input = CounterViewModelInput(
            counterUpButton: countUpButton.rx.tap.asObservable(),
            counterDownButton: countDownButton.rx.tap.asObservable(),
            couterResetButton: countResetButton.rx.tap.asObservable()
        )
        viewModel.setup(input: input)
        
        viewModel.outputs?.counterText
            .drive(countLabel.rx.text)
            .disposed(by: disposeBag)
    }
    
}

