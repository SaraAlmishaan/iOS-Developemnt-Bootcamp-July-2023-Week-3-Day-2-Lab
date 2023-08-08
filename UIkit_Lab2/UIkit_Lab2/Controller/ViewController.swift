//  ViewController.swift
//  UIkit_Lab2
//  Created by Sara on 08/08/2023.

import Foundation
import UIKit
import SnapKit


class ViewController: UIViewController {
    var labelTitle = UILabel()
    var labelSubTitle = UILabel()
    var labelSection1 = UILabel()
    let objSection1 : SectionView = .init()
    var labelSection2 = UILabel()
    let objSection2 : SectionView2 = .init()
 
  
    
         override func viewDidLoad() {
             super.viewDidLoad()
             self.view.backgroundColor = .white
             labelTitleView()
             labelSubTitleView()
             label1View()
             section1()
             label2View()
             section2()
         }
    
    
    func labelTitleView(){
        self.view.addSubview(labelTitle)
        labelTitle.text = "Personalize your feed"
        labelTitle.font = UIFont.systemFont(ofSize: 25.0)
        labelTitle.textAlignment = .center
        labelTitle.snp.makeConstraints {
            $0.top.equalTo(90)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(30)
        }
    }

    func labelSubTitleView(){
        self.view.addSubview(labelSubTitle)
        labelSubTitle.text = "Select 10 or more topics"
        labelSubTitle.textAlignment = .center
        labelSubTitle.textColor = .gray
        labelSubTitle.snp.makeConstraints {
            $0.top.equalTo(labelTitle.snp.bottom)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(26)
        }
    }
    
    func label1View(){
        self.view.addSubview(labelSection1)
        labelSection1.text = "Most Popular"
        labelSection1.textAlignment = .left
        
        labelSection1.snp.makeConstraints {
            $0.top.equalTo(labelSubTitle.snp.bottom)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(25)
            $0.leading.equalTo(16)
        }
    }
    
    func section1(){
        self.view.addSubview(objSection1)
        objSection1.snp.makeConstraints {
            $0.top.equalTo(labelSection1.snp.bottom)
            $0.width.equalTo(self.view.frame.width-32)
            $0.height.equalTo(250)
            $0.leading.equalTo(16)
        }
    }
    
    func label2View(){
        self.view.addSubview(labelSection2)
        labelSection2.text = "Lifestyle"
        labelSection2.textAlignment = .left
        
        labelSection2.snp.makeConstraints {
            $0.top.equalTo(objSection1.snp.bottom)
            $0.width.equalTo(self.view.frame.width - 32)
            $0.height.equalTo(25)
            $0.leading.equalTo(16)
        }
    }
    
    
    func section2(){
        self.view.addSubview(objSection2)
        objSection2.snp.makeConstraints {
            $0.top.equalTo(labelSection2.snp.bottom)
            $0.width.equalTo(self.view.frame.width-32)
            $0.height.equalTo(250)
            $0.leading.equalTo(16)
        }
    }
}
