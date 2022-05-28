//
//  NewArticleViewModel.swift
//  Apple Stock
//
//  Created by TheGIZzz on 28/5/2565 BE.
//

import Foundation

struct NewArticleViewModel {
    
    let article: Article
    
    var imageURL: String {
        return self.article.imageURL
    }
    
    var title: String {
        return self.article.title
    }
    
    var publication: String {
        return self.article.publication.uppercased()
    }
}
