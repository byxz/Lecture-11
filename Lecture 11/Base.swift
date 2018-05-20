//
//  Base.swift
//  Lecture 11
//
//  Created by Mac on 19.05.2018.
//  Copyright © 2018 testOrg. All rights reserved.
//
import UIKit

struct Base {
    let flag: String
    let nameOfTheCountry: String
    let nameOfThePresident: String
    let twitterUrl: String
}


let ukraine = Base(flag: "ukraine",
                   nameOfTheCountry: "Украина",
                   nameOfThePresident: "Порошенко",
                   twitterUrl: "https://twitter.com/poroshenko")

let zimbabve = Base(flag: "republicOfZimbabwe",
                    nameOfTheCountry: "Респу́блика Зимба́бве",
                    nameOfThePresident: "Эммерсон Мнангагва",
                    twitterUrl: "https://twitter.com/edmnangagwa")

let portugal = Base(flag: "portugal",
                    nameOfTheCountry: "Португа́льская Респу́блика",
                    nameOfThePresident: "Марселу Ребелу ди Соза",
                    twitterUrl: "https://www.google.com.ua/")

var arrayOfCountry: [Base] = [ukraine, zimbabve, portugal]
