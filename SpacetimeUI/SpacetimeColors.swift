//
//  SpacetimeColors.swift
//  SpacetimeUI
//
//  Created by MAC on 7/12/18.
//  Copyright © 2018 RayWenderlich.com. All rights reserved.
//

import UIKit

public enum SpacetimeColors {
    case
    navigationBarBackground,
    navigationBarContent,
    tabBarContent,
    success,
    failure,
    defaultText,
    buttonBackground,
    buttonText
    
    public var color: UIColor {
        switch self {
            case .navigationBarBackground,
                 .tabBarContent:
            return UIColor.spc_from(r: 9, g: 51, b: 119)
        default:
            return .orange
        }
    }
}


