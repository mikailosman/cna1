//
//  ViewController.swift
//
//
//  Created by Mikail Osman on 2019-08-27.
//  Copyright © 2019 avicenna. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    

    
    fileprivate let collectionView: UICollectionView  = {
        let layout = UICollectionViewFlowLayout()
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        layout.scrollDirection = .horizontal
        cv.register(CustomCell.self, forCellWithReuseIdentifier: "cell")
        return cv
        
        
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = UIColor.white

        
        
        view.addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        collectionView.heightAnchor.constraint(equalTo: collectionView.widthAnchor, constant: 0.5).isActive = true
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.backgroundColor = .white
        

    }
    
    
    
    
}


extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.height/2)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.backgroundColor = .white
        return cell
    }
    
    
    class CustomCell: UICollectionViewCell {
        
        fileprivate let bg: UIImageView = {
            
            let iv = UIImageView()
            iv.image = #imageLiteral(resourceName: "gradient")
            iv.translatesAutoresizingMaskIntoConstraints = false
            iv.contentMode = .scaleAspectFill
            iv.layer.cornerRadius = 12
            iv.clipsToBounds = true
            return iv
        }()
        
        override init(frame: CGRect) {
            
            super.init(frame: frame)
            
            contentView.addSubview(bg)
            bg.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            bg.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
            bg.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
            bg.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true


        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }
    
    
    
}

