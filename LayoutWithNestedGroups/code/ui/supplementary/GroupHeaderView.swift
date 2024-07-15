//
//  GroupHeaderView.swift
//  LayoutWithNestedGroups
//
//  Created by Чайков Ю.И. on 15.07.2024.
//

import UIKit
import PinLayout

final class GroupHeaderView: UICollectionReusableView {
    
    private let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        titleLabel.text = "Заголовок"
        addSubview(titleLabel)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func sizeThatFits(_ size: CGSize) -> CGSize {
        CGSize(width: size.width, height: 50)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        titleLabel.pin
            .topLeft(Dimens.offset_m)
            .sizeToFit()
    }
}
