//
//  GroupsViewController.swift
//  StudyPolygon
//
//  Created by iHRomnik on 19.02.2024.
//

import UIKit

class GroupsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var groups: [Group] = [
        
        Group(name: "cry", avatar: UIImage(named: "cry")!),
        Group(name: "electric_shock", avatar: UIImage(named: "electric_shock")!),
        Group(name: "exciting", avatar: UIImage(named: "exciting")!),
        Group(name: "eyes_droped", avatar: UIImage(named: "eyes_droped")!),
        Group(name: "girl", avatar: UIImage(named: "girl")!),
        Group(name: "amazing", avatar: UIImage(named: "amazing")!),
        Group(name: "anger", avatar: UIImage(named: "anger")!),
        Group(name: "bad_egg", avatar: UIImage(named: "bad_egg")!),
        Group(name: "bad_smile", avatar: UIImage(named: "bad_smile")!),
        Group(name: "beaten", avatar: UIImage(named: "beaten")!),
        Group(name: "big_smile", avatar: UIImage(named: "big_smile")!)
    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self

    }
  
}

extension GroupsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        groups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Group", for: indexPath) as? GroupTableViewCell
        else { return UITableViewCell() }
        
        cell.iconImage.image = groups[indexPath.row].avatar
        cell.nameLable.text = groups[indexPath.row].name
        
        return cell
    }
}

