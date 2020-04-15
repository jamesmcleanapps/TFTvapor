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
            mechSorcerers,
            
            rebelDemolitionists,
            brawlerSorcerers,
            darkStarSnipers,
            hyperRollProtectors,
            valkyrieBlademasters,
            starGuardianSorcerers,
            vanguardInfiltrators,
            
            spacePirateVanguards,
            celestialProtectors,
            
            protectorMystics,
            vanguardSnipers,
            
            chronoBlademasters,
            
            darkStars
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
    
    let rebelDemolitionists: TeamComp
    let brawlerSorcerers: TeamComp
    let darkStarSnipers: TeamComp
    let hyperRollProtectors: TeamComp
    let valkyrieBlademasters: TeamComp
    let starGuardianSorcerers: TeamComp
    let vanguardInfiltrators: TeamComp
    
    let spacePirateVanguards: TeamComp
    let celestialProtectors: TeamComp
    
    let protectorMystics: TeamComp
    let vanguardSnipers: TeamComp
    
    let chronoBlademasters: TeamComp
    
    let darkStars: TeamComp
    
    init() {
        let champions = ChampionsSet3.shared
        let items = ItemsSet3.shared
        
        // MARK: BRAWLER BLASTERS
        brawlerBlasters = TeamComp(name: "Brawler Blasters",
                                   teamCompSet: .set3,
                                   tier: .A,
                                   patch: "10.8",
                                   
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
                                    champions.blitzcrank,
                                    champions.lucian,
                                    champions.ezreal,
                                    champions.vi,
                                    champions.chogath,
                                    champions.jinx,
                                    champions.missFortune
            ],
                                   
                                   carries: [champions.jinx, champions.missFortune],
                                   carryItems: [
                                    champions.jinx :
                                        [
                                            items.giantSlayer,
                                            items.guardianAngel,
                                            items.redBuff
                                    ],
                                    champions.missFortune :
                                        [
                                            items.seraphsEmbrace,
                                            items.quicksilver,
                                            items.rebelMedal
                                    ]
            ],
                                   teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        2 : champions.vi,
                                        4 : champions.chogath,
                                        6 : champions.blitzcrank,
                                        21 : champions.malphite,
                                        22 : champions.lucian,
                                        24 : champions.ezreal,
                                        27 : champions.jinx,
                                        28 : champions.missFortune
                                   ]) ,
                                   webLink: nil)
        
        // MARK: CHRONO SNIPERS
        chronoSnipers = TeamComp(name: "Chrono Snipers",
                                 teamCompSet: .set3,
                                 tier: .B,
                                 patch: "10.8",
                                 
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
                                            items.trapClaw
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
                                     tier: .A,
                                     patch: "10.8",
                                     
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
                                     
                                     carries: [champions.leona, champions.fiora, champions.lucian, champions.vi ,champions.irelia, champions.ekko],
                                     carryItems: [
                                        champions.leona :
                                            [
                                                items.zephyr
                                        ],
                                        champions.fiora :
                                            [
                                                items.thiefsGloves
                                        ],
                                        champions.lucian :
                                            [
                                                items.redBuff
                                        ],
                                        champions.vi :
                                            [
                                                items.ionicSpark
                                        ],
                                        champions.irelia :
                                            [
                                                items.bloodthirster,
                                                items.guardianAngel,
                                                items.infinityEdge
                                        ],
                                        champions.ekko:
                                            [
                                                items.morellonomicon
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
                                 patch: "10.8",
                                 
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
                                    champions.kayle,
                                    champions.ekko,
                                    champions.lux
            ],
                                 
                                 carries: [champions.kaisa, champions.rumble, champions.shaco],
                                 carryItems: [
                                    champions.kaisa :
                                        [
                                            items.seraphsEmbrace,
                                            items.demolitionistsCharge
                                    ],
                                    champions.rumble:
                                        [
                                            items.brambleVest,
                                            items.quicksilver,
                                            items.titansResolve
                                    ],
                                    champions.shaco:
                                    [
                                        items.infinityEdge
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        10 : champions.annie,
                                        11 : champions.rumble,
                                        12 : champions.fizz,
                                        22 : champions.kayle,
                                        23 : champions.shaco,
                                        25 : champions.kaisa,
                                        27 : champions.ekko,
                                        28 : champions.lux
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: VANGUARD MYSTICS
        vanguardMystics = TeamComp(name: "Vanguard Mystics",
                                 teamCompSet: .set3,
                                 tier: .B,
                                 patch: "10.8",
                                 
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
                                 tier: .B,
                                 patch: "10.8",
                                 
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
                                 patch: "10.8",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.malphite,
                                    champions.blitzcrank,
                                    champions.shen,
                                    champions.yasuo,
                                    champions.masterYi
            ],
                                 
                                 units: [
                                    champions.blitzcrank,
                                    champions.shen,
                                    champions.sona,
                                    champions.yasuo,
                                    champions.karma,
                                    champions.masterYi,
                                    champions.soraka,
                                    champions.lulu
            ],
                                 
                                 carries: [champions.yasuo, champions.masterYi],
                                 carryItems: [
                                    champions.yasuo :
                                        [
                                            items.guardianAngel,
                                            items.handOfJustice,
                                            items.infinityEdge
                                    ],
                                    champions.masterYi:
                                        [
                                            items.brambleVest,
                                            items.guinsoosRageblade,
                                            items.quicksilver
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.blitzcrank,
                                        5 : champions.shen,
                                        10 : champions.masterYi,
                                        11 : champions.yasuo,
                                        16 : champions.karma,
                                        18: champions.sona,
                                        25 : champions.soraka,
                                        28 : champions.lulu
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: MECH SORCERERS
        mechSorcerers = TeamComp(name: "Mech Sorcerers",
                                 teamCompSet: .set3,
                                 tier: .A,
                                 patch: "10.8",
                                 
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
        
        
        // MARK: REBEL DEMOLITIONISTS
        rebelDemolitionists = TeamComp(name: "Rebel Demolitionists",
                                 teamCompSet: .set3,
                                 tier: .B,
                                 patch: "10.8",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.shen,
                                    champions.sona,
                                    champions.yasuo,
                                    champions.karma,
                                    champions.masterYi
            ],
                                 
                                 units: [
                                    champions.malphite,
                                    champions.ziggs,
                                    champions.sona,
                                    champions.masterYi,
                                    champions.jinx,
                                    champions.lulu,
                                    champions.aurelionSol,
                                    champions.gangplank
            ],
                                 
                                 carries: [champions.aurelionSol, champions.gangplank, champions.lulu],
                                 carryItems: [
                                    champions.aurelionSol :
                                        [
                                            items.demolitionistsCharge,
                                            items.morellonomicon,
                                            items.seraphsEmbrace
                                    ],
                                    champions.gangplank:
                                        [
                                            items.guardianAngel,
                                            items.rebelMedal
                                    ],
                                    champions.lulu:
                                        [
                                            items.spearOfShojin
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        2 : champions.gangplank,
                                        4 : champions.masterYi,
                                        5 : champions.malphite,
                                        10 : champions.sona,
                                        11 : champions.aurelionSol,
                                        18: champions.jinx,
                                        19: champions.ziggs,
                                        27 : champions.lulu
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: BRAWLER SORCERERS
        brawlerSorcerers = TeamComp(name: "Brawler Sorcerers",
                                 teamCompSet: .set3,
                                 tier: .B,
                                 patch: "10.7",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.caitlyn,
                                    champions.malphite,
                                    champions.blitzcrank,
                                    champions.vi,
                                    champions.chogath
            ],
                                 
                                 units: [
                                    champions.khazix,
                                    champions.malphite,
                                    champions.twistedFate,
                                    champions.blitzcrank,
                                    champions.vi,
                                    champions.chogath,
                                    champions.velkoz
            ],
                                 
                                 carries: [champions.khazix, champions.chogath, champions.velkoz],
                                 carryItems: [
                                    champions.khazix :
                                        [
                                            items.thiefsGloves
                                    ],
                                    champions.chogath:
                                        [
                                            items.guardianAngel,
                                            items.morellonomicon
                                    ],
                                    champions.velkoz:
                                    [
                                        items.jeweledGauntlet,
                                        items.seraphsEmbrace,
                                        items.seraphsEmbrace
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        1 : champions.chogath,
                                        3 : champions.malphite,
                                        5 : champions.blitzcrank,
                                        7 : champions.vi,
                                        24 : champions.twistedFate,
                                        26: champions.velkoz,
                                        28: champions.khazix
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: DARK STAR SNIPERS
        darkStarSnipers = TeamComp(name: "Dark Star Snipers",
                                 teamCompSet: .set3,
                                 tier: .B,
                                 patch: "10.6",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.caitlyn,
                                    champions.mordekaiser,
                                    champions.karma,
                                    champions.jhin,
                                    champions.wukong
            ],
                                 
                                 units: [
                                    champions.jarvan,
                                    champions.mordekaiser,
                                    champions.ashe,
                                    champions.karma,
                                    champions.lux,
                                    champions.shaco,
                                    champions.jhin,
                                    champions.lulu
            ],
                                 
                                 carries: [champions.ashe, champions.shaco, champions.jhin],
                                 carryItems: [
                                    champions.ashe :
                                        [
                                            items.guinsoosRageblade,
                                            items.spearOfShojin
                                    ],
                                    champions.shaco:
                                        [
                                            items.infinityEdge
                                    ],
                                    champions.jhin:
                                        [
                                            items.bloodthirster,
                                            items.guardianAngel,
                                            items.trapClaw
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.mordekaiser,
                                        5 : champions.jarvan,
                                        18 : champions.shaco,
                                        22 : champions.karma,
                                        23 : champions.jhin,
                                        25: champions.ashe,
                                        26: champions.lulu,
                                        28 : champions.lux
                                        
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: HYPER ROLL PROTECTORS
        hyperRollProtectors = TeamComp(name: "Hyper Roll Protectors",
                                 teamCompSet: .set3,
                                 tier: .B,
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
                                    champions.rakan,
                                    champions.sona,
                                    champions.xinZhao,
                                    champions.karma,
                                    champions.neeko,
                                    champions.jhin
            ],
                                 
                                 carries: [champions.jarvan, champions.sona, champions.xinZhao],
                                 carryItems: [
                                    champions.jarvan :
                                        [
                                            items.ionicSpark
                                    ],
                                    champions.sona:
                                        [
                                            items.seraphsEmbrace
                                    ],
                                    champions.xinZhao:
                                        [
                                            items.brambleVest,
                                            items.guardianAngel,
                                            items.warmogsArmor
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.jarvan,
                                        4 : champions.neeko,
                                        5 : champions.xinZhao,
                                        10 : champions.rakan,
                                        20 : champions.karma,
                                        22: champions.jhin,
                                        24: champions.sona
                                        
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: VALKYRIE BLADEMASTERS
               valkyrieBlademasters = TeamComp(name: "Valkyrie Blademasters",
                                        teamCompSet: .set3,
                                        tier: .B,
                                        patch: "10.7",
                                        
                                        earlyUnits: [],
                                        
                                        midUnits: [
                                           champions.xayah,
                                           champions.kaisa,
                                           champions.shen,
                                           champions.karma,
                                           champions.kayle
                   ],
                                        
                                        units: [
                                           champions.shen,
                                           champions.karma,
                                           champions.kassadin,
                                           champions.irelia,
                                           champions.kayle,
                                           champions.wukong,
                                           champions.lulu,
                                           champions.missFortune
                   ],
                                        
                                        carries: [champions.irelia, champions.kayle, champions.wukong],
                                        carryItems: [
                                           champions.irelia :
                                               [
                                                   items.seraphsEmbrace
                                           ],
                                           champions.kayle:
                                               [
                                                   items.guinsoosRageblade,
                                                   items.handOfJustice,
                                                   items.rapidFirecannon
                                           ],
                                           champions.wukong:
                                               [
                                                   items.guardianAngel,
                                                   items.morellonomicon
                                           ]
                   ],
                                        teamCompPositions:  TeamCompPositions(champsPositions:
                                           [
                                               1 : champions.irelia,
                                               3 : champions.wukong,
                                               5 : champions.shen,
                                               7 : champions.kassadin,
                                               16 : champions.lulu,
                                               25: champions.kayle,
                                               26: champions.karma,
                                               28 : champions.missFortune
                                               
                                               
                                        ]) ,
                                        webLink: nil)
        
        
        // MARK: STAR GUARDIAN SORCERERS
        starGuardianSorcerers = TeamComp(name: "Star Guardian Sorcerers",
                                 teamCompSet: .set3,
                                 tier: .A,
                                 patch: "10.8",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.poppy,
                                    champions.zoe,
                                    champions.ahri,
                                    champions.annie,
                                    champions.syndra
            ],
                                 
                                 units: [
                                    champions.poppy,
                                    champions.zoe,
                                    champions.ahri,
                                    champions.neeko,
                                    champions.syndra,
                                    champions.soraka,
                                    champions.lulu,
                                    champions.xerath
            ],
                                 
                                 carries: [champions.ahri, champions.neeko, champions.syndra],
                                 carryItems: [
                                    champions.ahri:
                                        [
                                            items.chaliceOfFavor,
                                    ],
                                    champions.neeko :
                                        [
                                            items.brambleVest,
                                            items.guardianAngel
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
                                        3 : champions.poppy,
                                        5 : champions.neeko,
                                        22 : champions.zoe,
                                        24 : champions.ahri,
                                        25 : champions.syndra,
                                        26: champions.soraka,
                                        27: champions.lulu,
                                        28 : champions.xerath
                                        
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: VANGUARD INFILTRATORS
        vanguardInfiltrators = TeamComp(name: "Vanguard Infiltrators",
                                 teamCompSet: .set3,
                                 tier: .B,
                                 patch: "10.7",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.kaisa,
                                    champions.mordekaiser,
                                    champions.jayce,
                                    champions.shaco,
                                    champions.jhin
            ],
                                 
                                 units: [
                                    champions.leona,
                                    champions.mordekaiser,
                                    champions.jayce,
                                    champions.shaco,
                                    champions.irelia,
                                    champions.jhin,
                                    champions.wukong,
                                    champions.ekko
            ],
                                 
                                 carries: [champions.leona, champions.shaco, champions.irelia, champions.ekko],
                                 carryItems: [
                                    champions.leona :
                                        [
                                            items.zephyr
                                    ],
                                    champions.shaco:
                                        [
                                            items.bloodthirster,
                                            items.infinityEdge
                                    ],
                                    champions.irelia:
                                        [
                                            items.thiefsGloves
                                    ],
                                    champions.ekko:
                                        [
                                            items.ionicSpark
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        1 : champions.jayce,
                                        3 : champions.wukong,
                                        4 : champions.leona,
                                        5 : champions.mordekaiser,
                                        7 : champions.irelia,
                                        22: champions.shaco,
                                        25: champions.jhin,
                                        28 : champions.ekko
                                        
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: SPACE PIRATE VANGUARDS
        spacePirateVanguards = TeamComp(name: "Space Pirate Vanguards",
                                 teamCompSet: .set3,
                                 tier: .B,
                                 patch: "10.8",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.poppy,
                                    champions.darius,
                                    champions.mordekaiser,
                                    champions.jayce,
                                    champions.wukong
            ],
                                 
                                 units: [
                                    champions.graves,
                                    champions.leona,
                                    champions.darius,
                                    champions.mordekaiser,
                                    champions.jayce,
                                    champions.wukong,
                                    champions.gangplank,
                                    champions.missFortune
            ],
                                 
                                 carries: [champions.darius, champions.jayce, champions.gangplank],
                                 carryItems: [
                                    champions.darius :
                                        [
                                            items.brambleVest,
                                            items.guardianAngel
                                    ],
                                    champions.jayce:
                                        [
                                            items.guardianAngel,
                                            items.hextechGunblade,
                                            items.ionicSpark
                                    ],
                                    champions.gangplank:
                                        [
                                            items.guardianAngel
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        1 : champions.graves,
                                        2 : champions.darius,
                                        3 : champions.wukong,
                                        4 : champions.jayce,
                                        5 : champions.leona,
                                        6: champions.mordekaiser,
                                        7: champions.gangplank,
                                        25 : champions.missFortune
                                        
                                        
                                 ]) ,
                                 webLink: nil)

        
        // MARK: CELESTIAL PROTECTORS
        celestialProtectors = TeamComp(name: "Celestial Protectors",
                                 teamCompSet: .set3,
                                 tier: .B,
                                 patch: "10.7",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.jarvan,
                                    champions.xayah,
                                    champions.rakan,
                                    champions.xinZhao,
                                    champions.neeko
            ],
                                 
                                 units: [
                                    champions.jarvan,
                                    champions.neeko,
                                    champions.xayah,
                                    champions.rakan,
                                    champions.xinZhao,
                                    champions.ashe,
                                    champions.kassadin,
                                    champions.lulu
            ],
                                 
                                 carries: [champions.xinZhao, champions.xayah],
                                 carryItems: [
                                    champions.xinZhao :
                                        [
                                            items.brambleVest,
                                            items.dragonsClaw,
                                            items.warmogsArmor
                                    ],
                                    champions.xayah:
                                        [
                                            items.guinsoosRageblade,
                                            items.statikkShiv,
                                            items.statikkShiv
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.xinZhao,
                                        4 : champions.jarvan,
                                        5 : champions.neeko,
                                        6 : champions.kassadin,
                                        11 : champions.rakan,
                                        22: champions.ashe,
                                        25: champions.xayah,
                                        28 : champions.lulu
                                        
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: PROTECTOR MYSTICS
        protectorMystics = TeamComp(name: "Protector Mystics",
                                 teamCompSet: .set3,
                                 tier: .A,
                                 patch: "10.8",
                                 
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
                                    champions.rakan,
                                    champions.sona,
                                    champions.xinZhao,
                                    champions.karma,
                                    champions.neeko,
                                    champions.soraka,
                                    champions.lulu
            ],
                                 
                                 carries: [champions.sona, champions.rakan, champions.xinZhao],
                                 carryItems: [
                                    champions.sona :
                                        [
                                            items.celestialOrb
                                    ],
                                    champions.rakan :
                                        [
                                            items.morellonomicon,
                                            items.spearOfShojin
                                    ],
                                    champions.xinZhao:
                                        [
                                            items.brambleVest,
                                            items.dragonsClaw,
                                            items.quicksilver
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        3 : champions.jarvan,
                                        4 : champions.neeko,
                                        5 : champions.xinZhao,
                                        10 : champions.rakan,
                                        12 : champions.karma,
                                        23: champions.sona,
                                        25: champions.soraka,
                                        27 : champions.lulu
                                        
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: VANGUARD SNIPERS
        vanguardSnipers = TeamComp(name: "Vanguard Snipers",
                                 teamCompSet: .set3,
                                 tier: .A,
                                 patch: "10.8",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.mordekaiser,
                                    champions.ashe,
                                    champions.jayce,
                                    champions.karma,
                                    champions.jhin
            ],
                                 
                                 units: [
                                    champions.poppy,
                                    champions.mordekaiser,
                                    champions.ashe,
                                    champions.jayce,
                                    champions.karma,
                                    champions.jhin,
                                    champions.wukong,
                                    champions.lulu
            ],
                                 
                                 carries: [champions.ashe, champions.jhin, champions.lulu],
                                 carryItems: [
                                    champions.ashe :
                                        [
                                            items.guinsoosRageblade,
                                            items.spearOfShojin
                                    ],
                                    champions.jhin:
                                        [
                                            items.infinityEdge,
                                            items.guardianAngel,
                                            items.lastWhisper
                                    ],
                                    champions.lulu :
                                    [
                                        items.spearOfShojin
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        1 : champions.poppy,
                                        3 : champions.mordekaiser,
                                        5 : champions.jayce,
                                        7 : champions.wukong,
                                        22 : champions.lulu,
                                        24: champions.ashe,
                                        26: champions.jhin,
                                        28 : champions.karma
                                        
                                        
                                 ]) ,
                                 webLink: nil)
        
        // MARK: CHRONO BLADEMASTERS
        chronoBlademasters = TeamComp(name: "Chrono Blademasters",
                                 teamCompSet: .set3,
                                 tier: .A,
                                 patch: "10.8",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.fiora,
                                    champions.leona,
                                    champions.lucian,
                                    champions.ezreal,
                                    champions.wukong
            ],
                                 
                                 units: [
                                    champions.xayah,
                                    champions.shen,
                                    champions.ezreal,
                                    champions.kassadin,
                                    champions.kayle,
                                    champions.wukong,
                                    champions.missFortune,
                                    champions.thresh
            ],
                                 
                                 carries: [champions.ezreal, champions.kayle, champions.missFortune],
                                 carryItems: [
                                    champions.ezreal :
                                        [
                                            items.thiefsGloves
                                    ],
                                    champions.kayle :
                                        [
                                            items.guardianAngel,
                                            items.guinsoosRageblade,
                                            items.rapidFirecannon
                                    ],
                                    champions.missFortune :
                                    [
                                        items.seraphsEmbrace,
                                        items.rabadonsDeathcap
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        1 : champions.thresh,
                                        2 : champions.shen,
                                        3 : champions.kassadin,
                                        4 : champions.wukong,
                                        15 : champions.kayle,
                                        22: champions.ezreal,
                                        27: champions.missFortune,
                                        28 : champions.xayah
                                        
                                        
                                 ]) ,
                                 webLink: nil)
        
        // MARK: DARK STARS
        darkStars = TeamComp(name: "Dark Stars",
                                 teamCompSet: .set3,
                                 tier: .S,
                                 patch: "10.8",
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                    champions.leona,
                                    champions.poppy,
                                    champions.mordekaiser,
                                    champions.jayce,
                                    champions.jhin
            ],
                                 
                                 units: [
                                    champions.mordekaiser,
                                    champions.ashe,
                                    champions.karma,
                                    champions.lux,
                                    champions.shaco,
                                    champions.jhin,
                                    champions.lulu,
                                    champions.xerath
            ],
                                 
                                 carries: [champions.jhin, champions.shaco],
                                 carryItems: [
                                    champions.shaco :
                                        [
                                            items.bloodthirster,
                                            items.guardianAngel,
                                            items.infinityEdge
                                    ],
                                    champions.jhin :
                                        [
                                            items.guardianAngel,
                                            items.infinityEdge,
                                            items.lastWhisper
                                    ]
            ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                    [
                                        4 : champions.mordekaiser,
                                        22 : champions.karma,
                                        23 : champions.jhin,
                                        24 : champions.shaco,
                                        25 : champions.lulu,
                                        26: champions.xerath,
                                        27: champions.ashe,
                                        28 : champions.lux
                                        
                                        
                                 ]) ,
                                 webLink: nil)
        
        
        }
}
