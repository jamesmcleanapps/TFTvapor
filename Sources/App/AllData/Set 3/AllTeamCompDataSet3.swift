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
//
            astroSnipers, battlecastBlasters, battlecastRebels, rebelBlademasters,
            brawlerBlasters, hyperrollSorcerers, mechInfiltrator, sorcerers, cyberneticBlademasters
        ]
    }()
    
    
    
    
    /////////////// https://tft.mobalytics.gg/team-comp ///////
    
    let astroSnipers: TeamComp
    let battlecastBlasters: TeamComp
    let battlecastRebels: TeamComp
    let rebelBlademasters: TeamComp
    
    let brawlerBlasters: TeamComp
    let hyperrollSorcerers: TeamComp
    let mechInfiltrator: TeamComp
    let sorcerers: TeamComp
    let cyberneticBlademasters: TeamComp
    
    let protectorMystics: TeamComp
    let mechSorcerers: TeamComp

    
    init() {
        let champions = ChampionsSet3.shared
        let items = ItemsSet3.shared
        
        // MARK: ASTRO SNIPERS
        astroSnipers = TeamComp(name: "Astro Snipers",
                                   teamCompSet: .set3,
                                   tier: .S,
                                   patch: "10.12",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.mordekaiser,
                                    champions.nautilus,
                                    champions.bard,
                                    champions.jhin,
                                    champions.teemo
            ],
                                   
                                   units: [
                                    champions.nautilus,
                                    champions.karma,
                                    champions.gnar,
                                    champions.jhin,
                                    champions.teemo,
                                    champions.wukong,
                                    champions.lulu,
                                    champions.thresh
            ],
                                   
                                   carries: [champions.jhin, champions.teemo, champions.wukong],
                                   
                                   carryItems: [
                                    champions.jhin :
                                        [
                                            items.giantSlayer,
                                            items.guardianAngel,
                                            items.runaansHurricane
                                    ],
                                    champions.teemo :
                                        [
                                            items.rabadonsDeathcap,
                                            items.spearOfShojin
                                    ],
                                    champions.wukong :
                                        [
                                            items.frozenHeart
                                    ]
            ],
                                   
                                   threeStarUnits: nil,
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.nautilus,
                                        4 : champions.gnar,
                                        5 : champions.wukong,
                                        22 : champions.karma,
                                        23 : champions.teemo,
                                        25 : champions.thresh,
                                        27 : champions.jhin,
                                        28 : champions.lulu
                                   ]) ,
                                   webLink: nil)
        
        // MARK: BATTLECAST BLASTERS
        battlecastBlasters = TeamComp(name: "Battlecast Blasters",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.12",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.illaoi,
                                    champions.blitzcrank,
                                    champions.kogmaw,
                                    champions.bard,
                                    champions.ezreal
            ],
                                   
                                   units: [
                                    champions.illaoi,
                                    champions.kogmaw,
                                    champions.rakan,
                                    champions.cassiopeia,
                                    champions.gnar,
                                    champions.jinx,
                                    champions.lulu,
                                    champions.urgot
            ],
                                   
                                   carries: [champions.kogmaw, champions.jinx, champions.urgot],
                                   
                                   carryItems: [
                                    champions.kogmaw :
                                        [
                                            items.redBuff,
                                            items.statikkShiv,
                                            items.statikkShiv
                                    ],
                                    champions.jinx :
                                        [
                                            items.giantSlayer,
                                            items.guardianAngel
                                    ],
                                    champions.urgot :
                                        [
                                            items.blueBuff
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.kogmaw],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.illaoi,
                                        4 : champions.gnar,
                                        5 : champions.rakan,
                                        19 : champions.urgot,
                                        22 : champions.lulu,
                                        23 : champions.kogmaw,
                                        25 : champions.jinx,
                                        28 : champions.cassiopeia
                                   ]) ,
                                   webLink: nil)
        
        // MARK: BATTLECAST REBELS
        battlecastRebels = TeamComp(name: "Battlecast Rebels",
                                   teamCompSet: .set3,
                                   tier: .S,
                                   patch: "10.12",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.illaoi,
                                    champions.blitzcrank,
                                    champions.kogmaw,
                                    champions.bard,
                                    champions.ezreal
            ],
                                   
                                   units: [
                                    champions.illaoi,
                                    champions.malphite,
                                    champions.blitzcrank,
                                    champions.kogmaw,
                                    champions.gnar,
                                    champions.jinx,
                                    champions.aurelionSol,
                                    champions.urgot
            ],
                                   
                                   carries: [champions.kogmaw, champions.jinx, champions.aurelionSol],
                                   
                                   carryItems: [
                                    champions.kogmaw :
                                        [
                                            items.statikkShiv
                                    ],
                                    champions.jinx:
                                        [
                                            items.giantSlayer,
                                            items.guardianAngel
                                    ],
                                    champions.aurelionSol :
                                        [
                                            items.battlecastHexcore,
                                            items.blueBuff,
                                            items.morellonomicon
                                    ]
            ],
                                   
                                   threeStarUnits: nil,
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        17 : champions.gnar,
                                        18 : champions.illaoi,
                                        19 : champions.malphite,
                                        20 : champions.blitzcrank,
                                        24 : champions.kogmaw,
                                        25 : champions.aurelionSol,
                                        26 : champions.jinx,
                                        27 : champions.urgot
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: REBEL BLADEMASTERS
        rebelBlademasters = TeamComp(name: "Rebel Blademasters",
                                   teamCompSet: .set3,
                                   tier: .S,
                                   patch: "10.12",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.nocturne,
                                    champions.shen,
                                    champions.yasuo,
                                    champions.zed,
                                    champions.masterYi
            ],
                                   
                                   units: [
                                    champions.shen,
                                    champions.yasuo,
                                    champions.zed,
                                    champions.masterYi,
                                    champions.fizz,
                                    champions.irelia,
                                    champions.riven
            ],
                                   
                                   carries: [champions.yasuo, champions.zed, champions.masterYi],
                                   
                                   carryItems: [
                                    champions.yasuo :
                                        [
                                            items.thiefsGloves
                                    ],
                                    champions.zed:
                                        [
                                            items.bladeOfTheRuinedKing,
                                            items.giantSlayer,
                                            items.guardianAngel
                                    ],
                                    champions.masterYi :
                                        [
                                            items.brambleVest,
                                            items.quicksilver
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.shen, champions.yasuo, champions.zed, champions.masterYi],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        11 : champions.shen,
                                        16 : champions.yasuo,
                                        18 : champions.zed,
                                        19 : champions.masterYi,
                                        21 : champions.fizz,
                                        25 : champions.irelia,
                                        26 : champions.riven
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: BRAWLER BLASTERS
        brawlerBlasters = TeamComp(name: "Brawler Blasters",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.12",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.leona,
                                    champions.blitzcrank,
                                    champions.lucian,
                                    champions.ezreal,
                                    champions.vi
            ],
                                   
                                   units: [
                                    champions.illaoi,
                                    champions.graves,
                                    champions.malphite,
                                    champions.blitzcrank,
                                    champions.kogmaw,
                                    champions.ezreal,
                                    champions.gnar,
                                    champions.jinx
            ],
                                   
                                   carries: [champions.kogmaw, champions.ezreal, champions.gnar, champions.jinx],
                                   
                                   carryItems: [
                                    champions.kogmaw :
                                        [
                                            items.redBuff
                                    ],
                                    champions.ezreal:
                                        [
                                            items.blueBuff
                                    ],
                                    champions.gnar:
                                        [
                                            items.thiefsGloves
                                    ],
                                    champions.jinx:
                                        [
                                            items.giantSlayer,
                                            items.giantSlayer,
                                            items.guardianAngel
                                    ]
            ],
                                   
                                   threeStarUnits: nil,
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        1 : champions.illaoi,
                                        3 : champions.gnar,
                                        5 : champions.graves,
                                        7 : champions.malphite,
                                        22 : champions.kogmaw,
                                        25 : champions.ezreal,
                                        27 : champions.jinx,
                                        28 : champions.blitzcrank
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: HYPERROLL SORCERERS
        hyperrollSorcerers = TeamComp(name: "Hyperroll Sorcerers",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.12",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.caitlyn,
                                    champions.leona,
                                    champions.poppy,
                                    champions.twistedFate,
                                    champions.zoe
            ],
                                   
                                   units: [
                                    champions.poppy,
                                    champions.twistedFate,
                                    champions.zoe,
                                    champions.ahri,
                                    champions.syndra,
                                    champions.wukong,
                                    champions.viktor,
                                    champions.xerath
            ],
                                   
                                   carries: [champions.poppy, champions.twistedFate],
                                   
                                   carryItems: [
                                    champions.poppy :
                                        [
                                            items.brambleVest,
                                            items.dragonsClaw,
                                            items.rabadonsDeathcap
                                    ],
                                    champions.twistedFate:
                                        [
                                            items.morellonomicon,
                                            items.spearOfShojin,
                                            items.spearOfShojin
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.poppy, champions.twistedFate, champions.zoe],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.wukong,
                                        5 : champions.poppy,
                                        22 : champions.zoe,
                                        24 : champions.ahri,
                                        25 : champions.xerath,
                                        26 : champions.twistedFate,
                                        27 : champions.viktor,
                                        28 : champions.syndra
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: MECH INFILTRATOR
        mechInfiltrator = TeamComp(name: "Mech Infiltrator",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.12",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.nocturne,
                                    champions.annie,
                                    champions.zed,
                                    champions.rumble,
                                    champions.fizz
            ],
                                   
                                   units: [
                                    champions.nocturne,
                                    champions.annie,
                                    champions.zed,
                                    champions.rumble,
                                    champions.fizz,
                                    champions.viktor,
                                    champions.ekko
            ],
                                   
                                   carries: [champions.zed, champions.rumble],
                                   
                                   carryItems: [
                                    champions.zed :
                                        [
                                            items.deathBlade,
                                            items.giantSlayer,
                                            items.guardianAngel
                                    ],
                                    champions.rumble:
                                        [
                                            items.brambleVest,
                                            items.quicksilver,
                                            items.titansResolve
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.annie, champions.zed, champions.rumble, champions.fizz],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        10 : champions.rumble,
                                        11 : champions.fizz,
                                        12 : champions.annie,
                                        22 : champions.ekko,
                                        23 : champions.zed,
                                        27 : champions.nocturne,
                                        28 : champions.viktor
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: SORCERERS
        sorcerers = TeamComp(name: "Sorcerers",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.12",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.poppy,
                                    champions.twistedFate,
                                    champions.zoe,
                                    champions.ahri,
                                    champions.syndra
            ],
                                   
                                   units: [
                                    champions.twistedFate,
                                    champions.zoe,
                                    champions.ahri,
                                    champions.syndra,
                                    champions.viktor,
                                    champions.gnar,
                                    champions.gangplank,
                                    champions.xerath
            ],
                                   
                                   carries: [champions.viktor, champions.gangplank, champions.xerath],
                                   
                                   carryItems: [
                                    champions.viktor :
                                        [
                                            items.morellonomicon
                                    ],
                                    champions.gangplank:
                                        [
                                            items.guardianAngel,
                                            items.ionicSpark,
                                            items.rabadonsDeathcap
                                    ],
                                    champions.xerath:
                                        [
                                            items.guinsoosRageblade,
                                            items.quicksilver
                                    ]
            ],
                                   
                                   threeStarUnits: nil,
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.gnar,
                                        5 : champions.gangplank,
                                        22 : champions.zoe,
                                        24 : champions.ahri,
                                        25 : champions.syndra,
                                        26 : champions.xerath,
                                        27 : champions.viktor,
                                        28 : champions.twistedFate
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: CYBERNETIC BLADEMASTERS
        cyberneticBlademasters = TeamComp(name: "Cybernetic Blademasters",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.12",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.blitzcrank,
                                    champions.lucian,
                                    champions.ezreal,
                                    champions.vayne,
                                    champions.vi
            ],
                                   
                                   units: [
                                    champions.fiora,
                                    champions.lucian,
                                    champions.vayne,
                                    champions.vi,
                                    champions.irelia,
                                    champions.riven,
                                    champions.ekko,
                                    champions.thresh
            ],
                                   
                                   carries: [champions.lucian, champions.vayne, champions.irelia, champions.ekko],
                                   
                                   carryItems: [
                                    champions.lucian :
                                        [
                                            items.redBuff
                                    ],
                                    champions.vayne:
                                        [
                                            items.thiefsGloves
                                    ],
                                    champions.irelia:
                                        [
                                            items.guardianAngel,
                                            items.infinityEdge,
                                            items.lastWhisper
                                    ],
                                    champions.ekko:
                                        [
                                            items.thiefsGloves
                                    ]
            ],
                                   
                                   threeStarUnits: nil,
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        2 : champions.vi,
                                        3 : champions.riven,
                                        4 : champions.lucian,
                                        5 : champions.irelia,
                                        6 : champions.fiora,
                                        12 : champions.thresh,
                                        25 : champions.ekko,
                                        26 : champions.vayne
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: PROTECTOR MYSTICS
        protectorMystics = TeamComp(name: "Protector Mystics",
                                   teamCompSet: .set3,
                                   tier: .S,
                                   patch: "10.12",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.kogmaw,
                                    champions.rakan,
                                    champions.xinZhao,
                                    champions.bard,
                                    champions.cassiopeia
            ],
                                   
                                   units: [
                                    champions.jarvan,
                                    champions.rakan,
                                    champions.xinZhao,
                                    champions.cassiopeia,
                                    champions.karma,
                                    champions.soraka,
                                    champions.lulu,
                                    champions.urgot
            ],
                                   
                                   carries: [champions.rakan, champions.xinZhao, champions.cassiopeia],
                                   
                                   carryItems: [
                                    champions.rakan :
                                        [
                                            items.morellonomicon,
                                            items.spearOfShojin
                                    ],
                                    champions.xinZhao:
                                        [
                                            items.brambleVest,
                                            items.dragonsClaw,
                                            items.titansResolve
                                    ],
                                    champions.cassiopeia:
                                        [
                                            items.blueBuff
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.jarvan, champions.rakan, champions.xinZhao],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.jarvan,
                                        4 : champions.rakan,
                                        5 : champions.xinZhao,
                                        9 : champions.urgot,
                                        10 : champions.cassiopeia,
                                        12 : champions.karma,
                                        22 : champions.soraka,
                                        28 : champions.lulu
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: MECH SORCERERS
        mechSorcerers = TeamComp(name: "Mech Sorcerers",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.12",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.twistedFate,
                                    champions.annie,
                                    champions.rumble,
                                    champions.fizz,
                                    champions.riven
            ],
                                   
                                   units: [
                                    champions.twistedFate,
                                    champions.annie,
                                    champions.rumble,
                                    champions.fizz,
                                    champions.viktor,
                                    champions.xerath,
                                    champions.ekko,
                                    champions.gangplank
            ],
                                   
                                   carries: [champions.annie, champions.ekko, champions.gangplank],
                                   
                                   carryItems: [
                                    champions.annie :
                                        [
                                            items.quicksilver,
                                            items.titansResolve
                                    ],
                                    champions.ekko:
                                        [
                                            items.morellonomicon
                                    ],
                                    champions.gangplank:
                                        [
                                            items.guardianAngel,
                                            items.ionicSpark,
                                            items.rabadonsDeathcap
                                    ]
            ],
                                   
                                   threeStarUnits: nil,
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.fizz,
                                        4 : champions.annie,
                                        5 : champions.rumble,
                                        10 : champions.gangplank,
                                        22 : champions.viktor,
                                        25 : champions.ekko,
                                        27 : champions.xerath,
                                        28 : champions.twistedFate
                                   ]) ,
                                   webLink: nil)
        
        

        

        
        
        }
}
