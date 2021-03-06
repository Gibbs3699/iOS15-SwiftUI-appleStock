//
//  Webservice.swift
//  Apple Stock
//
//  Created by TheGIZzz on 27/5/2565 BE.
//

import Foundation

class Webservice {
    
    func getTopNews(completion: @escaping (([Article]?) -> Void)) {
        
        guard let url = URL(string: "https://island-bramble.glitch.me/top-news") else {
            fatalError("URL is incorrect!")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let articles = try? JSONDecoder().decode([Article].self, from: data)
            
            DispatchQueue.main.async {
                completion(articles)
            }
            
            
        }.resume()
        
    }
    
    func getStock(completion: @escaping (([Stock]?) -> Void)) {
        
        guard let url = URL(string: "https://island-bramble.glitch.me/stocks") else {
            fatalError("URL is incorrect!")
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                    completion(nil)
                }
                return
            }
            
            let stocks = try? JSONDecoder().decode([Stock].self, from: data)
            
            DispatchQueue.main.async {
                completion(stocks)
            }
            
        }.resume()
        
    }
    
    
    
}
