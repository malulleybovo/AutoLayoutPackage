//
//  UIViewControllerExtension.swift
//
//  Includes Helper Functions to All UIViewControllers
//
//  Created by malulleybovo on 03/03/20.
//
//  @author malulleybovo (since 2020)
//  @license GNU General Public License v3.0
//
//  @licstart  The following is the entire license notice for the
//   swift code in this page.
//
//  Copyright © 2020  Arthur Malulley B. de O.
//
//
//  The swift code in this page is free software: you can
//  redistribute it and/or modify it under the terms of the GNU
//  General Public License (GNU GPL) as published by the Free Software
//  Foundation, either version 3 of the License, or (at your option)
//  any later version.  The code is distributed WITHOUT ANY WARRANTY;
//  without even the implied warranty of MERCHANTABILITY or FITNESS
//  FOR A PARTICULAR PURPOSE.  See the GNU GPL for more details.
//
//  As additional permission under GNU GPL version 3 section 7, you
//  may distribute non-source (e.g., minimized or compacted) forms of
//  that code without the copy of the GNU GPL normally required by
//  section 4, provided you include this license notice and a URL
//  through which recipients can access the Corresponding Source.
//
//  @licend  The above is the entire license notice
//  for the swift code in this page.
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
    public func addConstraints(_ constraint: NSLayoutConstraint) {
        NSLayoutConstraint.activate([constraint])
    }
    
    /// Activates a list of constraints.
    ///
    /// - Parameter constraint: The constraints to activate
    public func addConstraints(_ constraints: [NSLayoutConstraint]) {
        NSLayoutConstraint.activate(constraints)
    }
    
    /// Activates and tracks a list of constraints. Constraints are tracked by unique String identifiers. Constraints with identifiers already taken are ignored (not activated).
    ///
    /// - Parameter constraint: The constraints to activate and track
    public func addTrackedConstraints(_ trackedContraints: [String : NSLayoutConstraint]) {
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
    public func getTrackedConstraint(forKey key: String) -> NSLayoutConstraint? {
        if self.trackedContraints?.index(forKey: key) != nil {
            return self.trackedContraints?[key]
        }
        return nil
    }
    
}
