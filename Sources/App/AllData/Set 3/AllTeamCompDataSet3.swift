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
            brawlerBlasters,
            chronoSnipers,
            cyberneticBlademasters,
            //brawlerBlademasters,
            mechInfiltrators,
            vanguardMystics,
            protectorInfiltrators,
            rebelBlademasters,
            mechSorcerers
        ]
    }()
    
    
    
    
    /////////////// https://tft.mobalytics.gg/team-comp ///////
    
    let brawlerBlasters: TeamComp
    let chronoSnipers: TeamComp
    
    let cyberneticBlademasters: TeamComp
    //let brawlerBlademasters: TeamComp
    let mechInfiltrators: TeamComp
    let vanguardMystics: TeamComp
    
    let protectorInfiltrators: TeamComp
    let rebelBlademasters: TeamComp
    let mechSorcerers: TeamComp
    
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
                                 tier: .A,
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
        
        
            // MARK: CYBERNETIC BLADEMASTERS
            cyberneticBlademasters = TeamComp(name: "Cybernetic Blademasters",
                                     teamCompSet: .set3,
                                     tier: .S,
                                     patch: "10.6",
                                     
                                     earlyUnits: [],
                                     
                                     midUnits: [
                                        champions.fiora,
                                        champions.blitzcrank,
                                        champions.shen,
                                        champions.vi,
                                        champions.irelia
                ],
                                     
                                     units: [
                                        champions.leona,
                                        champions.fiora,
                                        champions.lucian,
                                        champions.vi,
                                        champions.irelia,
                                        champions.kayle,
                                        champions.ekko,
                                        champions.missFortune
                ],
                                     
                                     carries: [champions.irelia, champions.ekko, champions.lucian],
                                     carryItems: [
                                        champions.irelia :
                                            [
                                                items.infiltratorsTalons,
                                        ],
                                        champions.ekko:
                                            [
                                                items.ionicSpark
                                        ],
                                        champions.lucian :
                                            [
                                                items.handOfJustice
                                        ]
                ],
                                     teamCompPositions:  TeamCompPositions(champsPositions:
                                        [
                                            2 : champions.leona,
                                            4 : champions.fiora,
                                            6 : champions.vi,
                                            22 : champions.ekko,
                                            23 : champions.irelia,
                                            24 : champions.kayle,
                                            26 : champions.lucian,
                                            28 : champions.missFortune
                                            
                                     ]) ,
                                     webLink: nil)
        
        
        // MARK: MECH INFILTRATORS
        mechInfiltrators = TeamComp(name: "Mech Infiltrators",
                                 teamCompSet: .set3,
                                 tier: .S,
                                 patch: "10.6",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.ziggs,
                                    champions.annie,
                                    champions.rumble,
                                    champions.shaco,
                                    champions.fizz
            ],
                                 
                                 units: [
                                    champions.annie,
                                    champions.kaisa,
                                    champions.rumble,
                                    champions.shaco,
                                    champions.fizz,
                                    champions.soraka,
                                    champions.ekko,
                                    champions.lulu
            ],
                                 
                                 carries: [champions.kaisa, champions.shaco, champions.fizz],
                                 carryItems: [
                                    champions.kaisa :
                                        [
                                            items.demolitionistsCharge,
                                            items.seraphsEmbrace
                                    ],
                                    champions.shaco:
                                        [
                                            items.infinityEdge
                                    ],
                                    champions.fizz :
                                        [
                                            items.guardianAngel,
                                            items.ionicSpark,
                                            items.warmogsArmor
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.annie,
                                        5 : champions.rumble,
                                        6 : champions.fizz,
                                        22 : champions.soraka,
                                        23 : champions.ekko,
                                        25 : champions.shaco,
                                        27 : champions.kaisa,
                                        28 : champions.lulu
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: VANGUARD MYSTICS
        vanguardMystics = TeamComp(name: "Vanguard Mystics",
                                 teamCompSet: .set3,
                                 tier: .S,
                                 patch: "10.6",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.poppy,
                                    champions.darius,
                                    champions.mordekaiser,
                                    champions.jayce,
                                    champions.wukong
            ],
                                 
                                 units: [
                                    champions.poppy,
                                    champions.mordekaiser,
                                    champions.sona,
                                    champions.jayce,
                                    champions.karma,
                                    champions.soraka,
                                    champions.wukong,
                                    champions.lulu
            ],
                                 
                                 carries: [champions.jayce, champions.wukong, champions.lulu],
                                 carryItems: [
                                    champions.jayce :
                                        [
                                            items.darkStarsHeart,
                                            items.guardianAngel,
                                            items.ionicSpark
                                    ],
                                    champions.wukong:
                                        [
                                            items.guardianAngel,
                                            items.morellonomicon
                                    ],
                                    champions.lulu :
                                        [
                                            items.spearOfShojin
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        1 : champions.poppy,
                                        3 : champions.jayce,
                                        5 : champions.mordekaiser,
                                        7 : champions.wukong,
                                        9 : champions.karma,
                                        18 : champions.sona,
                                        22 : champions.lulu,
                                        28 : champions.soraka
                                        
                                 ]) ,
                                 webLink: nil)

        // MARK: PROTECTOR INFILTRATORS
        protectorInfiltrators = TeamComp(name: "Protector Infiltrators",
                                 teamCompSet: .set3,
                                 tier: .A,
                                 patch: "10.6",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.jarvan,
                                    champions.rakan,
                                    champions.xinZhao,
                                    champions.neeko,
                                    champions.karma
            ],
                                 
                                 units: [
                                    champions.jarvan,
                                    champions.kaisa,
                                    champions.rakan,
                                    champions.xinZhao,
                                    champions.karma,
                                    champions.shaco,
                                    champions.fizz,
                                    champions.ekko
            ],
                                 
                                 carries: [champions.kaisa, champions.shaco],
                                 carryItems: [
                                    champions.kaisa :
                                        [
                                            items.morellonomicon,
                                            items.protectorsChestguard,
                                            items.seraphsEmbrace
                                    ],
                                    champions.shaco:
                                        [
                                            items.bloodthirster,
                                            items.infinityEdge,
                                            items.seraphsEmbrace
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.jarvan,
                                        5 : champions.xinZhao,
                                        11 : champions.rakan,
                                        17 : champions.karma,
                                        22 : champions.ekko,
                                        24 : champions.shaco,
                                        26 : champions.kaisa,
                                        28 : champions.fizz
                                        
                                 ]) ,
                                 webLink: nil)
        
        // MARK: REBEL BLADEMASTERS
        rebelBlademasters = TeamComp(name: "Rebel Blademasters",
                                 teamCompSet: .set3,
                                 tier: .A,
                                 patch: "10.6",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.malphite,
                                    champions.blitzcrank,
                                    champions.sona,
                                    champions.ezreal,
                                    champions.jinx
            ],
                                 
                                 units: [
                                    champions.malphite,
                                    champions.sona,
                                    champions.yasuo,
                                    champions.masterYi,
                                    champions.jinx,
                                    champions.aurelionSol,
                                    champions.lulu,
                                    champions.missFortune
            ],
                                 
                                 carries: [champions.jinx, champions.aurelionSol, champions.missFortune],
                                 carryItems: [
                                    champions.jinx :
                                        [
                                            items.bladeOfTheRuinedKing,
                                            items.giantSlayer,
                                            items.redBuff
                                    ],
                                    champions.aurelionSol:
                                        [
                                            items.morellonomicon,
                                            items.seraphsEmbrace
                                    ],
                                    champions.missFortune:
                                        [
                                            items.seraphsEmbrace
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        2 : champions.malphite,
                                        8 : champions.yasuo,
                                        9 : champions.aurelionSol,
                                        15 : champions.sona,
                                        16 : champions.jinx,
                                        17: champions.masterYi,
                                        22 : champions.missFortune,
                                        23 : champions.lulu
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: MECH SORCERERS
        mechSorcerers = TeamComp(name: "Mech Sorcerers",
                                 teamCompSet: .set3,
                                 tier: .A,
                                 patch: "10.6",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.ziggs,
                                    champions.ahri,
                                    champions.annie,
                                    champions.rumble,
                                    champions.fizz
            ],
                                 
                                 units: [
                                    champions.zoe,
                                    champions.ahri,
                                    champions.annie,
                                    champions.lux,
                                    champions.rumble,
                                    champions.syndra,
                                    champions.fizz,
                                    champions.velkoz
            ],
                                 
                                 carries: [champions.annie, champions.syndra],
                                 carryItems: [
                                    champions.annie :
                                        [
                                            items.guardianAngel,
                                            items.ionicSpark,
                                            items.warmogsArmor
                                    ],
                                    champions.syndra:
                                        [
                                            items.jeweledGauntlet,
                                            items.rabadonsDeathcap,
                                            items.seraphsEmbrace
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.annie,
                                        5 : champions.rumble,
                                        6 : champions.fizz,
                                        22 : champions.lux,
                                        24 : champions.velkoz,
                                        25: champions.syndra,
                                        26 : champions.ahri,
                                        28 : champions.zoe
                                        
                                 ]) ,
                                 webLink: nil)

        
        
        
        }
}
