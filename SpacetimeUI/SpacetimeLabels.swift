//
//  SpacetimeLabels.swift
//  SpacetimeUI
//
//  Created by MAC on 7/16/18.
//  Copyright © 2018 RayWenderlich.com. All rights reserved.
//

import UIKit

public enum SpacetimeLabelStyle {
    
    case cellTitle
    
    // color
    var textColor: SpacetimeColors {
        return .defaultText
    }
    
    // font
    private var fontType: SpacetimeFont {
        return .bold
    }
    
    private var fontSize: SpacetimeFontSize {
        return .normal
    }
    
    var font: UIFont {
        return self.fontType.of(size: self.fontSize)
    }
}

public class SpacetimeBaseLabel: UILabel {
    
    var labelStyle: SpacetimeLabelStyle! {
        didSet {
            self.font = labelStyle.font
            self.textColor = labelStyle.textColor.color
        }
    }
}

public class CellTitleLabel: SpacetimeBaseLabel {
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.labelStyle = .cellTitle
    }
}
