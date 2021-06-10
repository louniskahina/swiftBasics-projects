//
//  Task.swift
//  ios-recruitment-master-KahinaL
//
//  Created by Kahina Lounis on 15/01/2021.
//

import Foundation
class Task : NSObject, NSCoding {
    
   
    
    var name: String?
    var isDone: Bool?
    var details: String?
   
    private let nameKey = "name"
    private let isDoneKey = "isDone"
    private let detailsKey = "detailsKey"
    
    init(name: String, isDone: Bool = false, details: String)// not done by default
    {
        self.name = name
        self.isDone = isDone
        self.details = details
        
    }

    func encode(with coder: NSCoder) {
        coder.encode(name, forKey: nameKey)
        coder.encode(isDone, forKey: isDoneKey)
        coder.encode(details, forKey: detailsKey)
    }
    
    required init?(coder: NSCoder) {
        guard let name = coder.decodeObject(forKey: nameKey) as? String,
              let details = coder.decodeObject(forKey: detailsKey) as? String,
              let isDone = coder.decodeObject(forKey: isDoneKey) as? Bool
              else {
            return
        }
        self.name = name
        self.isDone = isDone
        self.details = details
    }
    
    
}
