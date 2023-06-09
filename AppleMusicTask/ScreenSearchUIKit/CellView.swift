//
//  CellView.swift
//  AppleMusicTask
//
//  Created by admin on 09.06.2023.
//

import UIKit
import SnapKit

class CellView: UICollectionViewCell {
    
    static let identifier = "ViewCell"
    
    var model: ModelCategoryList? {
        didSet {
            image.image = UIImage(named: model?.image ?? "")
            label.text = model?.title ?? ""
        }
    }
    
    // MARK: - Outlets
    
    lazy var image: UIImageView = {
        let image = UIImageView()
        image.layer.cornerRadius = 10
        image.clipsToBounds = true
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    lazy var label: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 15)
        label.textColor = .white
        return label
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupView() {
        backgroundColor = .white
    }
    
    private func setupHierarchy() {
        addSubview(image)
        addSubview(label)
    }
    
    private func setupLayout() {
        image.snp.makeConstraints { make in
            make.top.bottom.right.left.equalToSuperview()
        }
        
        label.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(10)
            make.bottom.equalToSuperview().offset(-20)
        }
    }
}

