//
//  ViewController.swift
//  HeeHaw_iosApp
//
//  Created by shruti on 1/2/17.
//  Copyright © 2017 shrutiChapadia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var date = NSDate()
    let calendar = Calendar.current
    
    
    func gm(a:Int)->(String){
        switch a {
        case 1: return "Strength does not come from winning. Your struggles develop your strengths. When you go through hardships and decide not to surrender, that is strength"
        case 2: return "No one can persuade another to change. Each of us guards a gate of change that can only be opened from the inside. We can not open the gate of another, either by argument or by emotional appeal."
        case 3: return "There are two ways of exerting one’s strength: one is pushing down, the other is pulling up"
        case 4: return "All the adversity I’ve had in my life, all my troubles and obstacles, have strengthened me.... You may not realize it when it happens, but a kick in the teeth may be the best thing in the world for you."
        case 5: return "Life is Beautiful - Enjoy each and every moment of life"
        case 6: return "A truly strong person does not need the approval of others any more than a lion needs the approval of sheep."
        case 7: return "The best way to insure you achieve the greatest satisfation out of life is to behave intentionally. - Deborah Day"
        case 8: return "The meaning of life is to adventurously discover our gift. The purpose of life is joyfully share our gift with the world. - Robert John Cook"
        default: return "Love Unconditionally to each and everythings in this beautiful universe - Advait Sivanand"
        }
    }
    func jk(a:Int)->(String){
        switch a {
        case 1: return "Patient Doctor help me please, every time I drink a cup of coffee I get this intense stinging in my eye. Doctor I suggest you remove the spoon before drinking"
        case 2: return "The psychiatrist replies: We fill a bathtub with water and give the person a spoon, a cup and a bucket. Then we ask that person to empty the bathtub. The man smiles: Ah, I understand, if you are sane you would take the bucket. The Psychiatrist replies: No, a sane guy pulls the plug. Do you want a room with or without a balcony"
        case 3: return "Finally its last day of the class - We know you all are Glad for it -  Be happy and laugh - Have you laugh???"
        case 4: return "Joke4 will be displayed"
        case 5: return "Joke5 will be displayed"
        default: return "Laugh Laugh Laugh Laugh Laugh Ha Ha Ha Ha Ha Ha HeeHaw HeeHaw"
        }
    }
    
    @IBOutlet weak var DS: UITextView!
   
    @IBAction func GM(_ sender: Any) {
        let components = calendar.dateComponents([.year, .month, .day], from: date as Date)
        let day = components.day
        
        DS.text=("\(gm(a: day!))")

    }
    
    @IBAction func Jk(_ sender: Any) {
        let components = calendar.dateComponents([.year, .month, .day], from: date as Date)
        let day = components.day
        DS.text=("\(jk(a: day!))")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        assignbackground()
    }
    func assignbackground(){
        let background = UIImage(named: "season.jpg")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIViewContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubview(toBack: imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

