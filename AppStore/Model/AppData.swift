//
//  AppData.swift
//  AppStore
//
//  Created by ReyDaniel on 03/06/21.
//

import UIKit
struct AppData {
    static func getData() -> [AppModel] {
        return [
            AppModel(thumb: UIImage(named: AppReusable.Duolingo.thumb)!,
                     title: AppReusable.Duolingo.title,
                     developer: AppReusable.Duolingo.dev,
                     description: AppReusable.Duolingo.description,
                     url: AppReusable.Duolingo.url,
                     image: AppModel.Images.init(
                        first: AppReusable.Duolingo.section1,
                        second: AppReusable.Duolingo.section2,
                        third: AppReusable.Duolingo.section3,
                        fourth: AppReusable.Duolingo.section4,
                        fifth: AppReusable.Duolingo.section5)
            ),
            AppModel(thumb: UIImage(named: AppReusable.Facebook.thumb)!,
                     title: AppReusable.Facebook.title,
                     developer: AppReusable.Facebook.dev,
                     description: AppReusable.Facebook.description, url: AppReusable.Facebook.url,
                     image: AppModel.Images.init(
                        first: AppReusable.Facebook.section1,
                        second: AppReusable.Facebook.section2,
                        third: AppReusable.Facebook.section3,
                        fourth: AppReusable.Facebook.section4,
                        fifth: AppReusable.Facebook.section5)
            ),
            AppModel(thumb: UIImage(named: AppReusable.Instagram.thumb)!,
                     title: AppReusable.Instagram.title,
                     developer: AppReusable.Instagram.dev,
                     description: AppReusable.Instagram.description, url: AppReusable.Instagram.url,
                     image: AppModel.Images.init(
                        first: AppReusable.Instagram.section1,
                        second: AppReusable.Instagram.section2,
                        third: AppReusable.Instagram.section3,
                        fourth: AppReusable.Instagram.section4,
                        fifth: AppReusable.Instagram.section5)
            ),
            AppModel(thumb: UIImage(named: AppReusable.Line.thumb)!,
                     title: AppReusable.Line.title,
                     developer: AppReusable.Line.dev,
                     description: AppReusable.Line.description, url: AppReusable.Line.url,
                     image: AppModel.Images.init(
                        first: AppReusable.Line.section1,
                        second: AppReusable.Line.section2,
                        third: AppReusable.Line.section3,
                        fourth: AppReusable.Line.section4,
                        fifth: AppReusable.Line.section5)
            ),
            AppModel(thumb: UIImage(named: AppReusable.Pinterest.thumb)!,
                     title: AppReusable.Pinterest.title,
                     developer: AppReusable.Pinterest.dev,
                     description: AppReusable.Pinterest.description, url: AppReusable.Pinterest.url,
                     image: AppModel.Images.init(
                        first: AppReusable.Pinterest.section1,
                        second: AppReusable.Pinterest.section2,
                        third: AppReusable.Pinterest.section3,
                        fourth: AppReusable.Pinterest.section4,
                        fifth: AppReusable.Pinterest.section5)
            ),
            AppModel(thumb: UIImage(named: AppReusable.Signal.thumb)!,
                     title: AppReusable.Signal.title,
                     developer: AppReusable.Signal.dev,
                     description: AppReusable.Signal.description, url: AppReusable.Signal.url,
                     image: AppModel.Images.init(
                        first: AppReusable.Signal.section1,
                        second: AppReusable.Signal.section2,
                        third: AppReusable.Signal.section3,
                        fourth: AppReusable.Signal.section4,
                        fifth: AppReusable.Signal.section5)
            ),
            AppModel(thumb: UIImage(named: AppReusable.Snapchat.thumb)!,
                     title: AppReusable.Snapchat.title,
                     developer: AppReusable.Snapchat.dev,
                     description: AppReusable.Snapchat.description, url: AppReusable.Snapchat.url,
                     image: AppModel.Images.init(
                        first: AppReusable.Snapchat.section1,
                        second: AppReusable.Snapchat.section2,
                        third: AppReusable.Snapchat.section3,
                        fourth: AppReusable.Snapchat.section4,
                        fifth: AppReusable.Snapchat.section5)
            ),
            AppModel(thumb: UIImage(named: AppReusable.Telegram.thumb)!,
                     title: AppReusable.Telegram.title,
                     developer: AppReusable.Telegram.dev,
                     description: AppReusable.Telegram.description, url: AppReusable.Telegram.url,
                     image: AppModel.Images.init(
                        first: AppReusable.Telegram.section1,
                        second: AppReusable.Telegram.section2,
                        third: AppReusable.Telegram.section3,
                        fourth: AppReusable.Telegram.section4,
                        fifth: AppReusable.Telegram.section5)
            ),
            AppModel(thumb: UIImage(named: AppReusable.Whatsapp.thumb)!,
                     title: AppReusable.Whatsapp.title,
                     developer: AppReusable.Whatsapp.dev,
                     description: AppReusable.Whatsapp.description, url: AppReusable.Whatsapp.url,
                     image: AppModel.Images.init(
                        first: AppReusable.Whatsapp.section1,
                        second: AppReusable.Whatsapp.section2,
                        third: AppReusable.Whatsapp.section3,
                        fourth: AppReusable.Whatsapp.section4,
                        fifth: AppReusable.Whatsapp.section5)
            ),
            AppModel(thumb: UIImage(named: AppReusable.Youtube.thumb)!,
                     title: AppReusable.Youtube.title,
                     developer: AppReusable.Youtube.dev,
                     description: AppReusable.Youtube.description, url: AppReusable.Youtube.url,
                     image: AppModel.Images.init(
                        first: AppReusable.Youtube.section1,
                        second: AppReusable.Youtube.section2,
                        third: AppReusable.Youtube.section3,
                        fourth: AppReusable.Youtube.section4,
                        fifth: AppReusable.Youtube.section5)
            )
        ]
    }
}
