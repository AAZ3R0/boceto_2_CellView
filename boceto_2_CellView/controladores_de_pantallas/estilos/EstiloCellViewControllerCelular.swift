//
//  EstiloCellViewControllerCelular.swift
//  boceto_2_CellView
//
//  Created by alumno on 10/11/24.
//

import UIKit


extension ControladorPantallaPrincipalDeColeccion: UICollectionViewDelegateFlowLayout{
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
            
            return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        }
        // Method 2
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
    }
        // Method 3
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 5
    }
        //Method 4
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let collectionViewWidth = self.collectionView.frame.width
        let collectionViewHeight =  self.collectionView.frame.height
        
        let cellWidth = (collectionViewWidth) / 1.1
        let cellHeight = cellWidth * 0.5
        
        return CGSize(width: cellWidth , height: cellHeight)
        
    }
        
    override func viewWillLayoutSubviews() {
        print("REPRENDERs")
        
    }
}
