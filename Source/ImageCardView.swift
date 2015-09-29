//
// Copyright (C) 1615 GraphKit, Inc. <http://graphkit.io> and other GraphKit contributors.
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU Affero General Public License as published
// by the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU Affero General Public License for more details.
//
// You should have received a copy of the GNU Affero General Public License
// along with this program located at the root of the software package
// in a file called LICENSE.  If not, see <http://www.gnu.org/licenses/>.
//

import UIKit

public class ImageCardView : MaterialCardView, Comparable {
	//
	//	:name:	layoutConstraints
	//
	internal lazy var layoutConstraints: Array<NSLayoutConstraint> = Array<NSLayoutConstraint>()
	
	/**
		:name:	imageViewVerticalInset
	*/
	public var imageViewVerticalInset: CGFloat = 0 {
		didSet {
			imageViewTopInset = imageViewVerticalInset
			imageViewBottomInset = imageViewVerticalInset
		}
	}
	
	/**
		:name:	imageViewTopInset
	*/
	public var imageViewTopInset: CGFloat = 0 {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	imageViewBottomInset
	*/
	public var imageViewBottomInset: CGFloat = 0 {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	imageViewHorizontalInset
	*/
	public var imageViewHorizontalInset: CGFloat = 0 {
		didSet {
			imageViewLeftInset = imageViewHorizontalInset
			imageViewRightInset = imageViewHorizontalInset
		}
	}
	
	/**
		:name:	imageViewLeftInset
	*/
	public var imageViewLeftInset: CGFloat = 0 {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	imageViewRightInset
	*/
	public var imageViewRightInset: CGFloat = 0 {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	titleLabelVerticalInset
	*/
	public var titleLabelVerticalInset: CGFloat = MaterialTheme.cardVerticalInset {
		didSet {
			titleLabelTopInset = titleLabelVerticalInset
			titleLabelBottomInset = titleLabelVerticalInset
		}
	}
	
	/**
		:name:	titleLabelTopInset
	*/
	public var titleLabelTopInset: CGFloat = MaterialTheme.cardVerticalInset {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	titleLabelBottomInset
	*/
	public var titleLabelBottomInset: CGFloat = MaterialTheme.cardVerticalInset {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	titleLabelHorizontalInset
	*/
	public var titleLabelHorizontalInset: CGFloat = MaterialTheme.cardHorizontalInset {
		didSet {
			titleLabelLeftInset = titleLabelHorizontalInset
			titleLabelRightInset = titleLabelHorizontalInset
		}
	}
	
	/**
		:name:	titleLabelLeftInset
	*/
	public var titleLabelLeftInset: CGFloat = MaterialTheme.cardHorizontalInset {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	titleLabelRightInset
	*/
	public var titleLabelRightInset: CGFloat = MaterialTheme.cardHorizontalInset {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	detailLabelVerticalInset
	*/
	public var detailLabelVerticalInset: CGFloat = MaterialTheme.cardVerticalInset {
		didSet {
			detailLabelTopInset = detailLabelVerticalInset
			detailLabelBottomInset = detailLabelVerticalInset
		}
	}
	
	/**
		:name:	detailLabelTopInset
	*/
	public var detailLabelTopInset: CGFloat = MaterialTheme.cardVerticalInset {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	detailLabelBottomInset
	*/
	public var detailLabelBottomInset: CGFloat = MaterialTheme.cardVerticalInset {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	detailLabelHorizontalInset
	*/
	public var detailLabelHorizontalInset: CGFloat = MaterialTheme.cardHorizontalInset {
		didSet {
			detailLabelLeftInset = detailLabelHorizontalInset
			detailLabelRightInset = detailLabelHorizontalInset
		}
	}
	
	/**
		:name:	detailLabelLeftInset
	*/
	public var detailLabelLeftInset: CGFloat = MaterialTheme.cardHorizontalInset {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	detailLabelRightInset
	*/
	public var detailLabelRightInset: CGFloat = MaterialTheme.cardHorizontalInset {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	buttonVerticalInset
	*/
	public var buttonVerticalInset: CGFloat = MaterialTheme.cardVerticalInset {
		didSet {
			buttonTopInset = buttonVerticalInset
			buttonBottomInset = buttonVerticalInset
		}
	}
	
	/**
		:name:	buttonTopInset
	*/
	public var buttonTopInset: CGFloat = MaterialTheme.cardVerticalInset / 2 {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	buttonBottomInset
	*/
	public var buttonBottomInset: CGFloat = MaterialTheme.cardVerticalInset / 2 {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	buttonHorizontalInset
	*/
	public var buttonHorizontalInset: CGFloat = MaterialTheme.cardHorizontalInset {
		didSet {
			buttonLeftInset = buttonHorizontalInset
			buttonRightInset = buttonHorizontalInset
		}
	}
	
	/**
		:name:	buttonLeftInset
	*/
	public var buttonLeftInset: CGFloat = MaterialTheme.cardHorizontalInset / 2 {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	buttonRightInset
	*/
	public var buttonRightInset: CGFloat = MaterialTheme.cardHorizontalInset / 2 {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	shadow
	*/
	public var shadow: Bool = true {
		didSet {
			false == shadow ? removeShadow() : prepareShadow()
			reloadView()
		}
	}
	
	/**
		:name:	maximumImageViewHeight
	*/
	public var maximumImageViewHeight: CGFloat = 200 {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	imageViewContainer
	*/
	public private(set) var imageViewContainer: UIView?
	
	/**
		:name:	imageView
	*/
	public var imageView: UIImageView? {
		didSet {
			if let t = imageView {
				// container
				if nil == imageViewContainer {
					imageViewContainer = UIView()
					imageViewContainer!.translatesAutoresizingMaskIntoConstraints = false
					imageViewContainer!.backgroundColor = MaterialTheme.clear.color
					addSubview(imageViewContainer!)
				}
				
				// text
				imageViewContainer!.addSubview(t)
				t.translatesAutoresizingMaskIntoConstraints = false
				t.contentMode = .ScaleAspectFill
				t.userInteractionEnabled = false
				t.clipsToBounds = true
				if nil != titleLabel {
					titleLabelContainer!.backgroundColor = MaterialTheme.clear.color
					titleLabel!.textColor = MaterialTheme.white.color
					titleLabelContainer!.removeFromSuperview()
					imageViewContainer!.addSubview(titleLabelContainer!)
				}
			} else {
				imageViewContainer?.removeFromSuperview()
				imageViewContainer = nil
			}
			reloadView()
		}
	}
	
	/**
		:name:	maximumTitleLabelHeight
	*/
	public var maximumTitleLabelHeight: CGFloat = 0 {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	titleLabelContainer
	*/
	public private(set) var titleLabelContainer: UIView?
	
	/**
		:name:	titleLabel
	*/
	public var titleLabel: UILabel? {
		didSet {
			if let t = titleLabel {
				// container
				if nil == titleLabelContainer {
					titleLabelContainer = UIView()
					titleLabelContainer!.translatesAutoresizingMaskIntoConstraints = false
					addSubview(titleLabelContainer!)
				}
				
				// text
				titleLabelContainer!.addSubview(t)
				t.translatesAutoresizingMaskIntoConstraints = false
				t.backgroundColor = MaterialTheme.clear.color
				t.font = Roboto.regular
				t.numberOfLines = 0
				t.lineBreakMode = .ByTruncatingTail
				if nil == imageView {
					titleLabelContainer!.backgroundColor = MaterialTheme.clear.color
					t.textColor = MaterialTheme.black.color
				} else {
					titleLabelContainer!.backgroundColor = MaterialTheme.clear.color
					t.textColor = MaterialTheme.clear.color
					titleLabelContainer!.removeFromSuperview()
					imageViewContainer!.addSubview(titleLabelContainer!)
				}
			} else {
				titleLabelContainer?.removeFromSuperview()
				titleLabelContainer = nil
			}
			reloadView()
		}
	}
	
	/**
		:name:	maximumDetailLabelHeight
	*/
	public var maximumDetailLabelHeight: CGFloat = 0 {
		didSet {
			reloadView()
		}
	}
	
	/**
		:name:	detailLabelContainer
	*/
	public private(set) var detailLabelContainer: UIView?
	
	/**
		:name:	detailLabel
	*/
	public var detailLabel: UILabel? {
		didSet {
			if let l = detailLabel {
				// container
				if nil == detailLabelContainer {
					detailLabelContainer = UIView()
					detailLabelContainer!.translatesAutoresizingMaskIntoConstraints = false
					detailLabelContainer!.backgroundColor = MaterialTheme.clear.color
					addSubview(detailLabelContainer!)
				}
				
				// text
				detailLabelContainer!.addSubview(l)
				l.translatesAutoresizingMaskIntoConstraints = false
				l.textColor = MaterialTheme.black.color
				l.backgroundColor = MaterialTheme.clear.color
				l.font = Roboto.light
				l.numberOfLines = 0
				l.lineBreakMode = .ByTruncatingTail
			} else {
				detailLabelContainer?.removeFromSuperview()
				detailLabelContainer = nil
			}
			reloadView()
		}
	}
	
	/**
		:name:	divider
	*/
	public var divider: UIView? {
		didSet {
			if let d = divider {
				d.translatesAutoresizingMaskIntoConstraints = false
				d.backgroundColor = MaterialTheme.blueGrey.lighten5
				addSubview(d)
			} else {
				divider?.removeFromSuperview()
			}
			reloadView()
		}
	}
	
	/**
		:name:	buttonsContainer
	*/
	public private(set) var buttonsContainer: UIView?
	
	/**
		:name:	leftButtons
	*/
	public var leftButtons: Array<MaterialButton>? {
		didSet {
			if nil == rightButtons && nil == leftButtons {
				buttonsContainer?.removeFromSuperview()
				buttonsContainer = nil
			} else if nil == buttonsContainer {
				buttonsContainer = UIView()
				buttonsContainer!.translatesAutoresizingMaskIntoConstraints = false
				buttonsContainer!.backgroundColor = MaterialTheme.clear.color
				addSubview(buttonsContainer!)
			}
			reloadView()
		}
	}
	
	/**
		:name:	rightButtons
	*/
	public var rightButtons: Array<MaterialButton>? {
		didSet {
			if nil == rightButtons && nil == leftButtons {
				buttonsContainer?.removeFromSuperview()
				buttonsContainer = nil
			} else if nil == buttonsContainer {
				buttonsContainer = UIView()
				buttonsContainer!.translatesAutoresizingMaskIntoConstraints = false
				buttonsContainer!.backgroundColor = MaterialTheme.clear.color
				addSubview(buttonsContainer!)
			} else {
				for v in buttonsContainer!.subviews {
					v.removeFromSuperview()
				}
			}
			reloadView()
		}
	}
	
	/**
		:name:	init
	*/
	public required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
	}
	
	/**
		:name:	init
	*/
	public convenience init?(imageView: UIImageView? = nil, titleLabel: UILabel? = nil, detailLabel: UILabel? = nil, divider: UIView? = nil, leftButtons: Array<MaterialButton>? = nil, rightButtons: Array<MaterialButton>? = nil) {
		self.init(frame: CGRectZero)
		prepareProperties(imageView, titleLabel: titleLabel, detailLabel: detailLabel, divider: divider, leftButtons: leftButtons, rightButtons: rightButtons)
	}
	
	/**
		:name:	init
	*/
	public required init(frame: CGRect) {
		super.init(frame: frame)
	}
	
	/**
		:name:	isEqual
	*/
	public override func isEqual(object: AnyObject?) -> Bool {
		if let rhs = object as? ImageCardView {
			return tag == rhs.tag
		}
		return false
	}
	
	/**
		:name:	reloadView
	*/
	public func reloadView() {
		// clear all constraints
		NSLayoutConstraint.deactivateConstraints(layoutConstraints)
		layoutConstraints.removeAll(keepCapacity: false)
		
		// detect all components and create constraints
		var verticalFormat: String = "V:|"
		var views: Dictionary<String, AnyObject> = Dictionary<String, AnyObject>()
		
		// image
		if nil != imageView {
			// clear for updated constraints
			imageViewContainer!.removeConstraints(imageViewContainer!.constraints)
			
			// container
			layoutConstraints += Layout.constraint("H:|[imageViewContainer]|", options: [], metrics: nil, views: ["imageViewContainer": imageViewContainer!])
			verticalFormat += "[imageViewContainer]"
			views["imageViewContainer"] = imageViewContainer!
			
			// text
			Layout.expandToParentHorizontallyWithPad(imageViewContainer!, child: imageView!, left: imageViewLeftInset, right: imageViewRightInset)
			imageViewContainer!.addConstraints(Layout.constraint("V:|-(imageViewTopInset)-[imageView(maximumImageViewHeight)]-(imageViewBottomInset)-|", options: [], metrics: ["imageViewTopInset": imageViewTopInset, "imageViewBottomInset": imageViewBottomInset, "maximumImageViewHeight": maximumImageViewHeight], views: ["imageView": imageView!]))
		}
		
		// title
		if nil != titleLabel {
			// clear for updated constraints
			titleLabelContainer!.removeConstraints(titleLabelContainer!.constraints)
			
			if nil == imageView {
				// container
				layoutConstraints += Layout.constraint("H:|[titleLabelContainer]|", options: [], metrics: nil, views: ["titleLabelContainer": titleLabelContainer!])
				verticalFormat += "[titleLabelContainer]"
				views["titleLabelContainer"] = titleLabelContainer!
			} else {
				//container
				Layout.alignFromBottomLeft(imageViewContainer!, child: titleLabelContainer!)
				Layout.expandToParentHorizontally(imageViewContainer!, child: titleLabelContainer!)
			}
			
			// common text
			if 0 == maximumTitleLabelHeight {
				Layout.expandToParentWithPad(titleLabelContainer!, child: titleLabel!, top: titleLabelTopInset, left: titleLabelLeftInset, bottom: titleLabelBottomInset, right: titleLabelRightInset)
			} else {
				Layout.expandToParentHorizontallyWithPad(titleLabelContainer!, child: titleLabel!, left: titleLabelLeftInset, right: titleLabelRightInset)
				titleLabelContainer!.addConstraints(Layout.constraint("V:|-(titleLabelTopInset)-[titleLabel(<=maximumTitleLabelHeight)]-(titleLabelBottomInset)-|", options: [], metrics: ["titleLabelTopInset": titleLabelTopInset, "titleLabelBottomInset": titleLabelBottomInset, "maximumTitleLabelHeight": maximumTitleLabelHeight], views: ["titleLabel": titleLabel!]))
			}
		}
		
		// detail
		if nil != detailLabel {
			// clear for updated constraints
			detailLabelContainer!.removeConstraints(detailLabelContainer!.constraints)
			
			// container
			layoutConstraints += Layout.constraint("H:|[detailLabelContainer]|", options: [], metrics: nil, views: ["detailLabelContainer": detailLabelContainer!])
			verticalFormat += "[detailLabelContainer]"
			views["detailLabelContainer"] = detailLabelContainer!
			
			// text
			if 0 == maximumDetailLabelHeight {
				Layout.expandToParentWithPad(detailLabelContainer!, child: detailLabel!, top: detailLabelTopInset, left: detailLabelLeftInset, bottom: detailLabelBottomInset, right: detailLabelRightInset)
			} else {
				Layout.expandToParentHorizontallyWithPad(detailLabelContainer!, child: detailLabel!, left: detailLabelLeftInset, right: detailLabelRightInset)
				detailLabelContainer!.addConstraints(Layout.constraint("V:|-(detailLabelTopInset)-[detailLabel(<=maximumDetailLabelHeight)]-(detailLabelBottomInset)-|", options: [], metrics: ["detailLabelTopInset": detailLabelTopInset, "detailLabelBottomInset": detailLabelBottomInset, "maximumDetailLabelHeight": maximumDetailLabelHeight], views: ["detailLabel": detailLabel!]))
			}
		}
		
		// buttons
		if nil != leftButtons || nil != rightButtons {
			// clear for updated constraints
			buttonsContainer!.removeConstraints(buttonsContainer!.constraints)
			
			// divider
			if nil != divider {
				layoutConstraints += Layout.constraint("H:|[divider]|", options: [], metrics: nil, views: ["divider": divider!])
				views["divider"] = divider!
				verticalFormat += "[divider(1)]"
			}
			
			//container
			layoutConstraints += Layout.constraint("H:|[buttonsContainer]|", options: [], metrics: nil, views: ["buttonsContainer": buttonsContainer!])
			verticalFormat += "[buttonsContainer]"
			views["buttonsContainer"] = buttonsContainer!
			
			// leftButtons
			if nil != leftButtons {
				var horizontalFormat: String = "H:|"
				var buttonViews: Dictionary<String, AnyObject> = Dictionary<String, AnyObject>()
				for var i: Int = 0, l: Int = leftButtons!.count; i < l; ++i {
					let button: MaterialButton = leftButtons![i]
					buttonsContainer!.addSubview(button)
					buttonViews["button\(i)"] = button
					horizontalFormat += "-(buttonLeftInset)-[button\(i)]"
					Layout.expandToParentVerticallyWithPad(buttonsContainer!, child: button, top: buttonTopInset, bottom: buttonBottomInset)
				}
				buttonsContainer!.addConstraints(Layout.constraint(horizontalFormat, options: [], metrics: ["buttonLeftInset": buttonLeftInset], views: buttonViews))
			}
			
			// rightButtons
			if nil != rightButtons {
				var horizontalFormat: String = "H:"
				var buttonViews: Dictionary<String, AnyObject> = Dictionary<String, AnyObject>()
				for var i: Int = 0, l: Int = rightButtons!.count; i < l; ++i {
					let button: MaterialButton = rightButtons![i]
					buttonsContainer!.addSubview(button)
					buttonViews["button\(i)"] = button
					horizontalFormat += "[button\(i)]-(buttonRightInset)-"
					Layout.expandToParentVerticallyWithPad(buttonsContainer!, child: button, top: buttonTopInset, bottom: buttonBottomInset)
				}
				buttonsContainer!.addConstraints(Layout.constraint(horizontalFormat + "|", options: [], metrics: ["buttonRightInset": buttonRightInset], views: buttonViews))
			}
		}
		
		verticalFormat += "|"
		
		// combine constraints
		if 0 < layoutConstraints.count {
			layoutConstraints += Layout.constraint(verticalFormat, options: [], metrics: nil, views: views)
			NSLayoutConstraint.activateConstraints(layoutConstraints)
		}
	}
	
	//
	//	:name:	prepareProperties
	//
	internal func prepareProperties(imageView: UIImageView?, titleLabel: UILabel?, detailLabel: UILabel?, divider: UIView?, leftButtons: Array<MaterialButton>?, rightButtons: Array<MaterialButton>?) {
		self.imageView = imageView
		self.titleLabel = titleLabel
		self.detailLabel = detailLabel
		self.divider = divider
		self.leftButtons = leftButtons
		self.rightButtons = rightButtons
	}
	
	//
	//	:name:	prepareView
	//
	internal override func prepareView() {
		super.prepareView()
		prepareShadow()
		backgroundColor = MaterialTheme.white.color
	}
}

public func <=(lhs: ImageCardView, rhs: ImageCardView) -> Bool {
	return lhs.tag <= rhs.tag
}

public func >=(lhs: ImageCardView, rhs: ImageCardView) -> Bool {
	return lhs.tag >= rhs.tag
}

public func >(lhs: ImageCardView, rhs: ImageCardView) -> Bool {
	return lhs.tag > rhs.tag
}

public func <(lhs: ImageCardView, rhs: ImageCardView) -> Bool {
	return lhs.tag < rhs.tag
}