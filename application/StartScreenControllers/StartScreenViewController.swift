//
//  ViewController.swift
//  application
//
//  Created by Егорио on 25.09.2024.
//

import UIKit

class StartPageViewController: UIPageViewController, UIPageViewControllerDataSource {

    let pages: [UIViewController] = {
        let firstPage = FirstStartScreenViewController()
        let secondPage = SecondStartScreenViewController()
        let thirdPage = ThirdStartScreenViewController()
        return [firstPage, secondPage, thirdPage]
    }()

    init() {
        super.init(transitionStyle: .scroll, navigationOrientation: .vertical, options: nil)
        self.dataSource = self
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        if let firstVC = pages.first {
            setViewControllers([firstVC], direction: .forward, animated: false, completion: nil)
        }
    }

    // MARK: - DataSource Methods
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(where: { $0.isEqual(viewController) }), index > 0 else { return nil }
        return pages[index - 1]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(where: { $0.isEqual(viewController) }), index < (pages.count - 1) else { return nil }
        return pages[index + 1]
    }
}

extension UIViewController {
    func isEqual(_ viewController: UIViewController) -> Bool {
        return self === viewController  // Сравнение указателей на объект
    }
}
