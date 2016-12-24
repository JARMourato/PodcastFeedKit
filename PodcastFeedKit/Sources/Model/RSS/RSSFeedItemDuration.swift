//
//  RSSFeedItemDuration.swift
//  FeedKit
//
//  Created by Spencer Mamer on 12/24/16.
//
//

import Foundation

open class RSSFeedItemDuration {

    /**
     
     The element's attributes
     
     */
    open class Attributes {
        
        open var duration: String?
        
    }
    
    /**
     
     The element's attributes
     
     */
    open var attributes: Attributes?
    
    /**
     
     The element's value
     
     */
    open var value: String?
    
}

// MARK: - Initializers
extension RSSFeedItemDuration {
    
    /**
     
     Initializes the `RSSFeedItemCategory` with the attributes of an `<item>`s sub-element `<category>`
     
     - parameter attributeDict: A dictionary with the attributes of the `<category>` element
     
     - returns: A `RSSFeedItemCategory` instance
     
     */
    convenience init(attributes attributeDict: [String : String]) {
        self.init()
        self.attributes = RSSFeedItemDuration.Attributes(attributes: attributeDict)
    }
}

extension RSSFeedItemDuration.Attributes {
    
    convenience init?(attributes attributeDict: [String : String]) {
        
        if attributeDict.isEmpty {
            return nil
        }
        
        self.init()
        
        self.duration = attributeDict["duration"]
        
    }
    
}
