//
//  ProductLine.swift
//  AppleProducts
//
//  Created by Jose Melendez on 4/19/18.
//  Copyright © 2018 Jose Melendez. All rights reserved.
//

import Foundation

class ProductLine {
    var name: String
    var products: [Product]
    
    init(named: String, includesProducts: [Product]) {
        name = named
        products = includesProducts
    }
    
    static func getProducts() -> [ProductLine] {
        return [iDevices(),mac(),software(),iPod(),iCloudAndApplePay()]
    }
    
    //MARK: Private Methods
    private static func iDevices() -> ProductLine {
        //  (1) iDevices: Apple Watch, iPad, iPhone, iOS
        var products = [Product]()
        
        products.append(Product(imageNamed: "apple-watch", title: "Apple Watch", description: "Featuring revolutionary new technologies and a pioneering user interface with a beautiful design that honors the rich tradition of precision watchmaking."))
        products.append(Product(imageNamed: "ipad-air2", title: "iPad", description: "iPad Air 2 is the thinnest and most powerful iPad ever. With iPad, we’ve always had a somewhat paradoxical goal: to create a device that’s immensely powerful, yet so thin and light you almost forget it’s there."))
        products.append(Product(imageNamed: "iphone6", title: "iPhone", description: "The biggest advancements in iPhone history, featuring two models with stunning 4.7-inch and 5.5-inch Retina HD displays."))
        products.append(Product(imageNamed: "iOS8", title: "iOS", description: "iOS is the world’s most advanced operating system. Its easy-to-use interface, amazing features, and rock-solid stability are built into every iPhone, iPad, and iPod touch."))
        
        return ProductLine(named: "iDevices", includesProducts: products)
    }
    
    //  (2) Mac: MacBook, MacBook Pro with Retina Display, MacBook Air, iMac
    //           Mac Pro, MacBook Pro, Mac Mini, Display, Airport Extreme,
    //           AirPort Time Capsule, AirPort Express, Magic Trackpad
    //           Magic Mouse, Apple Keyboard, Apple Battery Charger
    
    private static func mac() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(imageNamed: "macbook", title: "MacBook", description: "The thinnest and lightest Mac ever with every component meticulously redesigned to create a Mac that is just two pounds and 13.1 mm thin. "))
        products.append(Product(imageNamed: "macbook-pro-13", title: "MacBook Pro 13 inch", description: "MacBook Pro features the latest dual-core and quad-core processors, and faster graphics to deliver the perfect combination of pro performance and extreme portability."))
        products.append(Product(imageNamed: "macbook-pro-retina", title: "MacBook Pro with Retina Display", description: "A stunning high-resolution display, an amazing thin and light design, and the latest technology to power through the most demanding projects."))
        products.append(Product(imageNamed: "macbook-air", title: "MacBook Air", description: "All day battery life, fourth generation Intel Core processors with faster graphics, 802.11ac Wi-Fi and flash storage that is up to 45 percent faster than the previous generation."))
        products.append(Product(imageNamed: "imac-5k", title: "iMac", description: "The 27-inch iMac with Retina 5K display features a breathtaking 14.7 million pixel display so text appears sharper than ever, videos are unbelievably lifelike."))
        products.append(Product(imageNamed: "mac-pro", title: "Mac Pro", description: "Designed around a revolutionary unified thermal core, the Mac Pro introduces a completely new pro desktop architecture and design that is optimized for performance inside and out."))
        products.append(Product(imageNamed: "mac-mini", title: "Mac Mini", description: "With its sleek aluminum design, a removable bottom panel for easy access to memory, and a space-saving built-in power supply, Mac mini is pretty incredible."))
        products.append(Product(imageNamed: "display", title: "Displays", description: "The 27-inch Apple LED Cinema Display supersizes your view with an incredible 2560-by-1440 resolution."))
        products.append(Product(imageNamed: "airport-extreme", title: "Airport Extreme", description: "Featuring 802.11ac Wi-Fi for up to three times faster performance."))
        
        return ProductLine(named: "Mac", includesProducts: products)
    }
    
    //  (3) Software: OS X, iLife, iWork, Logic Pro X, Final Cut Pro X, Aperture
    
    private static func software() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(imageNamed: "os-x", title: "OS X", description: "Built on a rock-solid UNIX foundation, OS X is engineered to take full advantage of the technologies in every new Mac."))
        products.append(Product(imageNamed: "ilife", title: "iLife", description: "Do more with movies and music than you ever thought possible."))
        products.append(Product(imageNamed: "iwork", title: "iWork", description: " iWork is the easiest way to create great-looking documents, spreadsheets, and presentations. "))
        products.append(Product(imageNamed: "logic-pro-x", title: "Logic Pro X", description: "Logic Pro X, the most advanced version of Logic Pro to date, with a new interface designed for pros."))
        products.append(Product(imageNamed: "final-cut-pro-x", title: "Final Cut Pro X", description: "A revolutionary new version of the world’s most popular Pro video editing software which completely reinvents video editing."))
        products.append(Product(imageNamed: "aperture", title: "Aperture", description: "Featuring revolutionary new technologies and a pioneering user interface with a beautiful design that honors the rich tradition of precision watchmaking."))
        
        return ProductLine(named: "Software", includesProducts: products)
    }
    
    //  (4) iPod: Apple TV, iPod nano, iPod shuffle, iPod touch, iTunes
    
    private static func iPod() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(imageNamed: "ipod-nano", title: "iPod nano", description: "The thinnest iPod ever featuring a 2.5-inch Multi-Touch display; convenient navigation buttons; built-in Bluetooth for wireless listening; and the iPod nano comes in seven gorgeous colors."))
        products.append(Product(imageNamed: "ipod-shuffle", title: "iPod shuffle", description: "Crafted from a single piece of aluminium and polished to a beautiful shine, iPod shuffle feels solid, sleek and durable."))
        products.append(Product(imageNamed: "ipod-touch", title: "iPod touch", description: "Featuring a brilliant 4-inch Retina display; a 5-megapixel iSight camera with 1080p HD video recording."))
        products.append(Product(imageNamed: "itunes", title: "iTunes", description: "A free application for your Mac or PC, iTunes organizes and plays your digital music and video on your computer."))
        products.append(Product(imageNamed: "apple-tv", title: "Apple TV", description: "Access to tons of great HD content in a tiny package. Enjoy blockbuster movies, TV shows, live sports and news, your music, photos, and more — right on your high-definition TV."))
        
        return ProductLine(named: "iPod and iTunes", includesProducts: products)
    }
    
    //  (5) Services: iCloud, Apple Pay
    
    private static func iCloudAndApplePay() -> ProductLine
    {
        var products = [Product]()
        
        products.append(Product(imageNamed: "icloud", title: "iCloud", description: "The thinnest iPod ever featuring a 2.5-inch Multi-Touch display; convenient navigation buttons; built-in Bluetooth for wireless listening; and the iPod nano comes in seven gorgeous colors."))
        products.append(Product(imageNamed: "apple-pay", title: "Apple Pay", description: "A breakthrough set of free new cloud services that work seamlessly with applications on your iPhone®, iPad®, iPod touch®, Mac® or PC to automatically and wirelessly store your content in iCloud and automatically and wirelessly push it to all your devices. "))
        
        return ProductLine(named: "iCloud and Apple Pay", includesProducts: products)
    }
}
