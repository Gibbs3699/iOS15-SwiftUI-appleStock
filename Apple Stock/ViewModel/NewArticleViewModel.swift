//
//  NewArticleViewModel.swift
//  Apple Stock
//
//  Created by TheGIZzz on 28/5/2565 BE.
//

import Foundation

struct NewArticleViewModel {
    
    let article: Article
    
    var title: String {
        return article.title
    }
    
    var imageURL: String {
        return article.imageURL
    }
    
    var publication: String {
        return article.publication.uppercased()
    }
}
