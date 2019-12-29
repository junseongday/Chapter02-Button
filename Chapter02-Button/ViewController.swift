//
//  ViewController.swift
//  Chapter02-Button
//
//  Created by JSMAC on 2019/12/29.
//  Copyright © 2019 JSPRO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 50, y: 100, width: 150, height: 200)
        btn.setTitle("테스트 버튼", for: .normal)
        btn.center = CGPoint(x: self.view.frame.width/2, y: 100 )
        
        btn.addTarget(self, action: #selector(self.btnClick(_:)), for: .touchUpInside)
        
        self.view.addSubview(btn)
    }

    @objc func btnClick(_ sender: Any) {
        if let btn = sender as? UIButton {
            btn.setTitle("클릭되었습니다", for: .normal)
        }
    }
}

