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
            electricWarden, hyperRollWoodland, blademasterAssassins, oceanMages, poisonGlacial,
            poisonElectric,
            
            shadowRangers, assassinSummoners, soulboundWardens,
            lunarMystics, luxOptions, berserkers, blademasterSummoner, inferno, desertAssassins,
            poisonRangers, light, lunarBlademaster
        ]
    }()
    
    
    
    /////////////////https://tftactics.gg/tierlist/team-comps /////////
    
    
    let electricWarden: TeamComp
    let hyperRollWoodland: TeamComp
    let blademasterAssassins: TeamComp
    let oceanMages: TeamComp
    let poisonGlacial: TeamComp
    let poisonElectric: TeamComp
    let assassinSummoners: TeamComp
    let soulboundWardens: TeamComp
    let lunarMystics: TeamComp
    let luxOptions: TeamComp
    let berserkers: TeamComp
    let blademasterSummoner: TeamComp
    let inferno: TeamComp
    let desertAssassins: TeamComp
    let poisonRangers: TeamComp
    let light: TeamComp
    let shadowRangers: TeamComp
    let lunarBlademaster: TeamComp
    
    init() {
        let champions = ChampionsSet2.shared
        let items = ItemsSet2.shared
        
        
        
        
        // MARK: TFTACTICS TEAM COMPS
        /////////////////https://tftactics.gg/tierlist/team-comps /////////
        
        
        // MARK: ELECTRIC WARDEN
        electricWarden = TeamComp(
            name: "Electric Warden",
            teamCompSet: .set2,
            tier: .B,
            patch: TeamCompPatch.tenThree.rawValue,
            earlyUnits: [],
            midUnits: [
                champions.leona,
                champions.ornn,
                champions.volibear,
                champions.karma,
                champions.janna,
            ],
            units: [
                champions.leona,
                champions.ornn,
                champions.volibear,
                champions.karma,
                champions.nautilus,
                champions.amumu,
                champions.nami,
                champions.zed
            ],
            carries: [
                champions.volibear,
                champions.amumu,
                champions.zed
            ],
            carryItems: [
                champions.volibear :
                    [
                        items.locket,
                        items.locket
                ],
                champions.zed :
                    [
                        items.guardianAngel,
                        items.redemption
                ],
                champions.amumu :
                    [items.guardianAngel, items.morellonomicon]
            ],
            teamCompPositions:  TeamCompPositions(
                champsPositions:
                [
                    2 : champions.ornn,
                    3 : champions.amumu,
                    4 : champions.volibear,
                    5 : champions.leona,
                    6 : champions.nautilus,
                    18 : champions.karma,
                    22 : champions.nami,
                    28 : champions.zed,
            ]),
            webLink: nil)
        
        
        // MARK: HYPER ROLL WOODLAND
        hyperRollWoodland = TeamComp(
            name: "Hyper Roll Woodland",
            teamCompSet: .set2,
            tier: .A,
            patch: TeamCompPatch.tenThree.rawValue,
            earlyUnits: [],
            midUnits: [
                champions.maokai,
                champions.diana,
                champions.ivern,
                champions.leBlanc,
                champions.khazix,
            ],
            units: [
                champions.diana,
                champions.maokai,
                champions.renekton,
                champions.ivern,
                champions.leBlanc,
                champions.khazix
            ],
            carries: [
                champions.diana,
                champions.maokai,
                champions.renekton
            ],
            carryItems: [
                champions.diana :
                    [
                        items.jeweledGauntlet,
                        items.infinityEdge,
                ],
                champions.maokai :
                    [
                        items.icebornGauntlet
                ],
                champions.renekton :
                    [
                        items.dragonsClaw,
                        items.hextechGunblade
                ]
            ],
            teamCompPositions:  TeamCompPositions(
                champsPositions:
                [
                    11 : champions.maokai,
                    19 : champions.ivern,
                    22 : champions.diana,
                    23 : champions.renekton,
                    27 : champions.leBlanc,
                    28 : champions.khazix
            ]),
            webLink: nil)
        
        
        // MARK: BLADEMASTER ASSASSINS
        blademasterAssassins = TeamComp(
            name: "Blademaster Assassins",
            teamCompSet: .set2,
            tier: .B,
            patch: TeamCompPatch.tenThree.rawValue,
            earlyUnits: [],
            midUnits: [
                champions.yasuo,
                champions.nocturne,
                champions.qiyana,
                champions.sivir,
                champions.khazix,
            ],
            units: [
                champions.reksai,
                champions.yasuo,
                champions.nocturne,
                champions.qiyana,
                champions.sivir,
                champions.janna,
                champions.khazix,
                champions.masterYi
            ],
            carries: [
                champions.nocturne,
                champions.sivir,
            ],
            carryItems: [
                champions.nocturne :
                    [
                        items.bladeOfTheRuinedKing,
                        items.infinityEdge,
                        items.guinsoosRageblade
                ],
                champions.sivir :
                    [
                        items.hush,
                        items.redBuff,
                        items.infinityEdge
                ]
            ],
            teamCompPositions:  TeamCompPositions(
                champsPositions:
                [
                    18 : champions.reksai,
                    22 : champions.nocturne,
                    23 : champions.khazix,
                    24 : champions.janna,
                    25 : champions.sivir,
                    26 : champions.masterYi,
                    27 : champions.yasuo,
                    28 : champions.qiyana
            ]),
            webLink: nil)
        
        
        // MARK: OCEAN MAGES
        oceanMages = TeamComp(
            name: "Ocean Mages",
            teamCompSet: .set2,
            tier: .S,
            patch: TeamCompPatch.tenThree.rawValue,
            earlyUnits: [],
            midUnits: [
                champions.vladimir,
                champions.nautilus,
                champions.syndra,
                champions.thresh,
                champions.brand,
            ],
            units: [
                champions.taliyah,
                champions.vladimir,
                champions.syndra,
                champions.thresh,
                champions.nautilus,
                champions.veigar,
                champions.brand,
                champions.malphite
            ],
            carries: [
                champions.brand,
                champions.malphite
            ],
            carryItems: [
                champions.brand :
                    [
                        items.rabadonsDeathcap,
                        items.seraphsEmbrace,
                        items.seraphsEmbrace,
                ],
                champions.malphite :
                    [
                        items.guardianAngel,
                        items.magesCap,
                        items.morellonomicon,
                ]
            ],
            teamCompPositions:  TeamCompPositions(
                champsPositions:
                [
                    2 : champions.nautilus,
                    4 : champions.malphite,
                    6 : champions.thresh,
                    22 : champions.taliyah,
                    23 : champions.syndra,
                    25 : champions.brand,
                    27 : champions.vladimir,
                    28 : champions.veigar
            ]),
            webLink: nil)
        
        
        // MARK: POISON GLACIAL
        poisonGlacial = TeamComp(
            name: "Poison Glacial",
            teamCompSet: .set2,
            tier: .S,
            patch: TeamCompPatch.tenThree.rawValue,
            earlyUnits: [],
            midUnits: [
                champions.warwick,
                champions.braum,
                champions.volibear,
                champions.ezreal,
                champions.olaf,
            ],
            units: [
                champions.warwick,
                champions.braum,
                champions.volibear,
                champions.ezreal,
                champions.drMundo,
                champions.olaf,
                champions.twitch,
                champions.singed
            ],
            carries: [
                champions.ezreal,
                champions.olaf,
                champions.twitch,
                champions.singed
            ],
            carryItems: [
                champions.ezreal :
                    [
                        items.ludensEcho
                ],
                champions.olaf :
                    [
                        items.bloodthirster,
                        items.guinsoosRageblade,
                        items.hush
                ],
                champions.twitch :
                    [
                        items.frozenMallet
                ],
                champions.singed :
                    [
                        items.morellonomicon
                ]
            ],
            teamCompPositions:  TeamCompPositions(
                champsPositions:
                [
                    4 : champions.braum,
                    11 : champions.singed,
                    18 : champions.twitch,
                    19 : champions.ezreal,
                    23 : champions.volibear,
                    24 : champions.olaf,
                    26 : champions.drMundo,
                    27 : champions.warwick
            ]),
            webLink: nil)
        
        
        // MARK: POISON ELECTRIC
        poisonElectric = TeamComp(
            name: "Poison Electric",
            teamCompSet: .set2,
            tier: .A,
            patch: TeamCompPatch.tenThree.rawValue,
            earlyUnits: [],
            midUnits: [
                champions.ornn,
                champions.braum,
                champions.thresh,
                champions.volibear,
                champions.nautilus,
            ],
            units: [
                champions.ornn,
                champions.braum,
                champions.volibear,
                champions.drMundo,
                champions.olaf,
                champions.twitch,
                champions.singed,
                champions.zed
            ],
            carries: [
                champions.volibear,
                champions.twitch,
                champions.singed,
                champions.zed
            ],
            carryItems: [
                champions.volibear :
                    [
                        items.locket,
                        items.locket
                ],
                champions.twitch :
                    [
                        items.frozenMallet
                ],
                champions.singed :
                    [
                        items.morellonomicon
                ],
                champions.zed :
                    [
                        items.guardianAngel,
                        items.redemption
                ]
            ],
            teamCompPositions:  TeamCompPositions(
                champsPositions:
                [
                    2 : champions.drMundo,
                    3 : champions.singed,
                    4 : champions.volibear,
                    5 : champions.olaf,
                    6 : champions.braum,
                    18 : champions.twitch,
                    22 : champions.zed,
                    1 : champions.ornn
            ]),
            webLink: nil)
        
        
        // MARK: SHADOW RANGERS
        shadowRangers = TeamComp(name: "Shadow Rangers",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.tenThree.rawValue,
                              
                              earlyUnits: [],
                              
                              midUnits: [champions.zyra, champions.senna, champions.varus, champions.kindred, champions.sion],
                              
                              units: [
                                champions.senna,
                                champions.varus,
                                champions.ezreal,
                                champions.kindred,
                                champions.sion,
                                champions.ashe,
                                champions.amumu,
                                champions.taric],
                              
                              carries: [
                                
                                champions.senna,
                                champions.kindred,
                                champions.ashe],
                              
                              carryItems: [
                                champions.senna :
                                    [items.morellonomicon, items.seraphsEmbrace],
                                champions.kindred :
                                    [items.rapidFirecannon, items.guinsoosRageblade, items.infinityEdge],
                                champions.ashe : [items.giantSlayer]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                
                                [
                                    3 : champions.amumu,
                                    4 : champions.taric,
                                    5 : champions.sion,
                                    22 : champions.ashe,
                                    23 : champions.ezreal,
                                    24 : champions.varus,
                                    25 : champions.kindred,
                                    28 : champions.senna,
                              ]) ,
                              webLink: nil)
        
        
        // MARK: ASSASSIN SUMMONERS
        assassinSummoners = TeamComp(
            name: "Assassin Summoners",
            teamCompSet: .set2,
            tier: .A,
            patch: TeamCompPatch.tenThree.rawValue,
            earlyUnits: [],
            midUnits: [
                champions.ivern,
                champions.maokai,
                champions.leBlanc,
                champions.qiyana,
                champions.khazix,
            ],
            units: [
                champions.azir,
                champions.qiyana,
                champions.soraka,
                champions.khazix,
                champions.yorick,
                champions.amumu,
                champions.nami,
                champions.zed
            ],
            carries: [
                champions.yorick,
                champions.amumu,
                champions.zed
            ],
            carryItems: [
                champions.yorick :
                    [
                        items.guardianAngel
                ],
                champions.amumu :
                    [
                        items.guardianAngel,
                        items.morellonomicon
                ],
                champions.zed :
                    [
                        items.guardianAngel,
                        items.redemption,
                        items.talismanOfLight
                ]
            ],
            teamCompPositions:  TeamCompPositions(
                champsPositions:
                [
                    20 : champions.amumu,
                    21 : champions.yorick,
                    22 : champions.zed,
                    23 : champions.qiyana,
                    25 : champions.khazix,
                    26 : champions.soraka,
                    27 : champions.azir,
                    28 : champions.nami
            ]),
            webLink: nil)
        
        
        
        // MARK: SOULBOUND WARDENS
        soulboundWardens = TeamComp(name: "Soulbound Wardens",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.tenThree.rawValue,
                              
                              earlyUnits: [],
                              
                              midUnits: [
                                champions.zyra,
                                champions.senna,
                                champions.varus,
                                champions.kindred,
                                champions.sion],
                              
                              units: [
                                champions.senna,
                                champions.nautilus,
                                champions.lucian,
                                champions.malphite,
                                champions.amumu,
                                champions.masterYi,
                                champions.nami,
                                champions.taric],
                              
                              carries: [champions.senna, champions.lucian, champions.masterYi],
                              carryItems: [
                                champions.senna :
                                    [
                                        items.guardianAngel,
                                        items.morellonomicon,
                                        items.seraphsEmbrace
                                ],
                                champions.lucian :
                                    [
                                        items.giantSlayer,
                                        items.giantSlayer
                                ],
                              champions.masterYi :
                                [
                                    items.rapidFirecannon
                                ]
                            ],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    4 : champions.lucian,
                                    9 : champions.malphite,
                                    10 : champions.amumu,
                                    11 : champions.taric,
                                    16 : champions.masterYi,
                                    17 : champions.nautilus,
                                    22 : champions.senna,
                                    23 : champions.nami,
                              ]) ,
                              webLink: nil)
        
        
        
        
        // MARK: LUNAR MYSTICS
        lunarMystics = TeamComp(name: "Lunar Mystics",
                                  teamCompSet: .set2,
                                  tier: .C,
                              patch: TeamCompPatch.tenThree.rawValue,
                              
                              earlyUnits: [],
                              
                              midUnits: [
                                champions.leona,
                                champions.aatrox,
                                champions.karma,
                                champions.yasuo,
                                champions.janna],
                              
                              units: [
                                champions.leona,
                                champions.yasuo,
                                champions.karma,
                                champions.nautilus,
                                champions.janna,
                                champions.amumu,
                                champions.masterYi,
                                champions.nami],
                              
                              carries: [champions.leona, champions.amumu, champions.masterYi],
                              carryItems: [
                                champions.leona :
                                    [
                                        items.brambleVest
                                ],
                                champions.amumu :
                                    [
                                        items.guardianAngel,
                                        items.morellonomicon
                                ],
                              champions.masterYi :
                                [
                                    items.guinsoosRageblade,
                                    items.rapidFirecannon,
                                    items.wardensMail
                                ]
                            ],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    2 : champions.leona,
                                    4 : champions.amumu,
                                    6 : champions.nautilus,
                                    10 : champions.masterYi,
                                    12 : champions.yasuo,
                                    17 : champions.karma,
                                    19 : champions.janna,
                                    28 : champions.nami,
                              ]) ,
                              webLink: nil)
        
        
        // MARK: LUX OPTIONS
        luxOptions = TeamComp(name: "Lux Options",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.tenThree.rawValue,
                              
                              earlyUnits: [],
                              
                              midUnits: [
                                champions.zyra,
                                champions.malzahar,
                                champions.kindred,
                                champions.sion,
                                champions.annie],
                              
                              units: [
                                champions.kindred,
                                champions.nautilus,
                                champions.annie,
                                champions.yorick,
                                champions.amumu,
                                champions.nami,
                                champions.zed,
                                champions.lux],
                              
                              carries: [champions.amumu, champions.zed, champions.lux],
                              carryItems: [
                                champions.amumu :
                                    [
                                        items.morellonomicon
                                ],
                                champions.zed :
                                    [
                                        items.guardianAngel,
                                        items.redemption
                                ],
                              champions.lux :
                                [
                                    items.rabadonsDeathcap,
                                    items.jeweledGauntlet,
                                    items.seraphsEmbrace
                                ]
                            ],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    3 : champions.nautilus,
                                    5 : champions.amumu,
                                    12 : champions.yorick,
                                    17 : champions.kindred,
                                    19 : champions.annie,
                                    22 : champions.zed,
                                    25 : champions.lux,
                                    28 : champions.nami,
                              ]) ,
                              webLink: nil)
        
        
        // MARK: BERSERKERS
              berserkers = TeamComp(name: "Berserkers",
                                        teamCompSet: .set2,
                                    tier: .A,
                                    patch: TeamCompPatch.tenThree.rawValue,
                                    
                                    earlyUnits: [],
                                    
                                    midUnits: [
                                      champions.ornn,
                                      champions.braum,
                                      champions.volibear,
                                      champions.ezreal,
                                      champions.olaf],
                                    
                                    units: [
                                      champions.renekton,
                                      champions.jax,
                                      champions.volibear,
                                      champions.drMundo,
                                      champions.sion,
                                      champions.olaf,
                                      champions.twitch,
                                      champions.singed],
                                    
                                    carries: [champions.olaf, champions.drMundo, champions.singed],
                                    carryItems: [
                                      champions.drMundo :
                                          [
                                            items.locket,
                                            items.locket
                                      ],
                                      champions.olaf :
                                          [
                                              items.guardianAngel,
                                              items.infinityEdge,
                                              items.rapidFirecannon
                                      ],
                                    champions.singed :
                                      [
                                          items.morellonomicon
                                      ]
                                  ],
                                    teamCompPositions:  TeamCompPositions(champsPositions:
                                      [
                                          15 : champions.renekton,
                                          22 : champions.jax,
                                          23 : champions.drMundo,
                                          24 : champions.volibear,
                                          25 : champions.olaf,
                                          26 : champions.singed,
                                          27 : champions.sion,
                                          28 : champions.twitch,
                                    ]) ,
                                    webLink: nil)
        
        
        // MARK: BLADEMASTER SUMMONER
        blademasterSummoner = TeamComp(name: "Blademaster Summoner",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.tenThree.rawValue,
                              
                              earlyUnits: [],
                              
                              midUnits: [
                                champions.yasuo,
                                champions.aatrox,
                                champions.azir,
                                champions.sivir,
                                champions.janna],
                              
                              units: [
                                champions.yasuo,
                                champions.azir,
                                champions.sivir,
                                champions.annie,
                                champions.janna,
                                champions.yorick,
                                champions.amumu,
                                champions.masterYi
                            ],
                              
                              carries: [champions.azir, champions.sivir],
                              carryItems: [
                                champions.azir :
                                    [
                                        items.bladeOfTheRuinedKing,
                                        items.runaansHurricane,
                                        items.spearOfShojin
                                ],
                                champions.sivir :
                                    [
                                        items.hush,
                                        items.redBuff,
                                        items.infinityEdge
                                ]
                            ],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    2 : champions.masterYi,
                                    4 : champions.amumu,
                                    6 : champions.yasuo,
                                    10 : champions.yorick,
                                    20 : champions.janna,
                                    23 : champions.annie,
                                    25 : champions.azir,
                                    27 : champions.sivir,
                              ]) ,
                              webLink: nil)
        
        
        // MARK: INFERNO
                inferno = TeamComp(name: "Inferno",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.tenThree.rawValue,
                              
                              earlyUnits: [],
                              
                              midUnits: [
                                champions.zyra,
                                champions.kindred,
                                champions.malzahar,
                                champions.sion,
                                champions.annie],
                              
                              units: [
                                champions.zyra,
                                champions.varus,
                                champions.kindred,
                                champions.nautilus,
                                champions.annie,
                                champions.brand,
                                champions.nami,
                                champions.amumu
                            ],
                              
                              carries: [champions.kindred, champions.annie, champions.amumu],
                              carryItems: [
                                champions.annie :
                                    [
                                        items.locket,
                                        items.locket,
                                ],
                                champions.kindred :
                                    [
                                        items.infinityEdge,
                                        items.jeweledGauntlet,
                                        items.seraphsEmbrace,
                                ],
                                champions.amumu :
                                    [
                                        items.morellonomicon,
                                ]
                            ],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    4 : champions.amumu,
                                    6 : champions.nautilus,
                                    23 : champions.annie,
                                    24 : champions.kindred,
                                    25 : champions.zyra,
                                    26 : champions.brand,
                                    27 : champions.varus,
                                    28 : champions.nami,
                              ]) ,
                              webLink: nil)
        
        
        // MARK: DESERT ASSASSINS
                   desertAssassins = TeamComp(name: "Desert Assassins",
                                     teamCompSet: .set2,
                                 tier: .A,
                                 patch: TeamCompPatch.tenThree.rawValue,
                                 
                                 earlyUnits: [],
                                 
                                 midUnits: [
                                   champions.ivern,
                                   champions.maokai,
                                   champions.leBlanc,
                                   champions.diana,
                                   champions.qiyana],
                                 
                                 units: [
                                   champions.renekton,
                                   champions.leBlanc,
                                   champions.azir,
                                   champions.nocturne,
                                   champions.qiyana,
                                   champions.sivir,
                                   champions.khazix,
                                   champions.zed
                               ],
                                 
                                 carries: [champions.sivir, champions.khazix, champions.zed],
                                 carryItems: [
                                   champions.sivir :
                                       [
                                           items.hush,
                                           items.youmuusGhostblade,
                                   ],
                                   champions.khazix :
                                       [
                                           items.bloodthirster,
                                           items.infinityEdge,
                                           items.seraphsEmbrace
                                   ],
                                   champions.zed :
                                       [
                                           items.guardianAngel,
                                           items.morellonomicon,
                                   ]
                               ],
                                 teamCompPositions:  TeamCompPositions(champsPositions:
                                   [
                                       15 : champions.zed,
                                       22 : champions.renekton,
                                       23 : champions.leBlanc,
                                       24 : champions.azir,
                                       25 : champions.nocturne,
                                       26 : champions.qiyana,
                                       27 : champions.sivir,
                                       28 : champions.khazix,
                                 ]) ,
                                 webLink: nil)
        
        
        // MARK: POISON RANGERS
        poisonRangers = TeamComp(name: "Poison Rangers",
                          teamCompSet: .set2,
                          tier: .S,
                      patch: TeamCompPatch.tenThree.rawValue,
                      
                      earlyUnits: [],
                      
                      midUnits: [
                        champions.braum,
                        champions.thresh,
                        champions.ezreal,
                        champions.nautilus,
                        champions.malphite],
                      
                      units: [
                        champions.varus,
                        champions.drMundo,
                        champions.kindred,
                        champions.ashe,
                        champions.twitch,
                        champions.amumu,
                        champions.singed,
                        champions.taric
                    ],
                      
                      carries: [champions.ashe, champions.twitch, champions.singed],
                      carryItems: [
                        champions.ashe :
                            [
                                items.statikkShiv,
                                items.statikkShiv,
                        ],
                        champions.twitch :
                            [
                                items.infinityEdge,
                                items.infinityEdge,
                                items.lastWhisper
                        ],
                        champions.singed :
                            [
                                items.morellonomicon,
                        ]
                    ],
                      teamCompPositions:  TeamCompPositions(champsPositions:
                        [
                            4 : champions.amumu,
                            5 : champions.taric,
                            9 : champions.drMundo,
                            14 : champions.singed,
                            22 : champions.varus,
                            24 : champions.ashe,
                            26 : champions.twitch,
                            28 : champions.kindred,
                      ]) ,
                      webLink: nil)
        
        
        // MARK: LIGHT
        light = TeamComp(name: "Light",
                          teamCompSet: .set2,
                          tier: .A,
                      patch: TeamCompPatch.tenThree.rawValue,
                      
                      earlyUnits: [],
                      
                      midUnits: [
                        champions.leona,
                        champions.vayne,
                        champions.karma,
                        champions.soraka,
                        champions.yorick],
                      
                      units: [
                        champions.leona,
                        champions.nasus,
                        champions.vayne,
                        champions.jax,
                        champions.aatrox,
                        champions.karma,
                        champions.soraka,
                        champions.yorick
                    ],
                      
                      carries: [champions.vayne, champions.yorick],
                      carryItems: [
                        champions.vayne :
                            [
                                items.giantSlayer,
                                items.guinsoosRageblade,
                                items.runaansHurricane
                        ],
                        champions.yorick :
                            [
                                items.dragonsClaw,
                                items.guardianAngel,
                                items.redemption
                        ]
                    ],
                      teamCompPositions:  TeamCompPositions(champsPositions:
                        [
                            1 : champions.jax,
                            3 : champions.nasus,
                            4 : champions.leona,
                            5 : champions.yorick,
                            7 : champions.aatrox,
                            22 : champions.soraka,
                            25 : champions.vayne,
                            27 : champions.karma,
                      ]) ,
                      webLink: nil)
        
        
        // MARK: LIGHT
        lunarBlademaster = TeamComp(name: "Lunar Blademasters",
                          teamCompSet: .set2,
                          tier: .A,
                      patch: TeamCompPatch.tenThree.rawValue,
                      
                      earlyUnits: [],
                      
                      midUnits: [
                        champions.leona,
                        champions.yasuo,
                        champions.karma,
                        champions.sivir,
                        champions.janna],
                      
                      units: [
                        champions.leona,
                        champions.yasuo,
                        champions.sivir,
                        champions.karma,
                        champions.janna,
                        champions.khazix,
                        champions.malphite,
                    ],
                      
                      carries: [champions.yasuo, champions.sivir, champions.khazix],
                      carryItems: [
                        champions.yasuo :
                            [
                                items.guardianAngel,
                                items.handOfJustice,
                                items.infinityEdge
                        ],
                        champions.sivir :
                            [
                                items.hush
                        ],
                        champions.khazix :
                            [
                                items.bloodthirster,
                                items.quicksilver
                        ]
                    ],
                      teamCompPositions:  TeamCompPositions(champsPositions:
                        [
                            3 : champions.malphite,
                            5 : champions.leona,
                            8 : champions.yasuo,
                            10 : champions.janna,
                            15 : champions.karma,
                            25 : champions.sivir,
                            28 : champions.khazix
                      ]) ,
                      webLink: nil)
        
        
    }
    
    
    
    
    
    
    
    
    
}

