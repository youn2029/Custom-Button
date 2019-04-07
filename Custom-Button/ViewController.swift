//
//  ViewController.swift
//  Custom-Button
//
//  Created by 윤성호 on 07/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 버튼 인스턴스를 생성하고, 속성을 설정한다.
        let btn = UIButton(type: UIButton.ButtonType.system)          // ButtonType을 매개변수로 UIButton 선언
        btn.frame = CGRect(x: 50, y: 100, width: 150, height: 30)     // 크기와 위치
        btn.setTitle("테스트 버튼", for: .normal)                        // 타이틀 (상태랑 같이 정의)
        
        // 루트 뷰에 버튼 추가
        self.view.addSubview(btn)
    }


}

