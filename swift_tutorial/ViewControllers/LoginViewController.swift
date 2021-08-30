//
//  LoginVeiwController.swift
//  swift_tutorial
//
//  Created by semi han on 2021/08/30.
//
import UIKit

class LoginViewController: UIViewController{
    
    // 뷰가 생성되었을 때
    override func viewDidLoad(){
        super.viewDidLoad()
        // 상단 네비게이션 바 부분을 숨김처리한다
        // ?. 옵셔널
        self.navigationController?.isNavigationBarHidden = true
        
    }
}
