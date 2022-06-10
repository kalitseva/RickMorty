//
//  BaseViewController.swift
//  RickMorty
//
//  Created by Майя Калицева on 09.06.2022.
//

import UIKit


class BaseViewController: UIViewController {
    
    // MARK: Private Properies
    
    private let baseView = BaseView()
    
    // MARK: Life-Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
      //  setupLayout()
    }
    
    private func setupLayout() {
        view.addSubview(baseView)
        
        baseView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
}

