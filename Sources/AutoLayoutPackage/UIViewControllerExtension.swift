//
//  UIViewControllerExtension.swift
//
//  Includes Helper Functions to All UIViewControllers
//
//  Created by malulleybovo on 03/03/20.
//  Copyright © 2020 Arthur Malulley B. de O.
//

import UIKit

struct AssociatedKeys {
    static var trackedContraints: [String : NSLayoutConstraint] = [:]
}

extension UIViewController {
    
    private var trackedContraints : [String : NSLayoutConstraint]? {
        get {
            guard let value = objc_getAssociatedObject(self, &AssociatedKeys.trackedContraints) as? [String : NSLayoutConstraint] else {
                return nil
            }
            return value
        }
        set(newValue) {
            objc_setAssociatedObject(self, &AssociatedKeys.trackedContraints, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    /// Activates a single constraint.
    ///
    /// - Parameter constraint: The constraint to activate
    func addConstraints(_ constraint: NSLayoutConstraint) {
        NSLayoutConstraint.activate([constraint])
    }
    
    /// Activates a list of constraints.
    ///
    /// - Parameter constraint: The constraints to activate
    func addConstraints(_ constraints: [NSLayoutConstraint]) {
        NSLayoutConstraint.activate(constraints)
    }
    
    /// Activates and tracks a list of constraints. Constraints are tracked by unique String identifiers. Constraints with identifiers already taken are ignored (not activated).
    ///
    /// - Parameter constraint: The constraints to activate and track
    func addTrackedConstraints(_ trackedContraints: [String : NSLayoutConstraint]) {
        if self.trackedContraints == nil {
            self.trackedContraints = [:]
        }
        for item in trackedContraints {
            var constraints: [NSLayoutConstraint] = []
            if self.trackedContraints?.index(forKey: item.key) == nil {
                self.trackedContraints?[item.key] = item.value
                constraints.append(item.value)
            }
            addConstraints(constraints)
        }
    }
    
    /// Gets the constraints being tracked with the given identifier (if any).
    ///
    /// - Parameter key: The identifier
    ///
    /// - Returns: The tracked constraint if found or nil if not found
    func getTrackedConstraint(forKey key: String) -> NSLayoutConstraint? {
        if self.trackedContraints?.index(forKey: key) != nil {
            return self.trackedContraints?[key]
        }
        return nil
    }
    
}
