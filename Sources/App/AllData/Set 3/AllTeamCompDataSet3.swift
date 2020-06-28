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
            astroSnipers, battlecastBlasters,
            //battlecastRebels,
            rebelBlademasters,
            brawlerBlasters, hyperrollSorcerers, mechInfiltrator, sorcerers, cybernetics,
            protectorMystics, mechSorcerers,
            vanguardMystics, rebelDemolitionists, darkStarSnipers,
            battlecast, mechRebel
        ]
    }()
    
    
    
    
    /////////////// https://tft.mobalytics.gg/team-comp ///////
    
    let astroSnipers: TeamComp
    let battlecastBlasters: TeamComp
    //let battlecastRebels: TeamComp
    let rebelBlademasters: TeamComp
    
    let brawlerBlasters: TeamComp
    let hyperrollSorcerers: TeamComp
    let mechInfiltrator: TeamComp
    let sorcerers: TeamComp
    let cybernetics: TeamComp
    
    let protectorMystics: TeamComp
    let mechSorcerers: TeamComp
    
    let vanguardMystics: TeamComp
    let rebelDemolitionists: TeamComp
    let darkStarSnipers: TeamComp
    
    let battlecast: TeamComp
    let mechRebel: TeamComp

    
    init() {
        let champions = ChampionsSet3.shared
        let items = ItemsSet3.shared
        
        // MARK: ASTRO SNIPERS
        astroSnipers = TeamComp(name: "Astro Snipers",
                                   teamCompSet: .set3,
                                   tier: .B,
                                   patch: "10.13",
                                   
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
                                   
                                   carries: [champions.jhin, champions.teemo, champions.gnar],
                                   
                                   carryItems: [
                                    champions.jhin :
                                        [
                                            items.giantSlayer,
                                            items.infinityEdge,
                                            items.lastWhisper
                                    ],
                                    champions.teemo :
                                        [
                                            items.rabadonsDeathcap,
                                            items.blueBuff
                                    ],
                                    champions.gnar :
                                        [
                                            items.ionicSpark
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.jhin],
                                   
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
                                   patch: "10.13",
                                   
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
        
        
        
        // MARK: REBEL BLADEMASTERS
        rebelBlademasters = TeamComp(name: "Rebel Blademasters",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.13",
                                   
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
                                            items.guardianAngel
                                    ],
                                    champions.masterYi :
                                        [
                                            items.guinsoosRageblade,
                                            items.quicksilver,
                                            items.rapidFirecannon
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
                                   tier: .S,
                                   patch: "10.13",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.leona,
                                    champions.blitzcrank,
                                    champions.lucian,
                                    champions.ezreal,
                                    champions.vi
            ],
                                   
                                   units: [
                                    champions.malphite,
                                    champions.blitzcrank,
                                    champions.ezreal,
                                    champions.vi,
                                    champions.gnar,
                                    champions.jinx,
                                    champions.soraka,
                                    champions.lulu
            ],
                                   
                                   carries: [champions.ezreal, champions.gnar, champions.jinx],
                                   
                                   carryItems: [
                                    champions.ezreal :
                                        [
                                            items.redBuff
                                    ],
                                    champions.gnar:
                                        [
                                            items.frozenHeart,
                                            items.ionicSpark
                                    ],
                                    champions.jinx:
                                        [
                                            items.giantSlayer,
                                            items.giantSlayer,
                                            items.guardianAngel
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.jinx],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        2 : champions.malphite,
                                        4 : champions.gnar,
                                        6 : champions.vi,
                                        22 : champions.lulu,
                                        23 : champions.ezreal,
                                        25 : champions.soraka,
                                        27 : champions.jinx,
                                        28 : champions.blitzcrank
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: HYPERROLL SORCERERS
        hyperrollSorcerers = TeamComp(name: "Hyperroll Sorcerers",
                                   teamCompSet: .set3,
                                   tier: .C,
                                   patch: "10.13",
                                   
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
                                   tier: .B,
                                   patch: "10.13",
                                   
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
                                   tier: .S,
                                   patch: "10.13",
                                   
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
                                    champions.annie,
                                    champions.syndra,
                                    champions.riven,
                                    champions.viktor,
                                    champions.janna
            ],
                                   
                                   carries: [champions.viktor, champions.riven, champions.janna],
                                   
                                   carryItems: [
                                    champions.viktor :
                                        [
                                            items.blueBuff,
                                            items.morellonomicon
                                    ],
                                    champions.riven:
                                        [
                                            items.guardianAngel,
                                            items.quicksilver,
                                            items.rabadonsDeathcap
                                    ],
                                    champions.janna:
                                        [
                                            items.chaliceOfPower
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.riven],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.riven,
                                        5 : champions.annie,
                                        22 : champions.zoe,
                                        24 : champions.ahri,
                                        25 : champions.janna,
                                        26 : champions.viktor,
                                        27 : champions.syndra,
                                        28 : champions.twistedFate
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: CYBERNETICS
        cybernetics = TeamComp(name: "Cybernetics",
                                   teamCompSet: .set3,
                                   tier: .S,
                                   patch: "10.13",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.leona,
                                    champions.blitzcrank,
                                    champions.lucian,
                                    champions.ezreal,
                                    champions.vi
            ],
                                   
                                   units: [
                                    champions.fiora,
                                    champions.leona,
                                    champions.ashe,
                                    champions.vayne,
                                    champions.vi,
                                    champions.irelia,
                                    champions.wukong,
                                    champions.ekko,
                                    champions.thresh
            ],
                                   
                                   carries: [champions.leona, champions.vayne, champions.irelia, champions.ekko],
                                   
                                   carryItems: [
                                    champions.leona :
                                        [
                                            items.ionicSpark
                                    ],
                                    champions.vayne:
                                        [
                                            items.giantSlayer,
                                            items.infinityEdge,
                                            items.lastWhisper
                                    ],
                                    champions.irelia:
                                        [
                                            items.thiefsGloves
                                    ],
                                    champions.ekko:
                                        [
                                            items.redBuff
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.vayne],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        2 : champions.vi,
                                        3 : champions.wukong,
                                        4 : champions.fiora,
                                        5 : champions.irelia,
                                        6 : champions.leona,
                                        22 : champions.ashe,
                                        23 : champions.vayne,
                                        25 : champions.thresh,
                                        28 : champions.ekko
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: PROTECTOR MYSTICS
        protectorMystics = TeamComp(name: "Protector Mystics",
                                   teamCompSet: .set3,
                                   tier: .B,
                                   patch: "10.13",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.kogmaw,
                                    champions.rakan,
                                    champions.xinZhao,
                                    champions.bard,
                                    champions.cassiopeia
            ],
                                   
                                   units: [
                                    champions.rakan,
                                    champions.xinZhao,
                                    champions.cassiopeia,
                                    champions.karma,
                                    champions.soraka,
                                    champions.lulu,
                                    champions.ashe,
                                    champions.urgot
            ],
                                   
                                   carries: [champions.xinZhao, champions.cassiopeia],
                                   
                                   carryItems: [
                                    champions.xinZhao :
                                        [
                                            items.brambleVest,
                                            items.dragonsClaw,
                                            items.titansResolve
                                    ],
                                    champions.cassiopeia:
                                        [
                                            items.blueBuff,
                                            items.morellonomicon,
                                            items.protectorsChestguard
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.rakan, champions.xinZhao, champions.cassiopeia],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.rakan,
                                        5 : champions.xinZhao,
                                        9 : champions.urgot,
                                        10 : champions.cassiopeia,
                                        12 : champions.karma,
                                        22 : champions.soraka,
                                        27 : champions.ashe,
                                        28 : champions.lulu
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: MECH SORCERERS
        mechSorcerers = TeamComp(name: "Mech Sorcerers",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.13",
                                   
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
        
        
        // MARK: VANGUARD MYSTICS
        vanguardMystics = TeamComp(name: "Vanguard Mystics",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.13",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.darius,
                                    champions.mordekaiser,
                                    champions.bard,
                                    champions.cassiopeia,
                                    champions.jayce
            ],
                                   
                                   units: [
                                    champions.mordekaiser,
                                    champions.nautilus,
                                    champions.jayce,
                                    champions.cassiopeia,
                                    champions.karma,
                                    champions.soraka,
                                    champions.wukong,
                                    champions.lulu
            ],
                                   
                                   carries: [champions.jayce, champions.cassiopeia],
                                   
                                   carryItems: [
                                    champions.jayce :
                                        [
                                            items.dragonsClaw,
                                            items.guardianAngel,
                                            items.ionicSpark
                                    ],
                                    champions.cassiopeia:
                                        [
                                            items.blueBuff,
                                            items.morellonomicon,
                                            items.rapidFirecannon
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.jayce, champions.cassiopeia],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        1 : champions.nautilus,
                                        3 : champions.mordekaiser,
                                        5 : champions.jayce,
                                        7 : champions.wukong,
                                        22 : champions.soraka,
                                        25 : champions.lulu,
                                        27 : champions.cassiopeia,
                                        28 : champions.karma
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: REBEL DEMOLITIONISTS
        rebelDemolitionists = TeamComp(name: "Rebel Demolitionists",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.13",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.ziggs,
                                    champions.malphite,
                                    champions.blitzcrank,
                                    champions.ezreal,
                                    champions.jinx
            ],
                                   
                                   units: [
                                    champions.ziggs,
                                    champions.blitzcrank,
                                    champions.ezreal,
                                    champions.gnar,
                                    champions.jinx,
                                    champions.soraka,
                                    champions.aurelionSol,
                                    champions.lulu,
                                    champions.gangplank
            ],
                                   
                                   carries: [champions.jinx, champions.gangplank],
                                   
                                   carryItems: [
                                    champions.jinx :
                                        [
                                            items.giantSlayer,
                                            items.guardianAngel,
                                            items.redBuff
                                    ],
                                    champions.gangplank:
                                        [
                                            items.guardianAngel,
                                            items.ionicSpark,
                                            items.rabadonsDeathcap
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.jinx],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        2 : champions.blitzcrank,
                                        4 : champions.gangplank,
                                        6 : champions.gnar,
                                        16 : champions.ziggs,
                                        22 : champions.aurelionSol,
                                        23 : champions.jinx,
                                        25 : champions.soraka,
                                        27 : champions.ezreal,
                                        28 : champions.lulu
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: DARK STAR SNIPERS
        darkStarSnipers = TeamComp(name: "Dark Star Snipers",
                                   teamCompSet: .set3,
                                   tier: .B,
                                   patch: "10.13",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.mordekaiser,
                                    champions.bard,
                                    champions.jayce,
                                    champions.karma,
                                    champions.jhin
            ],
                                   
                                   units: [
                                    champions.mordekaiser,
                                    champions.ashe,
                                    champions.karma,
                                    champions.jhin,
                                    champions.wukong,
                                    champions.lulu,
                                    champions.thresh,
                                    champions.xerath
            ],
                                   
                                   carries: [champions.jhin, champions.xerath],
                                   
                                   carryItems: [
                                    champions.jhin :
                                        [
                                            items.guardianAngel,
                                            items.infinityEdge,
                                            items.lastWhisper
                                    ],
                                    champions.xerath:
                                        [
                                            items.guinsoosRageblade,
                                            items.quicksilver,
                                            items.rabadonsDeathcap
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.jhin],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.mordekaiser,
                                        5 : champions.wukong,
                                        11 : champions.thresh,
                                        22 : champions.lulu,
                                        23 : champions.ashe,
                                        25 : champions.xerath,
                                        27 : champions.jhin,
                                        28 : champions.karma
                                   ]) ,
                                   webLink: nil)
        
        
        // MARK: BATTLECAST
        battlecast = TeamComp(name: "Battlecast",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.13",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.illaoi,
                                    champions.blitzcrank,
                                    champions.kogmaw,
                                    champions.nautilus,
                                    champions.ezreal
            ],
                                   
                                   units: [
                                    champions.illaoi,
                                    champions.nocturne,
                                    champions.blitzcrank,
                                    champions.kogmaw,
                                    champions.cassiopeia,
                                    champions.ezreal,
                                    champions.viktor,
                                    champions.urgot
            ],
                                   
                                   carries: [champions.illaoi, champions.kogmaw, champions.viktor],
                                   
                                   carryItems: [
                                    champions.illaoi :
                                        [
                                            items.brambleVest,
                                            items.ionicSpark
                                    ],
                                    champions.kogmaw:
                                        [
                                            items.giantSlayer,
                                            items.redBuff,
                                            items.runaansHurricane
                                    ],
                                    champions.viktor:
                                        [
                                            items.morellonomicon
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.illaoi, champions.kogmaw],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.blitzcrank,
                                        4 : champions.illaoi,
                                        5 : champions.ezreal,
                                        19 : champions.urgot,
                                        22 : champions.nocturne,
                                        23 : champions.kogmaw,
                                        25 : champions.viktor,
                                        28 : champions.cassiopeia
                                   ]) ,
                                   webLink: nil)
        
        // MARK: Mech Rebels
        mechRebel = TeamComp(name: "Mech Rebel",
                                   teamCompSet: .set3,
                                   tier: .B,
                                   patch: "10.13",
                                   
                                   earlyUnits: [],
                                   
                                   midUnits: [
                                    champions.ziggs,
                                    champions.annie,
                                    champions.zed,
                                    champions.rumble,
                                    champions.fizz
            ],
                                   
                                   units: [
                                    champions.twistedFate,
                                    champions.ziggs,
                                    champions.annie,
                                    champions.zed,
                                    champions.rumble,
                                    champions.ezreal,
                                    champions.fizz,
                                    champions.jinx
            ],
                                   
                                   carries: [champions.rumble, champions.jinx],
                                   
                                   carryItems: [
                                    champions.rumble :
                                        [
                                            items.brambleVest,
                                            items.quicksilver,
                                            items.titansResolve
                                    ],
                                    champions.jinx:
                                        [
                                            items.giantSlayer,
                                            items.redBuff,
                                            items.guardianAngel
                                    ]
            ],
                                   
                                   threeStarUnits: [champions.annie, champions.rumble, champions.jinx],
                                   
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.annie,
                                        4 : champions.rumble,
                                        5 : champions.fizz,
                                        22 : champions.twistedFate,
                                        23 : champions.ezreal,
                                        25 : champions.zed,
                                        27 : champions.jinx,
                                        28 : champions.ziggs
                                   ]) ,
                                   webLink: nil)
        
        
        }
}
