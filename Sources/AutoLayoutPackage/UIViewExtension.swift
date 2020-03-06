//
//  UIViewExtension.swift
//
//  Includes Auto Layout Helper Functions to All UIView
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

extension UIView {
    
    // MARK: Basic Alignments
    /// Gets the constraint to align the top of this view with the top of some other view.
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add below the top of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignTopOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.topAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.topAnchor : view.topAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the bottom of this view with the bottom of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add above the bottom of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignBottomOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.bottomAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.bottomAnchor : view.bottomAnchor, constant: -padding)
    }
    
    /// Gets the constraint to align the left side of this view with the left side of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the right of the left side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignLeftOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.leadingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.leadingAnchor : view.leadingAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the right side of this view with the right side of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the left of the right side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignRightOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint {
        return self.trailingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.trailingAnchor : view.trailingAnchor, constant: -padding)
    }
    
    /// Gets the constraint to align the bottom of this view with the top of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add above the top of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignAbove(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.bottomAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.topAnchor : view.topAnchor, constant: -padding)
    }
    
    /// Gets the constraint to align the top of this view with the bottom of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add below the bottom of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignBelow(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.topAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.bottomAnchor : view.bottomAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the right side of this view with the left side of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the left of the left side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignBefore(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.trailingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.leadingAnchor : view.leadingAnchor, constant: -padding)
    }
    
    /// Gets the constraint to align the left side of this view with the right side of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the right of the right side of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignAfter(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.leadingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.trailingAnchor : view.trailingAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the horizontal center of this view with the horizontal center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignCenterXOf(_ view: UIView, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.centerXAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerXAnchor : view.centerXAnchor)
    }
    
    /// Gets the constraint to align the vertical center of this view with the vertical center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignCenterYOf(_ view: UIView, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.centerYAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerYAnchor : view.centerYAnchor)
    }
    
    /// Gets the constraints to align this view at the center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    public func alignCenterOf(_ view: UIView, withinMargins: Bool = false) -> [NSLayoutConstraint]  {
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
    public func alignTopToCenterOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.topAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerYAnchor : view.centerYAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the bottom of this view to the center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add above the center of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignBottomToCenterOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.bottomAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerYAnchor : view.centerYAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the left side of this view to the center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the right of the center of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignLeftToCenterOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.leadingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerXAnchor : view.centerXAnchor, constant: padding)
    }
    
    /// Gets the constraint to align the right side of this view to the center of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to add to the left of the center of the other view
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraint to achieve the alignment
    public func alignRightToCenterOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> NSLayoutConstraint  {
        return self.trailingAnchor.constraint(equalTo: withinMargins ? view.layoutMarginsGuide.centerXAnchor : view.centerXAnchor, constant: -padding)
    }
    
    /// Gets the constraint to set the width of this view to some value
    ///
    /// - Parameter constant: The width
    ///
    /// - Returns: The constraint to achieve the alignment
    public func setWidthTo(_ constant: CGFloat) -> NSLayoutConstraint {
        return self.widthAnchor.constraint(equalToConstant: constant)
    }
    
    /// Gets the constraint to set the height of this view to some value
    ///
    /// - Parameter constant: The height
    ///
    /// - Returns: The constraint to achieve the alignment
    public func setHeightTo(_ constant: CGFloat) -> NSLayoutConstraint {
        return self.heightAnchor.constraint(equalToConstant: constant)
    }
    
    /// Gets the constraints to align the width of this view with the width of some other view
    ///
    /// - Parameter view: The view to align to
    /// - Parameter padding: The amount of space to remove from the sides in order to shrink the width
    /// - Parameter withinMargins: Whether to align based on the margins of the other view of not
    ///
    /// - Returns: The constraints to achieve the alignment
    public func alignWidthOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignHeightOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignBetween(above aboveView: UIView, below belowView: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignBetween(before beforeView: UIView, after afterView: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignTopLeftOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignTopRightOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignBottomLeftOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignBottomRightOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignAboveAndBefore(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignAboveAndAfter(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignBelowAndBefore(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignBelowAndAfter(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignWithin(_ view: UIView, padding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignWithin(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignWithinTopOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignWithinBottomOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignWithinLeftOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignWithinRightOf(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignCenterTopOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignCenterBottomOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignCenterLeftOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignCenterRightOf(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignAppendedAbove(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignAppendedBelow(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignAppendedBefore(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignAppendedAfter(_ view: UIView, horizPadding: CGFloat = 0.0, vertPadding: CGFloat = 0.0, withinHorizMargins: Bool = false, withinVertMargins: Bool = false, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignCenterAbove(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignCenterBelow(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignCenterBefore(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
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
    public func alignCenterAfter(_ view: UIView, padding: CGFloat = 0.0, withinMargins: Bool = false) -> [NSLayoutConstraint] {
        return [
            self.alignAfter(view, padding: padding, withinMargins: withinMargins),
            self.alignCenterYOf(view, withinMargins: withinMargins)
        ]
    }
    
}
