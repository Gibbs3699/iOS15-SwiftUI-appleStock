//
//  ContentView.swift
//  Apple Stock
//
//  Created by TheGIZzz on 27/5/2565 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchTerm: String = ""
    
    init() {
        UINavigationBar.appearance().backgroundColor = UIColor.black
        UINavigationBar.appearance().largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        UITableView.appearance().backgroundColor = UIColor.black
        UITableViewCell.appearance().backgroundColor = UIColor.black
    }
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .leading) {
                
                Color.black
                
                Text("28 May 2022")
                    .font(.custom("Arial", size: 32))
                    .fontWeight(.bold)
                    .foregroundColor(Color.gray)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 0))
                    .offset(y: -350)
                
                SearchView(searchTerm: $searchTerm)
                    .offset(y: -300)
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
