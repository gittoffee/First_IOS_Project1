//
//  FeewDetailsViewController.swift
//  MyProject
//
//  Created by std111 on 5/30/17.
//  Copyright © 2017 std111. All rights reserved.
//

import UIKit

class FeewDetailsViewController: UIViewController {

    @IBOutlet weak var headerImgView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var accessoryLabel: UILabel!
    @IBOutlet weak var detailsLabel: UITextView!
    
    var news:News?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    self.news = News(title: "IOS", description: "Error", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "Steve", views: 2, createdate: "01/06/60", category: "Psycho")
        // Do any additional setup after loading the view.
    self.setupUI()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onclickSaveButton(_ sender: Any)
    {
        print("Click Save BTN")
    }
    
    func setupUI()
    {
        if let news = self.news
        {
        self.headerImgView.image = news.iconImage
        self.titleLabel.text = news.author
        self.accessoryLabel.text = news.createdate
        self.detailsLabel.text = news.description
    
        }
    }
    

}
