//
//  GradientView.swift
//  Spotif-clone-B
//
//  Created by MAC38 on 20/05/22.
//

import Foundation
import UIKit
<<<<<<< HEAD

@IBDesignable class GradientView: UIView {
    
    var gradientLayer: CAGradientLayer {
        return layer as! CAGradientLayer
    }
    
    override open class var layerClass: AnyClass {
        return CAGradientLayer.classForCoder()
    }
    
    internal var cgColorGradient: [CGColor]? {
        guard let startColor = startColor, let endColor = endColor else { return nil }
        
        return [startColor.cgColor, endColor.cgColor]
    }
    
    
    @IBInspectable var startColor: UIColor? {
        didSet {
            gradientLayer.colors = cgColorGradient
        }
    }
    
    @IBInspectable var endColor: UIColor? {
        didSet {
            gradientLayer.colors = cgColorGradient
        }
    }
    
    @IBInspectable var startPoint: CGPoint = CGPoint(x: 0.0, y: 0.0) {
        didSet {
            gradientLayer.startPoint = startPoint
        }
    }
    
    @IBInspectable var endPoint: CGPoint = CGPoint(x: 0.0, y: 0.0) {
        didSet {
            gradientLayer.endPoint = endPoint
        }
    }
    
}
=======
@IBDesignable class GradientView: UIView{
    var gradientLayer: CAGradientLayer{
        return layer as! CAGradientLayer
    }
    
    override open class var layerClass: AnyClass{
        //se sobreescribe conyenido en la clase
        return CAGradientLayer.classForCoder()
        
        //este class for code es una funcion interna , no se entiende mucho que hace pero sirve para poder ocmbinar los colores
        
        
    }
    
    internal var cgColorGradient:[CGColor]?{
        guard let startColor = startColor, let endColor = endColor else {return nil}
        return [startColor.cgColor,endColor.cgColor]
    }
    
    @IBInspectable var startColor:UIColor?{
        didSet{
            //va a pedir a gradiete el color que obtenega la variable y pasara a colors
            gradientLayer.colors = cgColorGradient
        }
    }
    @IBInspectable var endColor:UIColor?{
        didSet{
            gradientLayer.colors = cgColorGradient
        }
    }
    @IBInspectable var startPoint : CGPoint =  CGPoint(x: 0.0, y:0.0){
        didSet{
            gradientLayer.startPoint =  startPoint
        }
    }
    
    @IBInspectable var endPoint : CGPoint =  CGPoint(x: 0.0, y:0.0){
        didSet{
            gradientLayer.endPoint =  endPoint
        }
    }
   
}

>>>>>>> deb509208e4cef92b8ed31ff54743cfecb453a56
