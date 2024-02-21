//
//  FriendsViewController.swift
//  StudyPolygon
//
//  Created by iHRomnik on 19.02.2024.
//

import UIKit

class FriendsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.dataSource = self
            tableView.delegate = self
        }
    }
    
    
    
    
    var friends: [User] = [
        User(name: "amazing", avatar: UIImage(named: "amazing")!),
        User(name: "anger", avatar: UIImage(named: "anger")!),
        User(name: "bad_egg", avatar: UIImage(named: "bad_egg")!),
        User(name: "bad_smile", avatar: UIImage(named: "bad_smile")!),
        User(name: "beaten", avatar: UIImage(named: "beaten")!),
        User(name: "big_smile", avatar: UIImage(named: "big_smile")!),
        User(name: "cry", avatar: UIImage(named: "cry")!),
        User(name: "electric_shock", avatar: UIImage(named: "electric_shock")!),
        User(name: "exciting", avatar: UIImage(named: "exciting")!),
        User(name: "eyes_droped", avatar: UIImage(named: "eyes_droped")!),
        User(name: "girl", avatar: UIImage(named: "girl")!)
    
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
   
    }
}


extension FriendsViewController: UITableViewDelegate {
    
 
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Photo" {

            guard  let destinationVC = segue.destination as? PhotoViewController,
                    let indexPath = tableView.indexPathForSelectedRow else {return}
            
            destinationVC.photo = friends[indexPath.row].avatar
            
        }
    }
    
}

extension FriendsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Friend", for: indexPath) as? FriendTableViewCell else { return UITableViewCell()}
        
        cell.nameLabel.text = friends[indexPath.row].name
        cell.avatarImage.image = friends[indexPath.row].avatar
    
        
        return cell
    }
    
    
}


