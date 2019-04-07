//
//  ViewController.swift
//  Custom-Button
//
//  Created by 윤성호 on 07/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var subject : UILabel!   // 레이블에 해당되는 변수

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 레이블 인스턴스를 초기화
        self.subject = UILabel()
        self.subject.frame = CGRect(x: 0, y: 100, width: 150, height: 30)
        self.subject.text = "Hello, Label~!!"
        self.subject.textAlignment = NSTextAlignment(CTTextAlignment.center)    // 레이블 텍스트 정령
        
        // 버튼 인스턴스를 생성하고, 속성을 설정한다.
        let btn = UIButton(type: UIButton.ButtonType.system)          // ButtonType을 매개변수로 UIButton 선언
        btn.frame = CGRect(x: 50, y: 200, width: 150, height: 30)     // 크기와 위치
        btn.setTitle("테스트 버튼", for: .normal)                        // 타이틀 (상태랑 같이 정의)
        
        // 버튼을 수평 중앙 정령
        btn.center = CGPoint(x: self.view.frame.width / 2 , y: 200)
        
        // 레이블을 수평 중앙 정력
        self.subject.center = CGPoint(x: self.view.frame.width / 2, y: 100)
        
        // 루트 뷰에 버튼 추가
        self.view.addSubview(btn)
        self.view.addSubview(subject)
        
        // 버튼의 이벤트와 메소드 btnOnClick(_:)을 연결한다.
        // _ target : 호출 할 메소드가 있는 인스턴스를 가르키는 매개변수
        // action : 호출 할 메소드를 지정하는 매개변수
        // for controlEvents : 액션 메소드의 실행 조건을 지정하는 매개변수
        btn.addTarget(self, action: #selector(btnOnClick(_:)), for: .touchUpInside)
    }
    
    @objc func btnOnClick(_ sender: Any) {
        // 호출한 객체가 버튼이면
        if let btn = sender as? UIButton {
            btn.setTitle("클릭되었습니다.", for: .normal)
            self.subject.text = "GoodBye, Label~~!"
        }
    }


}

