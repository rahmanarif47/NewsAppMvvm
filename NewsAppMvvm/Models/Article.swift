//
//  Article.swift
//  NewsAppMvvm
//
//  Created by Arif Rahman Sidik on 03/12/22.
//

import Foundation

struct ArticleResponse : Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String?
    let description: String?
}
