//
//  BaseView.swift
//  RickMorty
//
//  Created by Майя Калицева on 10.06.2022.
//

import UIKit
import SnapKit

final class BaseView: UIView {
    
    // MARK: Private Properies
    
    private let backgroundImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "rick-and-morty-wallpaper")
        return img
    }()
    
    private let charactersButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Characters", for: .normal)
        btn.layer.cornerRadius = 15
        btn.clipsToBounds = true
        btn.backgroundColor = UIColor.systemYellow.withAlphaComponent(0.5)
        return btn
    }()
    
    private let episodesButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Episodes", for: .normal)
        btn.layer.cornerRadius = 15
        btn.clipsToBounds = true
        btn.backgroundColor = UIColor.systemPink.withAlphaComponent(0.5)
        return btn
    }()
    
    private let locationsButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("Locations", for: .normal)
        btn.layer.cornerRadius = 15
        btn.clipsToBounds = true
        btn.backgroundColor = UIColor.systemBlue.withAlphaComponent(0.5)
        return btn
    }()
    
    // MARK: Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
       // setupLayout()
        backgroundColor = UIColor.red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Private Methods
    
    private func setupLayout() {
        addSubview(backgroundImage)
        backgroundImage.addSubview(charactersButton)
        backgroundImage.addSubview(episodesButton)
        backgroundImage.addSubview(locationsButton)
        
        backgroundImage.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.trailing.equalToSuperview()
        }

        charactersButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(40)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(episodesButton.snp.top).inset(-15)
        }
        
        episodesButton.snp.makeConstraints { make in
            make.top.equalTo(charactersButton.snp.bottom).inset(15)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalTo(locationsButton.snp.top).inset(-15)
        }
        
        locationsButton.snp.makeConstraints { make in
            make.top.equalTo(episodesButton.snp.bottom).inset(15)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }
    
}
