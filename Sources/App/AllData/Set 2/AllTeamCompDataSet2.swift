//
//  AllTeamCompDataSet2.swift
//  App
//
//  Created by James Mclean on 09/11/2019.
//

import Foundation


class TeamCompsSet2 {
    
    static var shared = TeamCompsSet2()
    
    lazy var allTeamComps: [TeamComp] = {
        return [
            fourOfAKind, beholdTheLight
        ]
    }()
    
    /////////////// https://tft.mobalytics.gg/team-comp ///////
    
    let fourOfAKind: TeamComp
    
    let beholdTheLight: TeamComp
    
    /////////////////https://tftactics.gg/tierlist/team-comps /////////
    
    init() {
        let champions = ChampionsSet2.shared
        let items = ItemsSet2.shared
        
        // MARK: 4 OF A KIND
        fourOfAKind = TeamComp(name: "4 of a Kind",
                               teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoOne.rawValue,
                              earlyUnits: [champions.varus, champions.vayne, champions.aatrox, champions.jax, champions.nasus],
                              midUnits: [champions.varus, champions.kindred, champions.ashe, champions.vayne, champions.malphite, champions.taliyah],
                              units: [champions.ezreal, champions.ashe, champions.twitch, champions.kindred, champions.janna, champions.masterYi, champions.taric, champions.malphite],
                              carries: [champions.ashe, champions.twitch],
                              carryItems: [
                                champions.ashe :
                                    [items.statikkShiv, items.statikkShiv, items.statikkShiv],
                                champions.twitch :
                                    [items.runaansHurricane, items.giantSlayer]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    3 : champions.taric,
                                    4 : champions.masterYi,
                                    5 : champions.malphite,
                                    23 : champions.ezreal,
                                    24 : champions.twitch,
                                    25 : champions.janna,
                                    26 : champions.kindred,
                                    27 : champions.ashe,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/team-comps/4-of-a-kind")
        
        // MARK: BEHOLD THE LIGHT
        beholdTheLight = TeamComp(name: "Behold The Light",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.nineTwoOne.rawValue,
                              earlyUnits: [champions.nasus, champions.jax, champions.vayne, champions.yasuo],
                              midUnits: [champions.nasus, champions.aatrox, champions.vayne, champions.yasuo, champions.jax, champions.soraka],
                              units: [champions.aatrox, champions.jax, champions.nasus, champions.soraka, champions.vayne, champions.yorick, champions.kindred, champions.masterYi],
                              carries: [champions.vayne, champions.masterYi],
                              carryItems: [
                                champions.vayne :
                                    [items.guinsoosRageblade, items.runaansHurricane],
                                champions.masterYi :
                                    [items.talismanOfLight]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    3 : champions.aatrox,
                                    5 : champions.nasus,
                                    8 : champions.masterYi,
                                    14 : champions.yorick,
                                    22 : champions.jax,
                                    25 : champions.vayne,
                                    26 : champions.soraka,
                                    28 : champions.kindred,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/team-comps/behold-the-light")
        
        
    }
    
    
    
    
}

