//
//  TestControl.swift
//  StudyPolygon
//
//  Created by iHRomnik on 02.03.2024.
//

import UIKit

class TestControl: UIControl {

    
    lazy var iohih: UITapGestureRecognizer = {
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(selector(_ :)))
        tap.numberOfTapsRequired = 1
        tap.numberOfTouchesRequired = 1
        return tap
    }()
      
    
    @objc func selector(_ tapp: UIGestureRecognizer) {
        print(#function)
        sendActions(for: .touchUpInside)
        
        
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        addGestureRecognizer(iohih)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addGestureRecognizer(iohih)
    }
    
}
