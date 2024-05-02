//
//  ViewController.swift
//  Core Data Todo List
//
//  Created by olivier geiger on 02/05/2024.
//

import UIKit

class ViewController: UITableViewController {
    
    // MARK: - Properties
    let reuseID = "TODO_CELL_ID"
    
    // MARK: - UI Declarations
    
    // MARK: - LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        setupNavigationItem()
        setupTableView()
    }
    
    
}

// MARK: - @objc Functions
extension ViewController {
    
    @objc private func handleAdd() {
        let alert = UIAlertController(title: "Fonctionnalité non disponible", message: "Cette fonctionnalité n'est pas encore disponible.", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
        
        
    }
}

// MARK: - Helpers
extension ViewController {
    
    private func setup() {
        view.backgroundColor = .systemBackground
        title = "Todo List"
    }
    
    private func setupNavigationItem() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "plus"), style: .plain, target: self, action: #selector(handleAdd))
    }
    
    private func setupTableView() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: reuseID)
        tableView.backgroundColor = UIColor.peachColor
    }
}

// MARK: - DataSource and Delegate
extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseID, for: indexPath)
        
        cell.textLabel?.text = "Cell number \([indexPath.row])"
        cell.backgroundColor = UIColor.lightPink
        
        let disclosureIndicator = UIImageView(image: UIImage(systemName: "chevron.right")?.withRenderingMode(.alwaysTemplate))
        disclosureIndicator.tintColor = UIColor.lightPurple
        cell.accessoryView = disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

