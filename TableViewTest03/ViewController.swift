//
//  ViewController.swift
//  TableViewTest03
//
//  Created by D7703_24 on 2019. 5. 2..
//  Copyright © 2019년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var myTableView: UITableView!
    var count = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
    }
    
    //UITableViewDataSource 메소드
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    //cell 리턴
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{

        let cell = myTableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        let col = indexPath.section
        
        cell.textLabel?.text = "Section : " + String(col)
        cell.detailTextLabel?.text = "Row : " + String(row)
        
        count = count + 1
        
        print("\(count)cell......")
        
        return cell
    }
    
    //UITableVieroverriding
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100.0
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("Row : \(indexPath.row)" + " Section : \(indexPath.section)")
    }
}

