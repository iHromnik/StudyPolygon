//
//  TestViewController.swift
//  StudyPolygon
//
//  Created by iHRomnik on 02.03.2024.
//

import UIKit

class TestViewController: UIViewController {

    @IBOutlet weak var testControl: TestControl!
    @IBOutlet weak var labelControl: UILabel!
    @IBOutlet weak var imageControl: UIImageView!
//    @IBOutlet weak var testControl: UIView!
    
    
    var isDidLike  = false
    var like = 100
    var likeHeart = "heart"
    var likeHeartFill = "heart.fill"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelControl.text = String(like)
        if isDidLike {
            imageControl.image = UIImage(systemName: likeHeartFill)
        } else {
            imageControl.image = UIImage(systemName: likeHeart)
        }
        

        
        
        testControl.backgroundColor = .lightGray
        testControl.layer.cornerRadius = testControl.bounds.height / 4
        testControl.layer.shadowOffset = CGSize(width: 5, height: 10)
        testControl.layer.shadowColor = UIColor.black.cgColor
        testControl.layer.shadowRadius = 5
        testControl.layer.shadowOpacity = 1
    
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        testControl.addTarget(self, action: #selector(selctorTest), for: .touchUpInside)
    }
    
    @objc func selctorTest() {
        
        guard !isDidLike else { return }
        like += 1
        isDidLike.toggle()
        testControl.setNeedsDisplay()
        print(like)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
