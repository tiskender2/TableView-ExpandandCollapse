//
//  ApiClient.swift
//  Collapse
//
//  Created by tolga iskender on 12.08.2018.
//  Copyright © 2018 tolga iskender. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

var sections: [Section] = []
func ApiClient(basarili: @escaping () -> Void) {
    
    Alamofire.request(url, method: .get).validate().responseJSON { response in
    switch response.result {
    case .success(let value):
    let json = JSON(value)
    json.array?.forEach({ (doviz) in
        let section2 = Section(genre: doviz["full_name"].stringValue, movies: ["Alış Fiyatı : \(doviz["buying"].stringValue)₺","Satış Fiyatı : \(doviz["selling"].stringValue)₺"], expanded: false)
        sections.append(section2)
        print(sections)
        
    })
        basarili()
    case .failure(let error):
    print(error)
    }
    }
    
}
