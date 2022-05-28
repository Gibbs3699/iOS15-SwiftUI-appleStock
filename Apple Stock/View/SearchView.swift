//
//  SearchView.swift
//  Apple Stock
//
//  Created by TheGIZzz on 28/5/2565 BE.
//

import SwiftUI

struct SearchView: View {
    
    @Binding var searchTerm: String
    
    var body: some View {
        HStack {
            Spacer()
            Image(systemName: "magnifyingglass")
            
            TextField("Search", text: $searchTerm)
                .foregroundColor(Color.primary)
                .padding(10)
            
            Spacer()
            
        }
        .foregroundColor(.secondary)
        .background(Color(.secondarySystemBackground))
        .cornerRadius(10)
        .padding(10)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(searchTerm: .constant(""))
    }
}
