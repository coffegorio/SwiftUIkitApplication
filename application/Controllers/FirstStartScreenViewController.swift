//
//  PageContentViewController.swift
//  application
//
//  Created by Егорио on 25.09.2024.
//

import UIKit

class FirstStartScreenViewController: UIViewController {

    private let mainLabel = UILabel.createMainLabel(withText: "Создавайте заметки")
    private let secondaryLabel = UILabel.createSecondaryLabel(withText: "Оставайтесь организованными, создавая личные заметки для любых целей — будь то задачи на день, идеи для проектов или просто мысли, которые нужно зафиксировать. Вы можете добавлять заголовки, описания и важные метки, чтобы легко находить нужную информацию. Все ваши заметки всегда будут под рукой.")
    private let imageView = UIImageView.createImageView(withImageName: "todo")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLayout()
    }

    private func setupLayout() {
        view.addSubview(mainLabel)
        view.addSubview(secondaryLabel)
        view.addSubview(imageView)
        
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height

        NSLayoutConstraint.activate([
            // Устанавливаем отступ сверху для mainLabel относительно высоты экрана
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: screenHeight * 0.02),  // 10% высоты экрана
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            mainLabel.widthAnchor.constraint(equalToConstant: screenWidth - 40),  // Ширина экрана минус отступы

            // Устанавливаем отступ для secondaryLabel относительно высоты экрана
            secondaryLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: screenHeight * 0.03),  // 3% высоты экрана
            secondaryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            secondaryLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            secondaryLabel.widthAnchor.constraint(equalToConstant: screenWidth - 40),  // Ширина экрана минус отступы

            // Устанавливаем размеры imageView относительно ширины и высоты экрана
            imageView.topAnchor.constraint(equalTo: secondaryLabel.bottomAnchor, constant: screenHeight * 0.05),  // 5% высоты экрана
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: screenWidth * 0.8),  // 60% ширины экрана
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor),
        ])
    }
}
