//
//  ViewController.swift
//  Extension
//
//  Created by Münevver Elif Ay on 16.02.2024.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let word = "kırık"
        if word.isPalindrome() {
            print("Word is palindrome")
        } else {
            print("Word is not palindrome")
        }
        
        let number = 13
        if number.checkPrimeNumber() {
            print("\(number) is a prime number")
        } else {
            print("\(number) is not a prime number")
        }
        
        var myBool = true
        myBool.toggle()
        print(myBool)
        
        let calendar = Calendar.current
        let myStartDate = Date()
        let dateComponents = DateComponents(year: 2024, month: 12, day: 10, hour: 9, minute: 30, second: 0)

        guard let myEndDate = calendar.date(from: dateComponents) else {
            fatalError("Invalid end date components")
        }
        
        let numberOfDays = calendar.numberOfDaysBetween(myStartDate, and: myEndDate)
        print("Gün sayısı: \(numberOfDays)")
        setupUI()
    }
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.masksToBounds = true
        imageView.configure(bgColor: nil, image: .neonAppsLogo, cornerRadius: 10, contentMode: .scaleAspectFill)
        return imageView
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.lineBreakMode = .byWordWrapping
        label.configure(bgColor: .clear, text: "Neon Apps", cornerRadius: 10, textAlignment: .center, numberOfLines: 0)
        return label
    }()
    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.masksToBounds = true
        button.configure(bgColor: .systemBlue, text: "button", image: nil, cornerRadius: 10)
        return button
    }()
    
    private func setupUI() {
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: imageView.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: imageView.trailingAnchor),
            
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            button.leadingAnchor.constraint(equalTo: label.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: label.trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
