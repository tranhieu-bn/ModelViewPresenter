//
//  ProductListPresenter.swift
//  ModelViewPresenter
//
//  Created by MacOne on 9/29/20.
//

import UIKit
class ProductListPresenter:ProductListView{
    unowned let view : ProductListView
    let product:[Product]
    required init(view:ProductListView, product:[Product])
}
