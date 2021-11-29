//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Diego Gonzalez on 11/11/21.
//

import UIKit

class ViewController: UIViewController
{
    //Delcare Outlets and Variables
    var images:[UIImage] = []
    var userChoice = 1
    
    @IBOutlet weak var computerImage: UIImageView!
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet var pictureCollection: [UIImageView]!
    @IBOutlet weak var winnerLabel: UILabel!
    
    
    @IBOutlet weak var horizontalStackView: UIStackView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let rockImage = UIKit.UIImage(named:"rockPicture")
        let paperImage = UIKit.UIImage(named:"paperPicture")
        let scissorsImage = UIKit.UIImage(named:"scissorsPicture")
        images = [rockImage, paperImage, scissorsImage] as! [UIKit.UIImage]
        
        
    }
    let UIImage = "rockPicture"
   //Need more!
    @IBAction func printOk(_ sender: Any)
    {
        print("Ok")
        let selectedPoint = (sender as! AnyObject) .location (in:horizontalStackView)
       
        for label in pictureCollection
        {
            if label.frame.contains(selectedPoint)
            {
                userChoice = label.tag
                playerImage.image = images[userChoice]
                
              
                
            }
        }
        
        //Assign Computer Choice Randomly
        let randomNum = Int.random(in: 0...2)
        computerImage.image = images [randomNum]
        var winner = userChoice == randomNum ? "its a tie" : ((userChoice + 2) % 3) == randomNum ? "You Win!" : "You Lose!"
        winnerLabel.text = winner
            
    

          
     
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    
    

}

