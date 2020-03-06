//
//  UIViewExtension.swift
//
//  Includes Auto Layout Helper Functions to All UIView
//
//  Created by malulleybovo on 03/03/20.
//  Copyright © 2020 Arthur Malulley B. de O.
//

import UIKit

extension UIView {
    
    // MARK: Basic Alignments
    /// Gets the constraint to align the top of this view with the top of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add below the top of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignTopOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.topAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.topAnchor : view.topAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the bottom of this view with the bottom of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add above the bottom of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignBottomOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.bottomAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.bottomAnchor : view.bottomAnchor, constant: -padding)
    }
    
    /// Gets the constraint to align the left side of this view with the left side of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the right of the left side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignLeftOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.leadingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.leadingAnchor : view.leadingAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the right side of this view with the right side of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the left of the right side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignRightOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint {
        return self.trailingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.trailingAnchor : view.trailingAnchor, constant: -padding)
    }
    
    /// Gets the constraint to align the bottom of this view with the top of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add above the top of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignAbove(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.bottomAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.topAnchor : view.topAnchor, constant: -padding)
    }
    
    /// Gets the constraint to align the top of this view with the bottom of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add below the bottom of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignBelow(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.topAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.bottomAnchor : view.bottomAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the right side of this view with the left side of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the left of the left side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignBefore(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.trailingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.leadingAnchor : view.leadingAnchor, constant: -padding)
    }
    
    /// Gets the constraint to align the left side of this view with the right side of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the right of the right side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignAfter(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.leadingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.trailingAnchor : view.trailingAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the horizontal center of this view with the horizontal center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignCenterXOf(_ view: UIView, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.centerXAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerXAnchor : view.centerXAnchor)
    }
    
    /// Gets the constraint to align the vertical center of this view with the vertical center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignCenterYOf(_ view: UIView, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.centerYAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerYAnchor : view.centerYAnchor)
    }
    
    /// Gets the constraints to align this view at the center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignCenterOf(_ view: UIView, withinMargins: Bool = false) -> [NSLayoutConstraint]  {
        return [
            self.alignCenterXOf(view, withinMargins: withinMargins),
            self.alignCenterYOf(view, withinMargins: withinMargins)
        ]
    }
    
    /// Gets the constraint to align the top of this view to the center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add below the center of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignTopToCenterOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.topAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerYAnchor : view.centerYAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the bottom of this view to the center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add above the center of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignBottomToCenterOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.bottomAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerYAnchor : view.centerYAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the left side of this view to the center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the right of the center of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignLeftToCenterOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.leadingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerXAnchor : view.centerXAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the right side of this view to the center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the left of the center of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    func alignRightToCenterOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.trailingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerXAnchor : view.centerXAnchor, constant: -padding)
    }
    
    /// Gets the constraint to set the width of this view to some value
    ///
    /// - Parameter constant: The width
    ///
    /// - Returns: The constraint to achieve the alignment
    func setWidthTo(_ constant: CGFloat) -> NSLayoutConstraint {
        return self.widthAnchor.constraint(equalToConstant: constant)
    }
    
    /// Gets the constraint to set the height of this view to some value
    ///
    /// - Parameter constant: The height
    ///
    /// - Returns: The constraint to achieve the alignment
    func setHeightTo(_ constant: CGFloat) -> NSLayoutConstraint {
        return self.heightAnchor.constraint(equalToConstant: constant)
    }
    
    /// Gets the constraints to align the width of this view with the width of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to remove from the sides in order to shrink the width
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignWidthOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignLeftOf(view, padding: padding, withinMargins: withinMargins),
            self.alignRightOf(view, padding: padding, withinMargins: withinMargins)
        ]
    }
    
    /// Gets the constraints to align the height of this view with the height of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to remove from the top and bottom in order to shrink the height
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignHeightOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignTopOf(view, padding: padding, withinMargins: withinMargins),
            self.alignBottomOf(view, padding: padding, withinMargins: withinMargins)
        ]
    }
    
    // MARK: Complex Alignments (Between)
    /// Gets the constraints to align this view between two views
    ///
    /// - Parameter above: The view which this view will go above of
    /// - Parameter below: The view which this view will go below of
    /// - Parameter padding: The amount of space to insert in between the views
    /// - Parameter withinMargins: Whether to align based on the margins of the other views of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignBetween(above aboveView: UIView, below belowView: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignAbove(aboveView, padding: padding, withinMargins: withinMargins),
            self.alignBelow(belowView, padding: padding, withinMargins: withinMargins)
        ]
    }
    
    /// Gets the constraints to align this view between two views
    ///
    /// - Parameter before: The view which this view will go before of
    /// - Parameter after: The view which this view will go after of
    /// - Parameter padding: The amount of space to insert in between the views
    /// - Parameter withinMargins: Whether to align based on the margins of the other views of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignBetween(before beforeView: UIView, after afterView: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignBefore(beforeView, padding: padding, withinMargins: withinMargins),
            self.alignAfter(afterView, padding: padding, withinMargins: withinMargins)
        ]
    }
    
    // MARK: Complex Alignments (Corners)
    /// Gets the constraints to align the top left corner of this view with the top left corner of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add to the right of the left side of the other view
    /// - Parameter vertPadding: The amount of space to add below the top of the other view
    /// - Parameter withinHorizMargins: Whether to align only the left side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignTopLeftOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignTopOf(view, padding: vertPadding, withinMargins: withinMargins || withinVertMargins),
            self.alignLeftOf(view, padding: horizPadding, withinMargins: withinMargins || withinHorizMargins)
        ]
    }
    
    /// Gets the constraints to align the top right corner of this view with the top right corner of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add to the left of the right side of the other view
    /// - Parameter vertPadding: The amount of space to add below the top of the other view
    /// - Parameter withinHorizMargins: Whether to align only the right side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignTopRightOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignTopOf(view, padding: vertPadding, withinMargins: withinMargins || withinVertMargins),
            self.alignRightOf(view, padding: horizPadding, withinMargins: withinMargins || withinHorizMargins)
        ]
    }
    
    /// Gets the constraints to align the bottom left corner of this view with the bottom left corner of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add to the right of the left side of the other view
    /// - Parameter vertPadding: The amount of space to add above the bottom of the other view
    /// - Parameter withinHorizMargins: Whether to align only the left side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignBottomLeftOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignBottomOf(view, padding: vertPadding, withinMargins: withinMargins || withinVertMargins),
            self.alignLeftOf(view, padding: horizPadding, withinMargins: withinMargins || withinHorizMargins)
        ]
    }
    
    /// Gets the constraints to align the bottom right corner of this view with the bottom right corner of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add to the left of the right side of the other view
    /// - Parameter vertPadding: The amount of space to add above the bottom of the other view
    /// - Parameter withinHorizMargins: Whether to align only the right side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignBottomRightOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignBottomOf(view, padding: vertPadding, withinMargins: withinMargins || withinVertMargins),
            self.alignRightOf(view, padding: horizPadding, withinMargins: withinMargins || withinHorizMargins)
        ]
    }
    
    /// Gets the constraints to align the bottom right corner of this view with the top left corner of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add to the left of the left side of the other view
    /// - Parameter vertPadding: The amount of space to add above the top of the other view
    /// - Parameter withinHorizMargins: Whether to align only the right side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignAboveAndBefore(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignAbove(view, padding: vertPadding, withinMargins: withinMargins || withinVertMargins),
            self.alignBefore(view, padding: horizPadding, withinMargins: withinMargins || withinHorizMargins)
        ]
    }
    
    /// Gets the constraints to align the bottom left corner of this view with the top right corner of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add to the right of the right side of the other view
    /// - Parameter vertPadding: The amount of space to add above the top of the other view
    /// - Parameter withinHorizMargins: Whether to align only the left side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignAboveAndAfter(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignAbove(view, padding: vertPadding, withinMargins: withinMargins || withinVertMargins),
            self.alignAfter(view, padding: horizPadding, withinMargins: withinMargins || withinHorizMargins)
        ]
    }
    
    /// Gets the constraints to align the top right corner of this view with the bottom left corner of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add to the left of the left side of the other view
    /// - Parameter vertPadding: The amount of space to add below the bottom of the other view
    /// - Parameter withinHorizMargins: Whether to align only the right side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignBelowAndBefore(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignBelow(view, padding: vertPadding, withinMargins: withinMargins || withinVertMargins),
            self.alignBefore(view, padding: horizPadding, withinMargins: withinMargins || withinHorizMargins)
        ]
    }
    
    /// Gets the constraints to align the top left corner of this view with the bottom right corner of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add to the right of the right side of the other view
    /// - Parameter vertPadding: The amount of space to add below the bottom of the other view
    /// - Parameter withinHorizMargins: Whether to align only the left side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignBelowAndAfter(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignBelow(view, padding: vertPadding, withinMargins: withinMargins || withinVertMargins),
            self.alignAfter(view, padding: horizPadding, withinMargins: withinMargins || withinHorizMargins)
        ]
    }
    
    // MARK: Complex Alignments (Within Area)
    /// Gets the constraints to align this view within the bounds of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to shrink this view by within the bounds of the other view
    /// - Parameter withinHorizMargins: Whether to align only the left and right sides based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top and bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignWithin(_ view: UIView, padding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return alignWithin(view, horizPadding: padding, vertPadding: padding, withinHorizMargins: withinHorizMargins, withinVertMargins: withinVertMargins, withinMargins: withinMargins)
    }
    
    /// Gets the constraints to align this view within the bounds of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to shrink the height of this view by within the bounds of the other view
    /// - Parameter vertPadding: The amount of space to shrink the width of this view by within the bounds of the other view
    /// - Parameter withinHorizMargins: Whether to align only the left and right sides based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top and bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignWithin(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignTopOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignBottomOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignLeftOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins),
            self.alignRightOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins)
        ]
    }
    
    /// Gets the constraints to align this view within the top bounds of some other view while maintaining the same width.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add below the top of the other view
    /// - Parameter vertPadding: The amount of space to shrink the width of this view by within the bounds of the other view
    /// - Parameter withinHorizMargins: Whether to align only the left and right sides based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top and bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignWithinTopOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignTopOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignLeftOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins),
            self.alignRightOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins)
        ]
    }
    
    /// Gets the constraints to align this view within the bottom bounds of some other view while maintaining the same width.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add above the bottom of the other view
    /// - Parameter vertPadding: The amount of space to shrink the width of this view by
    /// - Parameter withinHorizMargins: Whether to align only the left and right sides based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignWithinBottomOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignBottomOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignLeftOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins),
            self.alignRightOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins)
        ]
    }
    
    /// Gets the constraints to align this view within the left side bounds of some other view while maintaining the same height.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to shrink the height of this view by
    /// - Parameter vertPadding: The amount of space to add to the right of the left side of the other view
    /// - Parameter withinHorizMargins: Whether to align only the left side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top and bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignWithinLeftOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignTopOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignBottomOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignLeftOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins)
        ]
    }
    
    /// Gets the constraints to align this view within the right side bounds of some other view while maintaining the same height.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to shrink the height of this view by
    /// - Parameter vertPadding: The amount of space to add to the left of the right side of the other view
    /// - Parameter withinHorizMargins: Whether to align only the right side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top and bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignWithinRightOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignTopOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignBottomOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignRightOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins)
        ]
    }
    
    // MARK: Complex Alignments (Centered Within)
    /// Gets the constraints to horizontally center the top of this view at the top of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add below the top of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignCenterTopOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignTopOf(view, padding: padding, withinMargins: withinMargins),
            self.alignCenterXOf(view, withinMargins: withinMargins)
        ]
    }
    
    /// Gets the constraints to horizontally center the bottom of this view at the bottom of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add above the bottom of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignCenterBottomOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignBottomOf(view, padding: padding, withinMargins: withinMargins),
            self.alignCenterXOf(view, withinMargins: withinMargins)
        ]
    }
    
    /// Gets the constraints to vertically center the left side of this view on the left side of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the right of the left side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignCenterLeftOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignLeftOf(view, padding: padding, withinMargins: withinMargins),
            self.alignCenterYOf(view, withinMargins: withinMargins)
        ]
    }
    
    /// Gets the constraints to vertically center the right side of this view on the right side of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the left of the right side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignCenterRightOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignRightOf(view, padding: padding, withinMargins: withinMargins),
            self.alignCenterYOf(view, withinMargins: withinMargins)
        ]
    }
    
    // MARK: Complex Alignments (Appended Next To)
    /// Gets the constraints to align this view above some other view while maintaining the same width.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add above the top of the other view
    /// - Parameter vertPadding: The amount of space to shrink the width of this view by
    /// - Parameter withinHorizMargins: Whether to align only the left and right sides based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignAppendedAbove(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignAbove(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignLeftOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins),
            self.alignRightOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins)
        ]
    }
    
    /// Gets the constraints to align this view below some other view while maintaining the same width.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to add below the bottom of the other view
    /// - Parameter vertPadding: The amount of space to shrink the width of this view by
    /// - Parameter withinHorizMargins: Whether to align only the left and right sides based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignAppendedBelow(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignBelow(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignLeftOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins),
            self.alignRightOf(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins)
        ]
    }
    
    /// Gets the constraints to align this view to the left of some other view while maintaining the same height.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to shrink the height of this view by
    /// - Parameter vertPadding: The amount of space to add to the left of the left side of the other view
    /// - Parameter withinHorizMargins: Whether to align only the left side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top and bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignAppendedBefore(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignTopOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignBottomOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignBefore(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins)
        ]
    }
    
    /// Gets the constraints to align this view to the right of some other view while maintaining the same height.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter horizPadding: The amount of space to shrink the height of this view by
    /// - Parameter vertPadding: The amount of space to add to the right of the right side of the other view
    /// - Parameter withinHorizMargins: Whether to align only the right side based on the margins of the other view of not
    /// - Parameter withinVertMargins: Whether to align only the top and bottom based on the margins of the other view of not
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignAppendedAfter(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignTopOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignBottomOf(view, padding: vertPadding, withinMargins: withinVertMargins || withinMargins),
            self.alignAfter(view, padding: horizPadding, withinMargins: withinHorizMargins || withinMargins)
        ]
    }
    
    // MARK: Complex Alignments (Centered Next To)
    /// Gets the constraints to horizontally center the bottom of this view at the top of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add above the top of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignCenterAbove(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignAbove(view, padding: padding, withinMargins: withinMargins),
            self.alignCenterXOf(view, withinMargins: withinMargins)
        ]
    }
    
    /// Gets the constraints to horizontally center the top of this view at the bottom of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add below the bottom of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignCenterBelow(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignBelow(view, padding: padding, withinMargins: withinMargins),
            self.alignCenterXOf(view, withinMargins: withinMargins)
        ]
    }
    
    /// Gets the constraints to vertically center the right side of this view on the left side of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the left of the left side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignCenterBefore(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignBefore(view, padding: padding, withinMargins: withinMargins),
            self.alignCenterYOf(view, withinMargins: withinMargins)
        ]
    }
    
    /// Gets the constraints to vertically center the left side of this view on the right side of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the right of the right side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    func alignCenterAfter(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignAfter(view, padding: padding, withinMargins: withinMargins),
            self.alignCenterYOf(view, withinMargins: withinMargins)
        ]
    }
    
}
