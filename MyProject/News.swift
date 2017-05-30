//
//  News.swift
//  MyProject
//
//  Created by std111 on 5/29/17.
//  Copyright © 2017 std111. All rights reserved.
//

import UIKit

class News {
    
    var title:String
    var description:String
    var iconImage:UIImage
    var author:String
    var views:Int
    var createdate:String
    var category:String
    
    init( title:String,description:String, iconImage:UIImage, author:String, views:Int,
          createdate:String, category:String = "Undefine")
    {
        self.title = title
        self.description = description
        self.iconImage = iconImage
        self.author = author
        self.views = views
        self.createdate = createdate
        self.category = category
    }
}
