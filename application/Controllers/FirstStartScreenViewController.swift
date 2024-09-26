//
//  PageContentViewController.swift
//  application
//
//  Created by Егорио on 25.09.2024.
//

import UIKit

class PageContentViewController: UIViewController {

    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Создавайте заметки и сохраняйте важные моменты"
        label.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        label.textAlignment = .left
        label.numberOfLines = 0 // Позволяет тексту занимать несколько строк
        label.lineBreakMode = .byWordWrapping // Переносит текст по словам
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let secondaryLabel: UILabel = {
        let label = UILabel()
        label.text = "Используйте наше приложение для записи идей, планирования задач и хранения всего, что имеет значение. С простым и удобным интерфейсом вы можете легко добавлять новые заметки, редактировать их и просматривать важные события. Организуйте свою жизнь и делайте больше, сохраняя все нужные вещи в одном месте."
        label.font = UIFont.systemFont(ofSize: 21, weight: .medium)
        label.textColor = .gray
        label.numberOfLines = 0 // Позволяет тексту занимать несколько строк
        label.lineBreakMode = .byWordWrapping // Переносит текст по словам
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "todo")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayout()
    }
    
    private func setupLayout() {
        view.addSubview(mainLabel)
        view.addSubview(secondaryLabel)
        view.addSubview(imageView)
        
        NSLayoutConstraint.activate([
                // Ограничиваем левый и правый края mainLabel
                mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
                mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                mainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                // Ограничения для secondaryLabel
                secondaryLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 20),
                secondaryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                secondaryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                // Ограничения для imageView
                imageView.topAnchor.constraint(equalTo: secondaryLabel.bottomAnchor, constant: 40),
                imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                imageView.heightAnchor.constraint(equalToConstant: 300),
                imageView.widthAnchor.constraint(equalToConstant: 300)
            ])

    }
}
