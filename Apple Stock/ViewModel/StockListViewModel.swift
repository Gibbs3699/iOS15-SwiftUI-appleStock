//
//  StockListViewModel.swift
//  Apple Stock
//
//  Created by TheGIZzz on 28/5/2565 BE.
//

import Foundation

class StockListViewModel: ObservableObject {
    
    var searchTerm: String = ""
    @Published var stocks: [StockViewModel] = [StockViewModel]()
    
    func load() {
        fetchStock()
    }
    
    private func fetchStock() {
        
        Webservice().getStock { (stocks) in
            if let stocks = stocks {
                DispatchQueue.main.async {
                    self.stocks = stocks.map(StockViewModel.init)
                }
            }
        }
    }
}
