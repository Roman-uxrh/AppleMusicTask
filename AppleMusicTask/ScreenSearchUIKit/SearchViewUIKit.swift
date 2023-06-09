//
//  SearchView.swift
//  AppleMusicTask
//
//  Created by admin on 04.06.2023.
//

import UIKit
import SnapKit

class SearchViewUIKit: UIViewController {
    
    private let model = SearchCategoryList()
    
    // MARK: - Outlets
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Поиск"
        label.font = .boldSystemFont(ofSize: 32)
        return label
    }()
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Ваша медиатека"
        textField.backgroundColor = .systemGray4
        textField.textAlignment = .left
        textField.layer.cornerRadius = 7
        textField.setLeftIcon(UIImage(systemName: "magnifyingglass") ?? UIImage())
        return textField
    }()
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.text = "Поиск по категориям"
        label.font = .boldSystemFont(ofSize: 25)
        return label
    }()
    
    private lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(CellView.self,
                                forCellWithReuseIdentifier: CellView.identifier)
        collectionView.dataSource = self
        collectionView.delegate = self
        return collectionView
    }()
    
    // MARK: - Lifeсycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHyerarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupHyerarchy() {
        view.addSubview(titleLabel)
        view.addSubview(textField)
        view.addSubview(textLabel)
        view.addSubview(collectionView)
    }
    
    private func setupLayout() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view).offset(60)
            make.left.equalTo(view).offset(20)
        }
        
        textField.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(20)
            make.left.equalTo(view).offset(20)
            make.right.equalTo(view).offset(-20)
            make.height.equalTo(40)
        }
        
        textLabel.snp.makeConstraints { make in
            make.top.equalTo(textField.snp.bottom).offset(30)
            make.left.equalTo(view).offset(20)
        }
        
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(textLabel.snp.bottom).offset(15)
            make.right.equalTo(view).offset(-20)
            make.left.equalTo(view).offset(20)
            make.bottom.equalTo(view)
        }
    }
}

// MARK: - Extension Collection

extension SearchViewUIKit: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        model.dataList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CellView.identifier, for: indexPath) as? CellView
        cell?.model = model.dataList[indexPath.item]
        return cell ?? CellView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: (view.frame.width / 2) - 25,
               height: (view.frame.width / 3))
    }
}


// MARK: - Extension TextField

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 10, y: 5, width: 20, height: 20))
        iconView.image = image
        iconView.tintColor = .systemGray2
        let iconContainerView: UIView = UIView(frame: CGRect(x: 20, y: 0, width: 40, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
}


