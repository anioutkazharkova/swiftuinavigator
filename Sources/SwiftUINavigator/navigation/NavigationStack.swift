//
//  NavigationStack.swift
//  SwiftUINavigation
//
//  Created by Anna Zharkova on 06.09.2020.
//  Copyright © 2020 Anna Zharkova. All rights reserved.
//

import Foundation

public struct NavigationStack {
    
    private var screens = [Screen]()
    
  public  func top() -> Screen? {
        self.screens.last
    }
    
   public mutating func push(_ s: Screen) {
        self.screens.append(s)
    }
    
   public mutating func popToPrevious() {
        _ = self.screens.popLast()
    }
    
   public mutating func popToRoot() {
        self.screens.removeAll()
    }
}
