//
//  RegisterViewController.swift
//  swift_tutorial
//
//  Created by semi han on 2021/08/30.
//

import UIKit

class RegisterViewController: UIViewController{
    @IBOutlet weak var btnForLoginVirwController: UIButton!
    override func viewDidLoad(){
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden = true
        
    }
    @IBAction func onLoginViewControllerButtonCliked(_ sender: UIButton) {
        // 디버깅을 위해 작성
        print("RegisterViewController - nLoginViewControllerButtonCliked called() 로그인 버튼 클릭")
        // 네비게이션 뷰 콘트롤러를 팝 한다.
        // popViewcontroller는 뷰 컨트롤러 팝하면 이전의 뷰컨트롤러로 돌아가게된다(즉, 뒤로가기랑 동일한 역할)
        // animated: true는 애니메이션도 지울 건지 true
        self.navigationController?.popViewController(animated: true)
    }
    
}
