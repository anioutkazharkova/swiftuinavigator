//
//  IModelView.swift
//  SwiftUINavigation
//
//  Created by Anna Zharkova on 06.09.2020.
//  Copyright © 2020 Anna Zharkova. All rights reserved.
//

import Foundation
import Foundation

public protocol IModelView {
    var viewModel: IModel? {get}
    
    func showError(error: String)
    
    func showLoading()
    
    func hideLoading()
}


extension IModelView {
   public func showError(error: String) {
        self.viewModel?.listener?.showError(error: error)
    }
       
   public func showLoading() {
        self.viewModel?.listener?.showLoading()
    }
       
   public func hideLoading() {
        self.viewModel?.listener?.hideLoading()
    }
}
