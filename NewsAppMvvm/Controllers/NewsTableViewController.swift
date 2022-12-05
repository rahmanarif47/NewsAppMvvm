//
//  NewsTableViewController.swift
//  NewsAppMvvm
//
//  Created by Arif Rahman Sidik on 03/12/22.
//

import Foundation
import UIKit
import RxSwift
import RxCocoa

class NewsTableViewController : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        populateNews()
    }
    
    private func populateNews(){
        let resource = Resource<ArticleResponse>(url: URL(string: "") ?? "")
    }
    
    
}
