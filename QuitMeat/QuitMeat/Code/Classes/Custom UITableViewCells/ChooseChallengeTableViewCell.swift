//
//  ChooseChallengeTableViewCell.swift
//  QuitMeat
//
//  Custom subclass of UITableViewCell for representing a challenge.
//
//  Created by Melle Meewis on 23/01/2019.
//  Copyright © 2019 Melle Meewis. All rights reserved.
//

import UIKit

//  Custom subclass of UITableViewCell
class ChooseChallengeTableViewCell: UITableViewCell {
    @IBOutlet weak var challengeNameLabel: UILabel!
    @IBOutlet weak var challengeDescriptionLabel: UILabel!
    @IBOutlet weak var creationDateLabel: UILabel!
    @IBOutlet weak var createdByLabel: UILabel!
    @IBOutlet weak var weeksLabel: UILabel!
    @IBOutlet weak var challengeProgressBar: UIProgressView!
    @IBOutlet weak var pressToCreateLabel: UILabel!
}
