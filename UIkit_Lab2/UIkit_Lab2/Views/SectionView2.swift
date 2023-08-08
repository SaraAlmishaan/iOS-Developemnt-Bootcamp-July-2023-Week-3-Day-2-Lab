//  SectionView.swift
//  UIkit_Lab2
//  Created by Sara on 08/08/2023.
import Foundation
import UIKit
import SnapKit

class SectionView2: UIView{

    var collectionView : UICollectionView = .init(
        frame: .zero,
        collectionViewLayout: UICollectionViewLayout()
    )
    let categories: Array<String> = [
        "Travel Tips",
        "Luxury Homes",
        "Architecture",
        "Interior Design",
        "Fashion",
        "Men's Style",
        "Cars",
        "Wine & Drinks",
        "Home products",
        "Kitchen products"
    ]
    override init(frame:CGRect){
       super.init(frame: frame)
    }
    required init?(coder: NSCoder){
        super.init(coder : coder)
    }
    
  init(){
     // collectionView.text = "Most Popular:"
     // collectionView.textAlignment = .center
        super.init(frame : .zero)
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 140, height: 50)
        layout.minimumLineSpacing = 2
        layout.minimumInteritemSpacing = 2
        //layout.scrollDirection = .horizontal
        collectionView = .init(frame: .zero , collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self , forCellWithReuseIdentifier: "cell" )
      //  collectionView.showsHorizontalScrollIndicator = false
        self.addSubview(collectionView)
        collectionView.snp.makeConstraints{
            $0.leading.top.trailing.bottom.equalTo(0)

        }

       
             
     }
    
}


extension SectionView2: UICollectionViewDelegate , UICollectionViewDataSource {
            
            func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                return categories.count
            }
            
            func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
                
                let cell = collectionView.dequeueReusableCell( withReuseIdentifier: "cell", for: indexPath as IndexPath)
                let label = UILabel()
                label.text = categories[indexPath.item]
                label.textAlignment = .center
                cell.addSubview(label)
                label.snp.makeConstraints{
                    $0.leading.top.trailing.bottom.equalTo(cell)
                }
                
                cell.backgroundColor = .gray.withAlphaComponent(0.2)
                cell.layer.cornerRadius = 8
                return cell
            }
            
            func numberOfSections(in collectionView: UICollectionView) -> Int {
                return 1
            }
            
}
 
