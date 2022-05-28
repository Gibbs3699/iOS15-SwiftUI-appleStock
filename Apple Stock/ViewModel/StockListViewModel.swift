//
//  StockListViewModel.swift
//  Apple Stock
//
//  Created by TheGIZzz on 28/5/2565 BE.
//

import Foundation

class StockListViewModel: ObservableObject {
    
    @Published var searchTerm: String = ""
    
    @Published var stocks: [StockViewModel] = [StockViewModel]()
    
    @Published var news: [NewArticleViewModel] = [NewArticleViewModel]()
    
    func load() {
        fetchStock()
        fetchNews()
    }
    
    private func fetchNews() {
        
        Webservice().getTopNews { (news) in
            if let news = news {
                DispatchQueue.main.async {
                    self.news = news.map(NewArticleViewModel.init)
                }
            }
        }
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
