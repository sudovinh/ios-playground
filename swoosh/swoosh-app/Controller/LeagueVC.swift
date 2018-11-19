//
//  LeagueVC.swift
//  swoosh-app
//
//  Created by mrsudo on 2/14/18.
//  Copyright © 2018 sudovinh. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
       
    }
    
    // Mens Button
    @IBAction func onMensTapped(_ sender: Any) {
        selectedLeague(leagueType: "mens")
    }
    // Womens Button
    @IBAction func onWomensTapped(_ sender: Any) {
        selectedLeague(leagueType: "womens")
    }
    // Co-Ed Button
    @IBAction func onCoEdTapped(_ sender: Any) {
        selectedLeague(leagueType: "co-ed")
    }
    
   func selectedLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    
    // Back Button
    @IBAction func unwindLeage(unwindSegue: UIStoryboardSegue) {
        
    }
    
    // Next Button
    @IBAction func nextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player 
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    

}
