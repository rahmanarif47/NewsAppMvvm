//
//  ArticleVM.swift
//  NewsAppMvvm
//
//  Created by Arif Rahman Sidik on 05/12/22.
//

import Foundation
import RxSwift
import RxCocoa

struct ArticleListViewModel{
    let articlesVM : [ArticleVM]
}

extension ArticleListViewModel {
    init(_ articles: [Article]) {
        self.articlesVM = articles.compactMap(ArticleVM.init)
    }
}

extension ArticleListViewModel {
    func articleAt(_ index: Int) -> ArticleVM {
        return self.articlesVM[index]
    }
}

struct ArticleVM {
    let article : Article
    
    init(article: Article) {
        self.article = article
    }
}

extension ArticleVM {
    var title : Observable<String> {
        return Observable<String>.just(article.title ?? "")
    }
    
    var description: Observable<String> {
        return Observable<String>.just(article.description ?? "")
    }
}
