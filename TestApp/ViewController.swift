//
//  ViewController.swift
//  TestApp
//
//  Created by Benoit on 16/06/2023.
//

import UIKit

class ViewController: UIViewController {
    
    // Celebrities array
    let celebrities = ["le Steve Jobs", "le Zinedine Zidane", "la Madonna", "le Karl Lagerfeld", "la Scarlett Johansson", "le Ellon Musk", "le Jean Dujardin", "le Gérard Depardieu", "la Afida Turner", "la Loana", "la Eve Angély", "le Michael Jackson", "le George Clooney", "la Julia Roberts", "la grande Ghislaine", "la Marie-Antoinette", "le Emmanuel Macron"]

    //  Activities array
    let activities = ["du dancefloor", "du barbecue", "de la surprise ratée", "des blagues relou", "de la raclette party", "de l'amicale des Pomplards", "de la tartiflette party", "de l'histoire interminable", "de la discothèque", "qui a 3 grammes en boîte de nuit", "qui n'en fout pas une ramée au bureau", "de la glandos party", "de la sieste à gogo", "de la soirée pizza" ]

    
    // Outlet that connect Main quote on screen
    @IBOutlet weak var quoteLabel: UILabel!
    

    // Button Action that changes quote text on click
    @IBAction func changeQuote(_ sender: Any) {
        
        // Random selection among celebrities
        let randomIndex1 = Int.random(in: 0..<celebrities.count)
        let celebrity = celebrities[randomIndex1]
        print(celebrity)

        // Random selection among activities
        let randomIndex2 = Int.random(in: 0..<activities.count)
        let activity = activities[randomIndex2]
        print(activity)

        // Quote construction & affectation
        let quote = "Tu es " + celebrity + " " + activity + " !"
        quoteLabel.text = quote

    }
}

