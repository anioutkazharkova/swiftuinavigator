//
//  Screen.swift
//  SwiftUINavigation
//
//  Created by Anna Zharkova on 06.09.2020.
//  Copyright © 2020 Anna Zharkova. All rights reserved.
//

import Foundation
import SwiftUI

public struct Screen: Identifiable, Equatable {
    
   public let id: String = UUID.init().uuidString
   public let screenView: AnyView
    
   public static func == (lhs: Screen, rhs: Screen) -> Bool {
        lhs.id == rhs.id
    }
    
}
