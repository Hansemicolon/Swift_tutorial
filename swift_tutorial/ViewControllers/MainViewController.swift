//
//  ViewController.swift
//  swift_tutorial
//
//  Created by semi han on 2021/08/28.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    let titleLable: UILabel = {
        let label = UILabel() //인스턴스를 메모리에 저장?
        label.textColor = .black
        label.textAlignment = .center
        label.text = "메인화면"
        label.font =  UIFont.boldSystemFont(ofSize: 70)
        return label
        
    }()
    // 애니메이션 뷰: 자료형 = { 선언하면서 정의하는 것 }()
    let animationVeiw: AnimationView = {
        let animView = AnimationView(name: "71185-ui-ux") // 인스턴스를 해준다 == 메모리에 올라 간다
        //aniView 설정 시작
        animView.frame = CGRect(x:0,y:0,width: 400,height: 499) // 크기를 정해 줌 사각형을 만듦
        animView.contentMode = .scaleAspectFill // fit은 맞추는거 fill은 채우는거 즉, 크기게 맞도록 이미지 확대
        //선언하면서 정의가 되는 것이라 바로 return을 해줘야 함
        return animView
    }()

    // 뷰가 생성되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // 만들었던 객체들을 실제로 화면에서 볼 수 있도록 넣어 줌
        view.backgroundColor = .black
        view.addSubview(animationVeiw)
        animationVeiw.center = view.center
        

        // 애니메이션 실행
        animationVeiw.play{
            // 클러져?
            (finish) in
            print("애니메이션 끝났다")
            // 클러져 안에서 선언할 때는 self를 사용해줘야 한다
            self.view.backgroundColor = .white
            
            // viewDidLoad에서 addSubview로 animationView를 품었기 때문에
            // animationView에에서 슈퍼뷰를 제거해준다
            self.animationVeiw.removeFromSuperview()
            self.view.addSubview(self.titleLable)
            self.titleLable.translatesAutoresizingMaskIntoConstraints = false //이거 안해주면 적용이 안 됨
            self.titleLable.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLable.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
            
        }
        
        
    }


}

