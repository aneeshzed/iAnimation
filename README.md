# iAnimation

Simple Layer Animation like flash and pulsate

Simple use 

//Here Two type of animation defined flash and pulse

     @IBOutlet weak var bulb:UIButton!
     
        bulb.layer.iAnimateWith(style: .flash, duration: 0.3) { (sucess) in
            //After Completing Animation
            print(sucess!)
        }

