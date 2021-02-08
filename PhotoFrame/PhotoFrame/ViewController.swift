//
//  ViewController.swift
//  PhotoFrame
//
//  Created by 심영민 on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var firstDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(#file, #line, #function, #column)
        self.firstLabel.text = "JK의 사진액자"
        self.firstLabel.textColor = UIColor.purple
        self.firstLabel.backgroundColor = UIColor.darkGray
        
        self.firstDescription.text = "Loaded by firstViewController"
        let font = UIFont(name: "Apple Color Emoji", size: 50)
        
        let attributedStr = NSMutableAttributedString(string: firstDescription.text!)
        attributedStr.addAttribute(.font, value: font, range: (firstDescription.text as! NSString).range(of: "first"))
        attributedStr.addAttribute(.foregroundColor, value: UIColor.blue, range: (firstDescription.text as! NSString).range(of: "first"))
        attributedStr.addAttribute(.backgroundColor, value: UIColor.red, range: (firstDescription.text as! NSString).range(of: "ller"))
        firstDescription.attributedText = attributedStr
    }
}

