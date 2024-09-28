//
//  SecondStartScreenViewController.swift
//  application
//
//  Created by Егорио on 25.09.2024.
//

import UIKit

class SecondStartScreenViewController: BaseStartScreenViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Передаем текст и изображение для второго экрана
        configure(
            mainText: "Делитесь с сообществом",
            secondaryText: "Вдохновляйте других, делясь своими успехами и достижениями с сообществом. Публикуйте заметки, связанные с вашими целями, оставляйте советы или просто делитесь моментами, которые могут быть полезны другим пользователям. Открытые публикации могут мотивировать вас и других к новым свершениям.",
            imageName: "community"
        )
    }
}
