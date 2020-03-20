//
//  AllTeamCompDataSet3.swift
//  App
//
//  Created by James Mclean on 19/03/2020.
//

import Foundation


class TeamCompsSet3 {

static var shared = TeamCompsSet3()

lazy var allTeamComps: [TeamComp] = {
    return [
        brawlerBlasters, chronoSnipers
    ]
}()




/////////////// https://tft.mobalytics.gg/team-comp ///////

let brawlerBlasters: TeamComp
    let chronoSnipers: TeamComp

init() {
let champions = ChampionsSet3.shared
let items = ItemsSet3.shared
    
    // MARK: BRAWLER BLASTERS
    brawlerBlasters = TeamComp(name: "Brawler Blasters",
                      teamCompSet: .set3,
                      tier: .S,
                      patch: "10.6",
                  
                  earlyUnits: [],
                  
                  midUnits: [
                    champions.malphite,
                    champions.blitzcrank,
                    champions.sona,
                    champions.ezreal,
                    champions.jinx],
                  
                  units: [
                    champions.malphite,
                    champions.blitzcrank,
                    champions.lucian,
                    champions.ezreal,
                    champions.vi,
                    champions.chogath,
                    champions.jinx,
                    champions.missFortune
                ],
                  
                  carries: [champions.lucian, champions.jinx, champions.missFortune],
                  carryItems: [
                    champions.lucian :
                        [
                            items.guinsoosRageblade,
                            items.redBuff,
                            items.seraphsEmbrace
                    ],
                    champions.jinx :
                        [
                            items.giantSlayer,
                            items.rapidFirecannon
                    ],
                    champions.missFortune :
                        [
                            items.seraphsEmbrace
                    ]
                ],
                  teamCompPositions:  TeamCompPositions(champsPositions:
                    [
                        3 : champions.vi,
                        5 : champions.chogath,
                        19 : champions.malphite,
                        22 : champions.blitzcrank,
                        23 : champions.ezreal,
                        25 : champions.lucian,
                        26 : champions.jinx,
                        28 : champions.missFortune
                  ]) ,
                  webLink: nil)
    
    // MARK: CHRONO SNIPERS
    chronoSnipers = TeamComp(name: "Chrono Snipers",
                      teamCompSet: .set3,
                      tier: .S,
                      patch: "10.6",
                  
                  earlyUnits: [],
                  
                  midUnits: [
                    champions.caitlyn,
                    champions.blitzcrank,
                    champions.shen,
                    champions.ashe,
                    champions.wukong],
                  
                  units: [
                    champions.caitlyn,
                    champions.blitzcrank,
                    champions.shen,
                    champions.ashe,
                    champions.ezreal,
                    champions.jhin,
                    champions.wukong,
                    champions.thresh
                ],
                  
                  carries: [champions.ashe, champions.jhin, champions.thresh],
                  carryItems: [
                    champions.ashe :
                        [
                            items.guinsoosRageblade,
                            items.spearOfShojin
                    ],
                    champions.jhin:
                        [
                            items.bloodthirster,
                            items.guardianAngel,
                            items.quicksilver
                    ],
                    champions.thresh :
                        [
                            items.spearOfShojin
                    ]
                ],
                  teamCompPositions:  TeamCompPositions(champsPositions:
                    [
                        6 : champions.shen,
                        7 : champions.wukong,
                        14 : champions.thresh,
                        20 : champions.ezreal,
                        21 : champions.blitzcrank,
                        26 : champions.ashe,
                        27 : champions.caitlyn,
                        28 : champions.jhin
                  ]) ,
                  webLink: nil)
}
}
