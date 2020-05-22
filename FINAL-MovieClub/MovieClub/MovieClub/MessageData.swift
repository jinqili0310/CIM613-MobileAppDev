//
//  MessageData.swift
//  MovieClub
//
//  Created by Yuan Fang on 5/3/20.
//  Copyright © 2020 Jinqi Li. All rights reserved.
//

import Foundation

final class MessageData {
    static func generateMessageData() -> [Message] {
        return[
            Message(name: "Lufy", texts: "Hi all, whats the plan?", time: "4:35PM", time2: "Today, 02:09am", png: "01.png"),
            Message(name: "Zoro", texts: "Your guys decide...zzzZZZ", time: "4:37PM", time2: "29 Apr, 07:09pm", png: "02.png"),
            Message(name: "Nami", texts: "Lets get hangover!!!", time: "4:38PM", time2: "27 Apr, 01:09pm", png: "03.png"),
            Message(name: "Chopper", texts: "No...I can't drink...TAT", time: "4:40PM", time2: "25 Apr, 12:09pm", png: "04.png"),
            Message(name: "Sanji", texts: "Good idea, Nami san!", time: "4:39PM", time2: "1 May, 04:09pm", png: "05.png")
        ]
    }
}
