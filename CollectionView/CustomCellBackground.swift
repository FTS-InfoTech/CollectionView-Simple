//
//  CustomCellBackground.swift
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

class CustomCellBackground: UIView {

    override func draw(_ rect: CGRect) {
        
        // draw a rounded rect bezier path filled with blue
        let aRef = UIGraphicsGetCurrentContext();
        aRef?.saveGState();
        
        let bezierPath = UIBezierPath.init(roundedRect: rect, cornerRadius: 5.0)
        bezierPath.lineWidth = 5.0
        UIColor.black.setStroke()
        
        let fillColor = UIColor.init(colorLiteralRed: 0.529, green: 0.808, blue: 0.922, alpha: 1)   // color equivalent is #87ceeb
        fillColor.setFill()
        
        bezierPath.stroke()
        bezierPath.fill()
        
        aRef?.restoreGState()
    }

}
