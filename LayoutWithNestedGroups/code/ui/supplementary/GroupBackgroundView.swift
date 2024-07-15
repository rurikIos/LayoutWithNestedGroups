//
//  GroupBackgroundView.swift
//  LayoutWithNestedGroups
//
//  Created by Чайков Ю.И. on 15.07.2024.
//

import UIKit

final class GroupBackgroundView: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = Colors.backgroundColor
        layer.cornerRadius = Dimens.borderRadius_xs
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension UICollectionReusableView {
    static var identifier: String {
        return String(describing: self)
    }
}
