//
//  Stock.swift
//  Apple Stock
//
//  Created by TheGIZzz on 27/5/2565 BE.
//

import Foundation

struct Stock: Decodable {
    let symbol: String
    let description: String
    let price: String
    let change: String
}
