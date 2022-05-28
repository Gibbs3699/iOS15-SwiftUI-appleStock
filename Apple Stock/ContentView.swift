//
//  ContentView.swift
//  Apple Stock
//
//  Created by TheGIZzz on 27/5/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var stockListVM = StockListViewModel()
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.black
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UITableView.appearance().backgroundColor = UIColor.black
        UITableViewCell.appearance().backgroundColor = UIColor.black
        
        stockListVM.load()
    }
    
    var body: some View {
        
        let filteredStocks = self.stockListVM.searchTerm.isEmpty ? self.stockListVM.stocks : self.stockListVM.stocks.filter { $0.symbol.starts(with: self.stockListVM.searchTerm ) }
        
        NavigationView {
            ZStack(alignment: .leading) {
                
                Color.black
                
                Text("28 May 2022")
                    .font(.custom("Arial", size: 32))
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    .offset(y: -350)
                
                SearchView(searchTerm: self.$stockListVM.searchTerm)
                    .offset(y: -300)
                
                StockListView(stocks: filteredStocks)
                    .offset(y: 200)
                
                NewsArticleView(newsArticles: self.stockListVM.news, onDragBegin: { value in
                    self.stockListVM.dragOffset = value.translation
                }, onDragEnd: { value in

                    if value.translation.height < 0 {
                        self.stockListVM.dragOffset = CGSize(width: 0, height: 100)
                    } else {
                        self.stockListVM.dragOffset = CGSize(width: 0, height: 650)
                    }

                })
                    .animation(.spring())
                    .offset(y: self.stockListVM.dragOffset.height)
                
                
            }
            .navigationBarTitle("Stocks")
            .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
