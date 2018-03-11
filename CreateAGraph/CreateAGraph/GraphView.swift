//
//  GraphView.swift
//  CreateAGraph
//
//  Created by Sara Ahmad on 3/10/18.
//  Copyright © 2018 Sara Ahmad. All rights reserved.
//

import UIKit

@IBDesignable class GraphView: UIView {
    
    var temps = [Int]()
    var hours = [String]()
    
    private struct Constants {
        static let cornerRadiusSize = CGSize(width: 8.0, height: 8.0)
        static let margin: CGFloat = 20.0
        static let topBorder: CGFloat = 60
        static let bottomBorder: CGFloat = 50
        static let colorAlpha: CGFloat = 0.3
        static let circleDiameter: CGFloat = 5.0
    }
    
//    init(frame: CGRect, temps: [Double]) {
//        //subclassing, you cannot create something without it existing, you have to make it exist in order to borrow from it
//        super.init(frame: frame)
//        self.temps = temps
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    // 1
    @IBInspectable var startColor: UIColor = .red
    @IBInspectable var endColor: UIColor = .green
    
    override func draw(_ rect: CGRect) {
        
        let width = rect.width
        let height = rect.height
        
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: .allCorners,
                                cornerRadii: Constants.cornerRadiusSize)
        path.addClip()
        
        // 2
        let context = UIGraphicsGetCurrentContext()!
        let colors = [startColor.cgColor, endColor.cgColor]
        
        // 3
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        
        // 4
        let colorLocations: [CGFloat] = [0.0, 1.0]
        
        // 5
        let gradient = CGGradient(colorsSpace: colorSpace,
                                  colors: colors as CFArray,
                                  locations: colorLocations)!
        
        // 6
        let startPoint = CGPoint.zero
        let endPoint = CGPoint(x: 0, y: bounds.height)
        context.drawLinearGradient(gradient,
                                   start: startPoint,
                                   end: endPoint,
                                   options: [])
        
        //calculate the x point - THESE NEED TO BE ALL THE HOURS
        
        
        ///LOOK HERE FOR THE X POINTS HERE!!!!!!!!!!!!!!!!!!
        
        //GET THE X POINTS
        
//        let margin = Constants.margin
//        let graphWidth = width - margin * 2 - 4
//        let columnXPoint = { (column: Int) -> CGFloat in
//            //Calculate the gap between points
//            let spacing = graphWidth / CGFloat(self.graphPoints.count - 1)
//            return CGFloat(column) * spacing + margin + 2
//        }
        
        
        // calculate the y point
        //THIS WORKS
//        let topBorder = Constants.topBorder
//        let bottomBorder = Constants.bottomBorder
//        let graphHeight = height - topBorder - bottomBorder
//        let maxValue = self.temps.max()!
//        let columnYPoint = { (graphPoint: Int) -> CGFloat in
//            let y = CGFloat(graphPoint) / CGFloat(maxValue) * graphHeight
//            return graphHeight + topBorder - y // Flip the graph
//        }
        
        
//        let margin = Constants.margin
//        let graphWidth = width - margin * 2 - 4
//        let columnXPoint = { (column: Int) -> CGFloat in
//            //Calculate the gap between points
//            let spacing = graphWidth / CGFloat(self.temps.count - 1)
//            return CGFloat(column) * spacing + margin + 2
//        }
        
        //y axis of hours - TEMPERATURES NEED TO BE CAST AS INTS, DON'T FORGET
        
        
        //LOOK HERE FOR THE Y POINTS HERE
        
//        let topBorder = Constants.topBorder
//        let bottomBorder = Constants.bottomBorder
//        let graphHeight = height - topBorder - bottomBorder
//        let maxValue = self.temps.max()!
//        let columnYPoint = {(temps: Int) -> CGFloat in
//            let y = CGFloat(temps) / CGFloat(maxValue) * graphHeight
//            return graphHeight + topBorder - y // Flip the graph
//        }
        
        // draw the line graph
        
//        UIColor.white.setFill()
//        UIColor.white.setStroke()
//
//        // set up the points line
//        let graphPath = UIBezierPath()
//
//        // go to start of line
//        graphPath.move(to: CGPoint(x: columnXPoint(0), y: columnYPoint(self.temps[0])))
//
//        // add points for each item in the graphPoints array
//        // at the correct (x, y) for the point
//        for i in 1..<self.temps.count {
//            let nextPoint = CGPoint(x: columnXPoint(i), y: columnYPoint(self.temps[i]))
//            graphPath.addLine(to: nextPoint)
//        }
        
        //graphPath.stroke()
    }
}
