//
//  StockViewModel.swift
//  Apple Stock
//
//  Created by TheGIZzz on 28/5/2565 BE.
//

import Foundation

struct StockViewModel {
    
    let stock: Stock
    
    var symbol: String {
        return self.stock.symbol.uppercased()
    }
    
    var description: String {
        return self.stock.description
    }
    
    var price: String {
        return String(format: "%.2f", self.stock.price)
    }
    
    var change: String {
        return self.stock.change
    }
}
