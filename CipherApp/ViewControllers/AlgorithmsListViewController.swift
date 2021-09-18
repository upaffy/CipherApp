//
//  AlgorithmsListViewController.swift
//  CipherApp
//
//  Created by Pavlentiy on 18.09.2021.
//

import UIKit

class AlgorithmsListViewController: UITableViewController {
    let algorithmList = Algorithm.getAlgorithms()
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        algorithmList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AlgorithmType", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = algorithmList[indexPath.row].name
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            performSegue(withIdentifier: "GenerateKeyPairSegue", sender: nil)
        } else {
            performSegue(withIdentifier: "StartEncryptionSegue", sender: nil)
        }
    }
}
