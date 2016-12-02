//
//  ViewController.swift
//  CollectionView
//
//  Copyright © 2015 FTS InfoTech, LLC. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


import UIKit

private let reuseIdentifier = "cellID"

class ViewController: UICollectionViewController {
    
    // MARK: - Navigation
    
    // the user tapped a collection item, load and set the image on the detail view controller
    //
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let selectedIndexPath = self.collectionView?.indexPathsForSelectedItems![0]
            
            // load the image
            let imageNameToLoad = "\(selectedIndexPath!.row)_full"
            let image = UIImage(named: imageNameToLoad)
            
            if let detailViewController = segue.destination as? DetailViewController {
                detailViewController.detailItem = image
            }
        }
    }
    
    
    // MARK: UICollectionViewDataSource
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 32
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // we're going to use a custom UICollectionViewCell, which will hold an image and its label
        //
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! Cell
        
        // make the cell's title the actual NSIndexPath value
        cell.label.text = "{\(indexPath.row), \(indexPath.section)}"
        
        // load the image for this cell
        cell.image.image = UIImage(named: "\(indexPath.row)")
        
        return cell
    }
    
    
}
