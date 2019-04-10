//
//  ViewController.swift
//  Custom-NavigationBar
//
//  Created by 윤성호 on 10/04/2019.
//  Copyright © 2019 윤성호. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // 내비게이션 타이틀 초기화
        self.initTitleInput()
        
        // 내비게이션 바의 색성
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.02, green: 0.22, blue: 0.49, alpha: 1.0)
    }
    
    // 내비게이션 바의 타이틀 설정 - 한개의 레이블
    func initTitle() {
        
        // 내비게이션 타이틀룡 레이블 객체 , 속성 설정
        let nTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        nTitle.numberOfLines = 2      // 두 줄까지 표시되도록 설정
        nTitle.textAlignment = NSTextAlignment.center
        nTitle.textColor = UIColor.white
        nTitle.font = UIFont.systemFont(ofSize: 15)
        nTitle.text = "58개 숙소 \n 1박(1월 10일 ~ 1월 11일)"
        
        // 내비게이션 타이틀에 입력
        self.navigationItem.titleView = nTitle
        
    }
    
    // 내비게이션 바의 타이틀 설정 - 컨테이너
    func initTitleNew(){
        
        // 컨테이너 뷰
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        
        // 상단 레이블
        let topTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 20))
        topTitle.numberOfLines = 1
        topTitle.textAlignment = .center
        topTitle.font = UIFont.systemFont(ofSize: 15)
        topTitle.textColor = .white
        topTitle.text = "58개 숙소"
        
        // 하단 레이블
        let subTitle = UILabel(frame: CGRect(x: 0, y: 18, width: 200, height: 20))
        subTitle.numberOfLines = 1
        subTitle.font = UIFont.systemFont(ofSize: 12)
        subTitle.textColor = .white
        subTitle.textAlignment = .center
        subTitle.text = "1박(1월 10일 ~ 1월 11일)"
        
        // 컨테이너 뷰에 추가
        containerView.addSubview(topTitle)
        containerView.addSubview(subTitle)
        
        // 내비게이션 아이템에 타이틀 추가
        self.navigationItem.titleView = containerView
    }
    
    // 내비게이션 바의 타이틀 설정 - 이미지
    func initTitleImage(){
        
        // 이미지 뷰
        let imageV = UIImageView(image: UIImage(named: "swift_logo"))
        
        // 내비게이션 아이템의 타이틀 추가
        self.navigationItem.titleView = imageV
        
    }
    
    // 내비게이션 바의 타이틀 설정 - 텍스트 필드
    func initTitleInput(){
        
        // 텍스트 필드
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 300, height: 35))
        textField.backgroundColor = .white
        textField.font = .systemFont(ofSize: 13)
        textField.autocapitalizationType = .none    // 자동 대문자 변환 속성 x (UITextAutocapitalizationType)
        textField.autocorrectionType = .no          // 자동 입력 기능 해제 (UITextAutocorrectionType)
        textField.spellCheckingType = .no           // 스펠링 체크 기능 해제 (UITextSpellCheckingType)
        textField.keyboardType = .URL               // URL 입력 전용 키보드 (UIKeyboardType)
        textField.keyboardAppearance = .dark        // 키보드 색상 (UIKeyboardAppearance)
        textField.layer.borderWidth = 0.3           // 테두리 경계선 두께
        textField.layer.borderColor = UIColor(red: 0.60, green: 0.60, blue: 0.60, alpha: 1.0).cgColor
        
        // 내비게이션 아이템의 타이틀 추가
        self.navigationItem.titleView = textField
        
    }


}

