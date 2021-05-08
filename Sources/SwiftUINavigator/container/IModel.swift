//
//  IModel.swift
//  SwiftUINavigation
//
//  Created by Anna Zharkova on 06.09.2020.
//  Copyright © 2020 Anna Zharkova. All rights reserved.
//

import Foundation
import Foundation
public protocol  IModel:class {
    func update(data: Any?)
    var listener:IContainer? {get set}
    
}

public protocol  IContainer {
    func showError(error: String)
    
    func showLoading()
    
    func hideLoading()
}
