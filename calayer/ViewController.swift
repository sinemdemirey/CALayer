//
//  ViewController.swift
//  calayer
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var practiceView: UIView!
    
    //standalone layer
    lazy var newLayer : CALayer = {
        return CALayer()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupStandaloneLayer()
    }
    
    //Called to notify the view controller that its view has just laid out its subviews
    //we are resizing it with the view
    override func viewDidLayoutSubviews() {
        //since new layer is the subview of practice view praactice view's bound will be newlayer's frame
        newLayer.frame = practiceView.bounds
    }
    
    //this layer will not automatically resize with the view
    func setupStandaloneLayer(){
        newLayer.backgroundColor = UIColor.purple.cgColor
        newLayer.cornerRadius = 10.0
        newLayer.borderWidth = 5.0
        newLayer.borderColor = UIColor.systemPink.cgColor
        newLayer.shadowOpacity = 0.8
        newLayer.shadowRadius = 15.0
        // think like light coming from right side of the screen
        newLayer.shadowOffset = CGSize(width: CGFloat(-15), height: CGFloat(-15))
        // even on every side
        newLayer.shadowOffset = CGSize.zero
        
        newLayer.contents = UIImage(named: "cat")?.cgImage
        // masks everything outside the bounds
        newLayer.masksToBounds = true
        
        newLayer.contents = UIImage(named: "cat2")?.cgImage
        newLayer.contentsGravity = CALayerContentsGravity.center
        
        practiceView.layer.addSublayer(newLayer)
    }
    
    func setupNormalLayer(){
        practiceView.layer.backgroundColor = UIColor.purple.cgColor
        practiceView.layer.cornerRadius = 10.0
        practiceView.layer.borderWidth = 5.0
        practiceView.layer.borderColor = UIColor.systemPink.cgColor
        practiceView.layer.shadowOpacity = 0.8
        practiceView.layer.shadowRadius = 15.0
        // think like light coming from right side of the screen
        practiceView.layer.shadowOffset = CGSize(width: CGFloat(-15), height: CGFloat(-15))
        // even on every side
        practiceView.layer.shadowOffset = CGSize.zero
        
        practiceView.layer.contents = UIImage(named: "cat")?.cgImage
        // masks everything outside the bounds
        practiceView.layer.masksToBounds = true
        
        practiceView.layer.contents = UIImage(named: "cat2")?.cgImage
        practiceView.layer.contentsGravity = CALayerContentsGravity.center
    }


}

