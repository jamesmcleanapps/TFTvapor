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
            fourOfAKind, beholdTheLight, sivirsHurricane, hyperrollPredators, sandCloneArmy,
            sixMages2Tibbers, onePunchVeigar, saveTheTrees,
            brandWaitingRoom, blenderNocturne, malphonBrando,
            the8thAlchemist, the8thOcean, shadowSummoners, soulboundLight, zombieSenna,
            slamBerserkers
        ] +
        [
            electricWarden, hyperRollWoodland, blademasterAssassins, oceanMages,
            poisonElectric,
            
            shadowRangers, assassinSummoners, soulboundWardens,
            lunarMystics, luxOptions, berserkers, blademasterSummoner, inferno, desertAssassins,
            poisonRangers, light, lunarBlademaster, shadowInferno
        ]
    }()
    
    
    
    
    /////////////// https://tft.mobalytics.gg/team-comp ///////
    
    let fourOfAKind: TeamComp
    let beholdTheLight: TeamComp
    let sivirsHurricane: TeamComp
    let hyperrollPredators: TeamComp
    let sandCloneArmy: TeamComp
    
    let sixMages2Tibbers: TeamComp
    let onePunchVeigar: TeamComp
    let saveTheTrees: TeamComp
    
    let brandWaitingRoom: TeamComp
    let blenderNocturne: TeamComp
    
    let malphonBrando: TeamComp
    
    let the8thAlchemist: TeamComp
    let the8thOcean: TeamComp
    
    let shadowSummoners: TeamComp
    let soulboundLight: TeamComp
    let zombieSenna: TeamComp
    
    let slamBerserkers: TeamComp
    
    /////////////////https://tftactics.gg/tierlist/team-comps /////////
    
    
    let electricWarden: TeamComp
    let hyperRollWoodland: TeamComp
    let blademasterAssassins: TeamComp
    let oceanMages: TeamComp
    //let poisonGlacial: TeamComp
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
    let shadowInferno: TeamComp
    
    init() {
        let champions = ChampionsSet2.shared
        let items = ItemsSet2.shared
        
        // MARK: 4 OF A KIND
        fourOfAKind = TeamComp(name: "4 of a Kind",
                               teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoThree.rawValue,
                              earlyUnits: [champions.varus, champions.vayne, champions.aatrox, champions.jax, champions.nasus],
                              midUnits: [champions.varus, champions.kindred, champions.ashe, champions.vayne, champions.malphite, champions.taliyah],
                              units: [
                                champions.ezreal,
                                champions.ashe,
                                champions.twitch,
                                champions.kindred,
                                champions.janna,
                                champions.masterYi,
                                champions.taric,
                                champions.malphite
                                ],
                              carries: [champions.ashe, champions.twitch],
                              carryItems: [
                                champions.ashe :
                                    [items.statikkShiv, items.statikkShiv, items.statikkShiv],
                                champions.twitch :
                                    [items.runaansHurricane, items.giantSlayer]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    3 : champions.malphite,
                                    6 : champions.taric,
                                    11 : champions.masterYi,
                                    19 : champions.janna,
                                    22 : champions.ezreal,
                                    25 : champions.ashe,
                                    26 : champions.twitch,
                                    28 : champions.kindred,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/team-comps/4-of-a-kind")
        
        // MARK: BEHOLD THE LIGHT
        beholdTheLight = TeamComp(name: "Behold The Light",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoThree.rawValue,
                              earlyUnits: [champions.nasus, champions.jax, champions.vayne, champions.yasuo],
                              midUnits: [champions.nasus, champions.aatrox, champions.vayne, champions.yasuo, champions.jax, champions.soraka],
                              units: [
                                champions.aatrox,
                                champions.drMundo,
                                champions.nasus,
                                champions.soraka,
                                champions.vayne,
                                champions.yorick,
                                champions.twitch,
                                champions.singed
                                ],
                              carries: [champions.vayne, champions.twitch, champions.singed],
                              carryItems: [
                                champions.vayne :
                                    [items.guinsoosRageblade, items.runaansHurricane],
                                champions.twitch :
                                    [items.talismanOfLight],
                              champions.singed :
                                    [items.morellonomicon]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    2 : champions.aatrox,
                                    4 : champions.yorick,
                                    6 : champions.nasus,
                                    7 : champions.singed,
                                    22 : champions.twitch,
                                    25 : champions.vayne,
                                    27 : champions.drMundo,
                                    28 : champions.soraka,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/team-comps/behold-the-light")
        
        
        // MARK: SIVIRS HURRICANE
        sivirsHurricane = TeamComp(name: "Sivir's Hurricane",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoThree.rawValue,
                              earlyUnits: [champions.nasus, champions.vayne, champions.renekton, champions.yasuo],
                              midUnits: [champions.sivir, champions.aatrox, champions.renekton, champions.jax, champions.drMundo, champions.soraka],
                              
                              units: [champions.aatrox,
                                      champions.yasuo,
                                      champions.masterYi,
                                      champions.sivir,
                                      champions.janna,
                                      champions.yorick,
                                      champions.annie,
                                      champions.azir],
                              
                              carries: [champions.sivir, champions.yasuo],
                              carryItems: [
                                champions.sivir :
                                    [items.runaansHurricane, items.giantSlayer, items.deathBlade],
                                champions.yasuo :
                                    [items.icebornGauntlet]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    3 : champions.masterYi,
                                    5 : champions.yorick,
                                    18 : champions.annie,
                                    22 : champions.aatrox,
                                    24 : champions.azir,
                                    25 : champions.sivir,
                                    26 : champions.janna,
                                    28 : champions.yasuo,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/sivirs-hurricane")
        
        // MARK: HYPERROLL PREDATORS
        hyperrollPredators = TeamComp(name: "Hyper-roll Predators",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.tenFour.rawValue,
                              earlyUnits: [],
                              
                              midUnits: [champions.kogmaw, champions.skarner, champions.reksai, champions.nocturne, champions.ashe],
                              
                              units: [
                                champions.kogmaw,
                                champions.reksai,
                                champions.skarner,
                                champions.nocturne,
                                champions.ashe,
                                champions.twitch,
                                champions.singed,
                                champions.taric],
                              
                              carries: [
                                champions.kogmaw,
                                champions.ashe,
                                champions.singed
                    ],
                              
                              carryItems: [
                                champions.kogmaw :
                                    [items.ludensEcho, items.ludensEcho, items.ludensEcho],
                                champions.ashe :
                                    [items.statikkShiv, items.statikkShiv],
                                champions.singed : [items.morellonomicon]],
                              teamCompPositions:
                                    TeamCompPositions(champsPositions:
                                        [
                                            3 : champions.reksai,
                                            5: champions.nocturne,
                                            8 : champions.singed,
                                            11 : champions.taric,
                                            22 : champions.skarner,
                                            24 : champions.twitch,
                                            25 : champions.kogmaw,
                                            28 : champions.ashe
                                            ]),
                              webLink: nil)
        
        
        // MARK: SAND CLONE ARMY
        sandCloneArmy = TeamComp(name: "Sand Clone Army",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoThree.rawValue,
                              earlyUnits: [champions.zyra, champions.malzahar, champions.azir, champions.renekton],
                              midUnits: [champions.zyra, champions.malzahar, champions.azir, champions.renekton, champions.sion, champions.nocturne],
                              
                              units: [champions.yorick,
                                      champions.nocturne,
                                      champions.qiyana,
                                      champions.azir,
                                      champions.khazix,
                                      champions.annie,
                                ],
                              
                              carries: [champions.khazix, champions.yorick],
                              carryItems: [
                                champions.khazix :
                                    [items.seraphsEmbrace, items.infinityEdge, items.rapidFirecannon],
                                champions.yorick :
                                    [items.guardianAngel, items.redemption]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    19 : champions.yorick,
                                    22 : champions.nocturne,
                                    24 : champions.qiyana,
                                    25 : champions.khazix,
                                    26 : champions.azir,
                                    27 : champions.annie,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/sand-clone-army")

        
        
        // MARK: 6 MAGES 2 TIBBERS
        sixMages2Tibbers = TeamComp(name: "6 Mages 2 Tibbers",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoThree.rawValue,
                              
                              earlyUnits: [
                                champions.ivern,
                                champions.leBlanc,
                                champions.maokai,
                                champions.vladimir],
                              
                              midUnits: [
                                champions.annie,
                                champions.brand,
                                champions.leBlanc,
                                champions.nautilus,
                                champions.syndra,
                                champions.veigar,
                                champions.vladimir
                            ],
                              
                              units: [
                                champions.annie,
                                champions.brand,
                                champions.leBlanc,
                                champions.zyra,
                                champions.yorick,
                                champions.syndra,
                                champions.veigar,
                                champions.vladimir],
                              
                              carries: [champions.annie, champions.brand],
                              carryItems: [
                                champions.annie :
                                    [items.magesCap],
                                champions.brand :
                                    [items.jeweledGauntlet, items.rabadonsDeathcap, items.spearOfShojin]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    19 : champions.yorick,
                                    20 : champions.annie,
                                    22 : champions.leBlanc,
                                    24 : champions.vladimir,
                                    25 : champions.veigar,
                                    26 : champions.brand,
                                    27 : champions.syndra,
                                    28 : champions.zyra,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/6-mages-2-tibbers")
        
        
        
        
        
        // MARK: ONE PUNCH VEIGAR
        onePunchVeigar = TeamComp(name: "One Punch Veigar",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.ivern, champions.leBlanc, champions.maokai, champions.taliyah],
                              midUnits: [champions.malphite, champions.nautilus, champions.syndra, champions.taliyah, champions.veigar, champions.vladimir],
                              units: [champions.leBlanc, champions.malphite, champions.nami, champions.nautilus, champions.syndra, champions.taliyah, champions.veigar, champions.vladimir],
                              carries: [champions.veigar, champions.malphite],
                              carryItems: [
                                champions.veigar :
                                    [items.hextechGunblade, items.seraphsEmbrace],
                                champions.malphite :
                                    [items.guardianAngel, items.magesCap, items.morellonomicon]],
                              teamCompPositions:  nil ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/one-punch-veigar")
        
        
        // MARK: SAVE THE TREES
        saveTheTrees = TeamComp(name: "Save the Trees",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoTwo.rawValue,
                              earlyUnits: [champions.ivern, champions.leBlanc, champions.maokai, champions.neeko, champions.vladimir],
                              midUnits: [champions.leBlanc, champions.maokai, champions.nautilus, champions.neeko, champions.syndra, champions.thresh],
                              units: [champions.leBlanc, champions.maokai, champions.nautilus, champions.neeko, champions.syndra, champions.thresh, champions.vladimir],
                              carries: [champions.vladimir, champions.neeko, champions.maokai],
                              carryItems: [
                                champions.vladimir :
                                    [items.guardianAngel, items.spearOfShojin],
                                champions.neeko :
                                    [items.morellonomicon, items.rabadonsDeathcap],
                              champions.maokai :
                                [items.dragonsClaw, items.icebornGauntlet, items.warmogsArmor]],
                              teamCompPositions:  nil ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/save-the-trees")
        
        
        // MARK: BRAND WAITING ROOM
        brandWaitingRoom = TeamComp(name: "Brand Waiting Room",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              
                              earlyUnits: [champions.diana, champions.renekton, champions.vladimir, champions.zyra],
                              
                              midUnits: [champions.diana, champions.ivern, champions.maokai, champions.neeko, champions.vladimir, champions.zyra],
                              
                              units: [
                                champions.annie,
                                champions.brand,
                                champions.nautilus,
                                champions.syndra,
                                champions.thresh,
                                champions.vladimir,
                                champions.zyra,
                                champions.yorick],
                              
                              carries: [champions.brand, champions.yorick],
                              carryItems: [
                                champions.brand :
                                    [items.jeweledGauntlet, items.rabadonsDeathcap, items.spearOfShojin],
                                champions.yorick :
                                    [items.guardianAngel, items.redemption] ],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    9 : champions.nautilus,
                                    11 : champions.yorick,
                                    13 : champions.thresh,
                                    22 : champions.zyra,
                                    24 : champions.annie,
                                    25 : champions.brand,
                                    26 : champions.syndra,
                                    28 : champions.vladimir,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/brand-waiting-room")
        
        
        // MARK: BLENDER NOCTURNE
        blenderNocturne = TeamComp(name: "Blender Nocturne",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              earlyUnits: [
                                champions.diana,
                                champions.ivern,
                                champions.leBlanc,
                                champions.maokai],
                              
                              midUnits: [
                                champions.diana,
                                champions.ivern,
                                champions.maokai,
                                champions.leBlanc,
                                champions.nocturne,
                                champions.qiyana],
                              
                              units: [
                                champions.janna,
                                champions.khazix,
                                champions.masterYi,
                                champions.nocturne,
                                champions.qiyana,
                                champions.sivir,
                                champions.yasuo],
                              
                              carries: [champions.khazix, champions.nocturne, champions.sivir],
                              carryItems: [
                                champions.khazix :
                                    [items.seraphsEmbrace, items.infinityEdge],
                                champions.nocturne :
                                    [items.bladeOfTheRuinedKing, items.infinityEdge, items.infinityEdge],
                                champions.sivir : [items.hush, items.redBuff, items.swordBreaker] ],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    22 : champions.nocturne,
                                    23 : champions.qiyana,
                                    24 : champions.yasuo,
                                    25 : champions.masterYi,
                                    26 : champions.janna,
                                    27 : champions.sivir,
                                    28 : champions.khazix,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/blender-nocturne")
        
        
        
        
        // MARK: MALPHON BRANDO
        malphonBrando = TeamComp(name: "Malphon Brando",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              earlyUnits: [
                                champions.diana,
                                champions.renekton,
                                champions.vladimir,
                                champions.zyra],
                              
                              midUnits: [
                                champions.diana,
                                champions.ivern,
                                champions.maokai,
                                champions.neeko,
                                champions.vladimir,
                                champions.zyra],
                              
                              units: [
                                champions.malphite,
                                champions.brand,
                                champions.nautilus,
                                champions.annie,
                                champions.thresh,
                                champions.vladimir,
                                champions.amumu,
                                champions.syndra],
                              
                              carries: [champions.brand],
                              carryItems: [
                                champions.brand :
                                    [items.spearOfShojin, items.rabadonsDeathcap, items.morellonomicon],],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    11 : champions.amumu,
                                    16 : champions.nautilus,
                                    19 : champions.malphite,
                                    21 : champions.thresh,
                                    22 : champions.vladimir,
                                    24 : champions.annie,
                                    25 : champions.brand,
                                    28 : champions.syndra
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/malphon-brando")
        
        
        // MARK: THE 8TH ALCHEMIST
        the8thAlchemist = TeamComp(name: "The 8th Alchemist",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              earlyUnits: [
                                champions.ivern,
                                champions.leBlanc,
                                champions.maokai,
                                champions.renekton],
                              
                              midUnits: [
                                champions.diana,
                                champions.ivern,
                                champions.khazix,
                                champions.leBlanc,
                                champions.maokai,
                                champions.renekton],
                              
                              units: [champions.yorick,
                                      champions.azir,
                                      champions.soraka,
                                      champions.khazix,
                                      champions.nami,
                                      champions.qiyana,
                                      champions.singed,
                                      champions.zed],
                              
                              carries: [champions.singed, champions.zed],
                              carryItems: [
                                champions.singed :
                                    [items.dragonsClaw, items.morellonomicon, items.icebornGauntlet],
                                champions.zed :
                                    [items.dragonsClaw, items.talismanOfLight]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    15 : champions.singed,
                                    22 : champions.khazix,
                                    23 : champions.qiyana,
                                    24 : champions.yorick,
                                    25 : champions.soraka,
                                    26 : champions.nami,
                                    27 : champions.azir,
                                    28 : champions.zed,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/the-8th-alchemist")
        
        
        // MARK: THE 8TH OCEAN
        the8thOcean = TeamComp(name: "The 8th Ocean",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.nineTwoThree.rawValue,
                              
                              earlyUnits: [
                                champions.ivern,
                                champions.leBlanc,
                                champions.maokai,
                                champions.renekton],
                              
                              midUnits: [
                                champions.ivern,
                                champions.leBlanc,
                                champions.maokai,
                                champions.nautilus,
                                champions.thresh,
                                champions.zyra],
                              
                              units: [champions.zyra,
                                      champions.janna,
                                      champions.nami,
                                      champions.nautilus,
                                      champions.yorick,
                                      champions.thresh,
                                      champions.vladimir,
                                      champions.zed],
                              
                              carries: [champions.zed, champions.zyra],
                              carryItems: [
                                champions.zed :
                                    [items.dragonsClaw, items.redemption],
                                champions.zyra :
                                    [items.morellonomicon, items.spearOfShojin]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    16 : champions.yorick,
                                    17 : champions.thresh,
                                    18 : champions.nautilus,
                                    22 : champions.nami,
                                    23 : champions.zyra,
                                    24 : champions.vladimir,
                                    25 : champions.janna,
                                    26 : champions.zed,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/the-8th-ocean")
        
        
        // MARK: SHADOW SUMMONERS
        shadowSummoners = TeamComp(name: "Shadow Summoners",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.tenOneTwo.rawValue,
                              
                              earlyUnits: [
                                ],
                              
                              midUnits: [
                                champions.zyra,
                                champions.malzahar,
                                champions.kindred,
                                champions.sion,
                                champions.annie],
                              
                              units: [champions.malzahar,
                                      champions.kindred,
                                      champions.nautilus,
                                      champions.annie,
                                      champions.yorick,
                                      champions.amumu,
                                      champions.masterYi,
                                      champions.nami
                                      ],
                              
                              carries: [champions.kindred, champions.yorick, champions.amumu],
                              carryItems: [
                                champions.kindred :
                                    [items.rabadonsDeathcap,
                                     items.seraphsEmbrace,
                                     items.rapidFirecannon],
                                champions.yorick :
                                    [items.guardianAngel],
                                champions.amumu : [items.morellonomicon]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    4 : champions.amumu,
                                    6 : champions.nautilus,
                                    8 : champions.masterYi,
                                    11 : champions.yorick,
                                    19 : champions.annie,
                                    22 : champions.malzahar,
                                    25 : champions.kindred,
                                    28 : champions.nami
                              ]) ,
                              webLink: nil)
        
        
        // MARK: SOULBOUND LIGHT
        soulboundLight = TeamComp(name: "Soulbound Light",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.tenOneTwo.rawValue,
                              
                              earlyUnits: [
                                ],
                              
                              midUnits: [
                                champions.nasus,
                                champions.vayne,
                                champions.senna,
                                champions.soraka,
                                champions.lucian,
                                ],
                              
                              units: [champions.leona,
                                      champions.nasus,
                                      champions.senna,
                                      champions.aatrox,
                                      champions.karma,
                                      champions.soraka,
                                      champions.lucian,
                                      champions.yorick
                                      ],
                              
                              carries: [champions.senna, champions.lucian],
                              carryItems: [
                                champions.lucian :
                                    [items.giantSlayer, items.giantSlayer, items.giantSlayer],
                                champions.senna :
                                    [items.guardianAngel, items.talismanOfLight, items.morellonomicon] ],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    4 : champions.lucian,
                                    5 : champions.nasus,
                                    6 : champions.leona,
                                    11 : champions.karma,
                                    13 : champions.yorick,
                                    20 : champions.aatrox,
                                    21 : champions.soraka,
                                    28 : champions.senna
                              ]) ,
                              webLink: nil)
        
        
        
        // MARK: ZOMBIE SENNA
        zombieSenna = TeamComp(name: "Zombie Senna",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              
                              earlyUnits: [
                                champions.jax,
                                champions.kindred,
                                champions.nasus,
                                champions.vayne],
                              
                              midUnits: [
                                champions.annie,
                                champions.kindred,
                                champions.malzahar,
                                champions.sion,
                                champions.soraka,
                                champions.vayne],
                              
                              units: [champions.yorick,
                                      champions.senna,
                                      champions.malzahar,
                                      champions.masterYi,
                                      champions.soraka,
                                      champions.lucian,
                                      champions.annie,
                                      ],
                              
                              carries: [champions.lucian, champions.senna],
                              carryItems: [
                                champions.lucian :
                                    [items.jeweledGauntlet, items.infinityEdge, items.giantSlayer],
                                champions.senna :
                                    [items.guardianAngel]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    10 : champions.yorick,
                                    12 : champions.lucian,
                                    18 : champions.masterYi,
                                    22 : champions.annie,
                                    24 : champions.senna,
                                    25 : champions.malzahar,
                                    27 : champions.soraka
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/zombie-senna")
        
        
        
        
        
        // MARK: SLAM BERSERKERS
        slamBerserkers = TeamComp(name: "Slam Berserkers",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              
                              earlyUnits: [
                                champions.jax,
                                champions.ornn,
                                champions.renekton,
                                champions.volibear],
                              
                              midUnits: [
                                champions.drMundo,
                                champions.jax,
                                champions.olaf,
                                champions.renekton,
                                champions.sion,
                                champions.volibear],
                              
                              units: [champions.drMundo,
                                      champions.khazix,
                                      champions.olaf,
                                      champions.singed,
                                      champions.twitch,
                                      champions.renekton,
                                      champions.sion,
                                      champions.volibear
                                      ],
                              
                              carries: [champions.olaf, champions.drMundo, champions.khazix],
                              carryItems: [
                                champions.olaf :
                                    [items.infinityEdge, items.guardianAngel],
                                champions.drMundo :
                                    [items.locket],
                                champions.khazix : [items.berserkersAxe]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    21 : champions.volibear,
                                    22 : champions.khazix,
                                    23 : champions.singed,
                                    24 : champions.drMundo,
                                    25 : champions.olaf,
                                    26 : champions.sion,
                                    27 : champions.renekton,
                                    28 : champions.twitch
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/slam-berserkers")
        
        
        
        
        
        // MARK: TFTACTICS TEAM COMPS
        /////////////////https://tftactics.gg/tierlist/team-comps /////////
        
        
        // MARK: ELECTRIC WARDEN
        electricWarden = TeamComp(
            name: "Electric Warden",
            teamCompSet: .set2,
            tier: .B,
            patch: TeamCompPatch.tenFour.rawValue,
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
            tier: .B,
            patch: TeamCompPatch.tenFour.rawValue,
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
            patch: TeamCompPatch.tenFour.rawValue,
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
            patch: TeamCompPatch.tenFour.rawValue,
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
//        poisonGlacial = TeamComp(
//            name: "Poison Glacial",
//            teamCompSet: .set2,
//            tier: .S,
//            patch: TeamCompPatch.tenFour.rawValue,
//            earlyUnits: [],
//            midUnits: [
//                champions.warwick,
//                champions.braum,
//                champions.volibear,
//                champions.ezreal,
//                champions.olaf,
//            ],
//            units: [
//                champions.warwick,
//                champions.braum,
//                champions.volibear,
//                champions.ezreal,
//                champions.drMundo,
//                champions.olaf,
//                champions.twitch,
//                champions.singed
//            ],
//            carries: [
//                champions.ezreal,
//                champions.olaf,
//                champions.twitch,
//                champions.singed
//            ],
//            carryItems: [
//                champions.ezreal :
//                    [
//                        items.ludensEcho
//                ],
//                champions.olaf :
//                    [
//                        items.bloodthirster,
//                        items.guinsoosRageblade,
//                        items.hush
//                ],
//                champions.twitch :
//                    [
//                        items.frozenMallet
//                ],
//                champions.singed :
//                    [
//                        items.morellonomicon
//                ]
//            ],
//            teamCompPositions:  TeamCompPositions(
//                champsPositions:
//                [
//                    4 : champions.braum,
//                    11 : champions.singed,
//                    18 : champions.twitch,
//                    19 : champions.ezreal,
//                    23 : champions.volibear,
//                    24 : champions.olaf,
//                    26 : champions.drMundo,
//                    27 : champions.warwick
//            ]),
//            webLink: nil)
        
        
        // MARK: POISON ELECTRIC
        poisonElectric = TeamComp(
            name: "Poison Electric",
            teamCompSet: .set2,
            tier: .A,
            patch: TeamCompPatch.tenFour.rawValue,
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
                              patch: TeamCompPatch.tenFour.rawValue,
                              
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
            patch: TeamCompPatch.tenFour.rawValue,
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
                              patch: TeamCompPatch.tenFour.rawValue,
                              
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
                              patch: TeamCompPatch.tenFour.rawValue,
                              
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
                              tier: .A,
                              patch: TeamCompPatch.tenFour.rawValue,
                              
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
                                    patch: TeamCompPatch.tenFour.rawValue,
                                    
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
                              patch: TeamCompPatch.tenFour.rawValue,
                              
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
                              patch: TeamCompPatch.tenFour.rawValue,
                              
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
                                 tier: .B,
                                 patch: TeamCompPatch.tenFour.rawValue,
                                 
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
                      patch: TeamCompPatch.tenFour.rawValue,
                      
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
                      patch: TeamCompPatch.tenFour.rawValue,
                      
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
                      patch: TeamCompPatch.tenFour.rawValue,
                      
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
        
        
        // MARK: SHADOW INFERNO
        shadowInferno = TeamComp(name: "Shadow Inferno",
                          teamCompSet: .set2,
                          tier: .S,
                      patch: TeamCompPatch.tenFour.rawValue,
                      
                      earlyUnits: [],
                      
                      midUnits: [
                        champions.zyra,
                        champions.malzahar,
                        champions.varus,
                        champions.kindred,
                        champions.sion],
                      
                      units: [
                        champions.malzahar,
                        champions.senna,
                        champions.varus,
                        champions.kindred,
                        champions.sion,
                        champions.veigar,
                        champions.amumu,
                        champions.masterYi
                    ],
                      
                      carries: [champions.kindred, champions.masterYi],
                      carryItems: [
                        champions.kindred :
                            [
                                items.infinityEdge,
                                items.jeweledGauntlet,
                                items.seraphsEmbrace
                        ],
                        champions.masterYi :
                            [
                                items.guardianAngel,
                                items.handOfJustice,
                                items.rapidFirecannon
                        ]
                    ],
                      teamCompPositions:  TeamCompPositions(champsPositions:
                        [
                            3 : champions.sion,
                            5 : champions.amumu,
                            8 : champions.masterYi,
                            17 : champions.malzahar,
                            19 : champions.veigar,
                            25 : champions.kindred,
                            27 : champions.varus,
                            28 : champions.senna
                      ]) ,
                      webLink: nil)
        
        
    }
    
    
    
    
    
    
    
    
    
}

