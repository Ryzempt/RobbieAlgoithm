//
//  ViewController.swift
//  Robbie Algoithm
//
//  Created by Kaufman, Robert on 10/23/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class AlgorithmViewController: UIViewController
{
  
    @IBOutlet weak var algorithmText: UILabel!
    
    @IBOutlet weak var algorithmImage: UIImageView!
    

    }

    private func formatAlgoritm() -> Void
    {
        let stepOne : String = "First you make fun of skywa!"
        let stepTwo : String = "Then you hit him"
        let stepThree : String = "Then he cry ;-;"
        let algorithm = [stepOne, stepTwo, stepThree]
       
        let attributesDictionary = [NSAttributedString.Key.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: title, attribtes: attributesDictionary)
        
        for step in algorithm
    {
        let bullet : String = "¥∂ß∑"
        let formattedStep : String = "\n\(bullet)  \(step)"
        let formattedStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
        let outlineStyle = createOutlineStyle()
        
        NSAttributedStringKey.addAttributes([NSAttributedString.Key.paragraphStyle : outlineStyle], range: NSMakeRange(0,attributedStringStep.length))
        fullAttributedString.append(NSAttributedStringKey)
        }
        algorithmText.attributedText = fullAttributedString
    
    }
    private func createOutlineStyle() -> NSParagraphStyle
    {
        let outlineStyle : NSMutableParagraphStyle = NSMutableParagraphStyle()
        outlineStyle.alignment = .left
        outlineStyle.defaultTabInterval = 15
        outlineStyle.firstLineHeadIndent = 20
        outlineStyle.headIndent = 35
        
        return outlineStyle
    }






