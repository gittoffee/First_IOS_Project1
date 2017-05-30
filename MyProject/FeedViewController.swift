//
//  FeedViewController.swift
//  MyProject
//
//  Created by std111 on 5/29/17.
//  Copyright © 2017 std111. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController
{

    @IBOutlet weak var tableview: UITableView!
  
    var newsArray:[News] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        setupTableView()
        setupTableViewDummyData()
     }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupTableView()
    {
        self.tableview.register(UINib(nibName: "FeedTableViewCell",bundle: nil),forCellReuseIdentifier: "FeedTableViewCell")  //นำ Identifier ของ Cell มาแสดง
    }
    
    func setupTableViewDummyData()
    {
        let news:News = News(title: "IOS", description: "Error", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "Steve", views: 2, createdate: "01/06/60", category: "Psycho")
        let news2:News = News(title: "Android", description: "Android", iconImage: #imageLiteral(resourceName: "dog"), author: "Dog", views: 3, createdate: "02/06/60", category: "Technology")
        let news3:News = News(title: "Network", description: "Network", iconImage: #imageLiteral(resourceName: "rocket_icon2"), author: "Dog", views: 4, createdate: "03/06/60", category: "IT")
        let news4:News = News(title: "Learn English", description: "Learn English", iconImage: #imageLiteral(resourceName: "iPhone-Icon-60"), author: "Dog", views: 5, createdate: "04/06/60", category: "Language")
        let news5:News = News(title: "Yahoo", description: "Yahoo", iconImage: #imageLiteral(resourceName: "github_512"), author: "yahoo", views: 6, createdate: "05/06/60", category: "Novel")
        let news6:News = News(title: "Cake", description: "Cake", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "cake", views: 7, createdate: "06/06/60", category: "Food")

        newsArray.append(news)
        newsArray.append(news2)
        newsArray.append(news3)
        newsArray.append(news4)
        newsArray.append(news5)
        newsArray.append(news6)

    }
}

extension FeedViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100    //กำหนดความสูง
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1   //กำหนดจำนวน section
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count  //กำหนดจำนวนแถว ให้นับทุกArray
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowNo = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as! FeedTableViewCell
        
        let news:News = newsArray[rowNo]
        cell.setupUI(news: news)
        
        //เรียก Object มากจาก Class News (เปลี่ยนข้อมูลใน Cell ต่างๆ )
//        cell.iconimgview.image = news.iconImage
//        cell.titlelabel.text = news.title
//        cell.descriptionlabel.text = news.description
//        cell.accessorylabel.text = "\(news.author). \(news.views) views. \(news.createdate)"
        
        return cell   //กำหนด cell ที่จะนำมาแสดง
    }
    
    
    
}
