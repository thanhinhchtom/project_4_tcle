//
//  Task.swift
//  Photo_Scavenger
//
//  Created by Chí Thành Lê on 2/18/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Task 1",
                 description: "Description for task 1"),
            Task(title: "Take 2",
                 description: "Description for task 2"),
            Task(title: "Task 3",
                 description: "Description for task 3"),
            Task(title: "Task 4",
                 description: "Description for task 4"),
            Task(title: "Task 5",
                 description: "Description for task 5")
        ]
    }
}

