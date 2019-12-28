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
            brandWaitingRoom, blenderNocturne, goldenArmy, malphonBrando,
            the8thAlchemist, the8thOcean, shadowSummoners, soulboundLight, zombieSenna,
            sennaRangers, slamBerserkers
        ] +
        [
            electricWarden, hyperRollWoodland, blademasterAssassins, oceanMages, poisonGlacial,
            poisonElectric,
            
            shadowRangers, assassinSummoners, glacialBerserkers, soulboundWardens, wardenRangers
        ]
    }()
    
    /////////////// https://tft.mobalytics.gg/team-comp ///////
    
    let fourOfAKind: TeamComp
    let beholdTheLight: TeamComp
    let sivirsHurricane: TeamComp
    let hyperrollPredators: TeamComp
    let sandCloneArmy: TeamComp
    let shadowRangers: TeamComp
    
    let sixMages2Tibbers: TeamComp
    let onePunchVeigar: TeamComp
    let saveTheTrees: TeamComp
    
    let brandWaitingRoom: TeamComp
    let blenderNocturne: TeamComp
    
    let goldenArmy: TeamComp
    let malphonBrando: TeamComp
    
    let the8thAlchemist: TeamComp
    let the8thOcean: TeamComp
    
    let shadowSummoners: TeamComp
    let soulboundLight: TeamComp
    let zombieSenna: TeamComp
    
    let sennaRangers: TeamComp
    let wardenRangers: TeamComp
    
    let slamBerserkers: TeamComp
    
    
    /////////////////https://tftactics.gg/tierlist/team-comps /////////
    
    
    let electricWarden: TeamComp
    let hyperRollWoodland: TeamComp
    let blademasterAssassins: TeamComp
    let oceanMages: TeamComp
    let poisonGlacial: TeamComp
    let poisonElectric: TeamComp
    let assassinSummoners: TeamComp
    let glacialBerserkers: TeamComp
    let soulboundWardens: TeamComp
    
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
                              tier: .A,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              earlyUnits: [champions.renekton, champions.warwick, champions.kogmaw, champions.reksai],
                              
                              midUnits: [champions.twitch, champions.skarner, champions.kogmaw, champions.reksai, champions.drMundo, champions.ashe],
                              
                              units: [
                                champions.kogmaw,
                                champions.skarner,
                                champions.warwick,
                                champions.singed,
                                champions.twitch,
                                champions.taric,
                                champions.soraka,
                                champions.nami],
                              
                              carries: [champions.kogmaw, champions.skarner, champions.singed],
                              carryItems: [
                                champions.kogmaw :
                                    [items.runaansHurricane, items.redBuff, items.giantSlayer],
                                champions.skarner :
                                    [items.warmogsArmor, items.ionicSpark],
                                champions.singed : [items.morellonomicon]],
                              teamCompPositions:
                                    TeamCompPositions(champsPositions:
                                        [
                                            3 : champions.taric,
                                            6: champions.skarner,
                                            8 : champions.singed,
                                            22 : champions.warwick,
                                            24 : champions.soraka,
                                            25 : champions.kogmaw,
                                            26 : champions.twitch,
                                            28 : champions.nami
                                            ]),
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/hyperroll-predators")
        
        
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
                                    [items.hextechGunblade, items.phantomDancer, items.seraphsEmbrace],
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
                                    [items.guardianAngel, items.phantomDancer, items.spearOfShojin],
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
        
        
        // MARK: GOLDEN ARMY
        goldenArmy = TeamComp(name: "Golden Army",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              earlyUnits: [
                                champions.renekton,
                                champions.ivern,
                                champions.leBlanc,
                                champions.maokai],
                              
                              midUnits: [
                                champions.diana,
                                champions.ivern,
                                champions.maokai,
                                champions.leBlanc,
                                champions.khazix,
                                champions.renekton],
                              
                              units: [
                                champions.diana,
                                champions.ivern,
                                champions.maokai,
                                champions.leBlanc,
                                champions.khazix,
                                champions.renekton],
                              
                              carries: [champions.renekton, champions.khazix, champions.diana],
                              carryItems: [
                                champions.renekton :
                                    [items.dragonsClaw, items.phantomDancer, items.warmogsArmor],
                                champions.khazix :
                                    [items.thiefsGloves, items.seraphsEmbrace],
                                champions.diana :
                                    [items.thiefsGloves] ],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    22 : champions.ivern,
                                    23 : champions.renekton,
                                    24 : champions.maokai,
                                    25 : champions.leBlanc,
                                    26 : champions.diana,
                                    27 : champions.khazix,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/golden-army")
        
        
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
                                    [items.dragonsClaw, items.phantomDancer, items.redemption],
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
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              
                              earlyUnits: [
                                champions.vayne,
                                champions.varus,
                                champions.diana,
                                champions.zyra],
                              
                              midUnits: [
                                champions.kindred,
                                champions.varus,
                                champions.zyra,
                                champions.veigar,
                                champions.sion,
                                champions.malzahar],
                              
                              units: [champions.annie,
                                      champions.yorick,
                                      champions.kindred,
                                      champions.janna,
                                      champions.sion,
                                      champions.soraka,
                                      champions.malzahar,
                                      ],
                              
                              carries: [champions.kindred, champions.malzahar],
                              carryItems: [
                                champions.kindred :
                                    [items.seraphsEmbrace, items.rabadonsDeathcap],
                                champions.malzahar :
                                    [items.spearOfShojin]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    9 : champions.yorick,
                                    12 : champions.sion,
                                    22 : champions.annie,
                                    24 : champions.soraka,
                                    25 : champions.kindred,
                                    26 : champions.janna,
                                    28 : champions.malzahar
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/shadow-summoners")
        
        
        // MARK: SOULBOUND LIGHT
        soulboundLight = TeamComp(name: "Soulbound Light",
                                  teamCompSet: .set2,
                              tier: .B,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              
                              earlyUnits: [
                                champions.nasus,
                                champions.senna,
                                champions.vayne,
                                champions.jax],
                              
                              midUnits: [
                                champions.nasus,
                                champions.aatrox,
                                champions.senna,
                                champions.yasuo,
                                champions.jax,
                                champions.soraka],
                              
                              units: [champions.aatrox,
                                      champions.senna,
                                      champions.nasus,
                                      champions.soraka,
                                      champions.lucian,
                                      champions.yorick,
                                      champions.nami,
                                      champions.jax
                                      ],
                              
                              carries: [champions.lucian, champions.senna],
                              carryItems: [
                                champions.lucian :
                                    [items.jeweledGauntlet, items.infinityEdge, items.giantSlayer],
                                champions.senna :
                                    [items.guardianAngel, items.talismanOfLight]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    16 : champions.nasus,
                                    17 : champions.aatrox,
                                    18 : champions.yorick,
                                    22 : champions.jax,
                                    23 : champions.soraka,
                                    24 : champions.senna,
                                    25 : champions.nami,
                                    28 : champions.lucian
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/soulbound-light")
        
        
        
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
        
        
        
        // MARK: SENNA RANGERS
        sennaRangers = TeamComp(name: "Senna Rangers",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              
                              earlyUnits: [
                                champions.vayne,
                                champions.varus,
                                champions.senna,
                                champions.malzahar],
                              
                              midUnits: [
                                champions.kindred,
                                champions.sion,
                                champions.varus,
                                champions.senna,
                                champions.nasus,
                                champions.braum],
                              
                              units: [champions.senna,
                                      champions.ashe,
                                      champions.kindred,
                                      champions.sion,
                                      champions.varus,
                                      champions.ezreal,
                                      champions.taric,
                                      champions.amumu
                                      ],
                              
                              carries: [champions.senna, champions.kindred],
                              carryItems: [
                                champions.senna :
                                    [items.morellonomicon, items.seraphsEmbrace],
                                champions.kindred :
                                    [items.infinityEdge, items.rapidFirecannon]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    8 : champions.sion,
                                    10 : champions.amumu,
                                    12 : champions.taric,
                                    22 : champions.senna,
                                    23 : champions.ezreal,
                                    24 : champions.kindred,
                                    26 : champions.varus,
                                    28 : champions.ashe
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/senna-rangers")
        
        
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
            tier: .A,
            patch: TeamCompPatch.nineTwoFour.rawValue,
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
                champions.thresh,
                champions.volibear,
                champions.nautilus,
                champions.qiyana,
                champions.khazix,
                champions.malphite,
                champions.zed
            ],
            carries: [
                champions.volibear,
                champions.zed
            ],
            carryItems: [
                champions.volibear :
                    [
                        items.hextechGunblade,
                        items.infinityEdge,
                        items.jeweledGauntlet
                ],
                champions.zed :
                    [
                        items.infinityEdge,
                        items.guardianAngel,
                        items.ionicSpark
                ]
            ],
            teamCompPositions:  TeamCompPositions(
                champsPositions:
                [
                    1 : champions.malphite,
                    3 : champions.ornn,
                    5 : champions.thresh,
                    7 : champions.nautilus,
                    8 : champions.volibear,
                    22 : champions.zed,
                    23 : champions.qiyana,
                    28 : champions.khazix,
            ]),
            webLink: nil)
        
        
        // MARK: HYPER ROLL WOODLAND
        hyperRollWoodland = TeamComp(
            name: "Hyper Roll Woodland",
            teamCompSet: .set2,
            tier: .A,
            patch: TeamCompPatch.nineTwoFour.rawValue,
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
                        items.hextechGunblade,
                        items.phantomDancer
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
            tier: .S,
            patch: TeamCompPatch.nineTwoFour.rawValue,
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
                        items.runaansHurricane
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
            patch: TeamCompPatch.nineTwoFour.rawValue,
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
                champions.syndra,
                champions.thresh,
                champions.nautilus,
                champions.brand,
                champions.malphite,
                champions.amumu,
                champions.nami
            ],
            carries: [
                champions.brand,
                champions.amumu,
                champions.nami
            ],
            carryItems: [
                champions.brand :
                    [
                        items.rabadonsDeathcap,
                        items.seraphsEmbrace,
                        items.seraphsEmbrace,
                ],
                champions.amumu :
                    [
                        items.icebornGauntlet,
                        items.morellonomicon,
                ],
                champions.nami:
                [
                    items.morellonomicon
                ]
            ],
            teamCompPositions:  TeamCompPositions(
                champsPositions:
                [
                    8 : champions.thresh,
                    10 : champions.nautilus,
                    12 : champions.amumu,
                    14 : champions.malphite,
                    22 : champions.nami,
                    24 : champions.taliyah,
                    26 : champions.brand,
                    28 : champions.syndra
            ]),
            webLink: nil)
        
        
        // MARK: POISON GLACIAL
        poisonGlacial = TeamComp(
            name: "Poison Glacial",
            teamCompSet: .set2,
            tier: .S,
            patch: TeamCompPatch.nineTwoFour.rawValue,
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
            patch: TeamCompPatch.nineTwoFour.rawValue,
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
                champions.olaf,
                champions.twitch,
                champions.singed,
                champions.zed
            ],
            carryItems: [
                champions.olaf :
                    [
                        items.bloodthirster,
                        items.guinsoosRageblade
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
                        items.guardianAngel
                ]
            ],
            teamCompPositions:  TeamCompPositions(
                champsPositions:
                [
                    2 : champions.drMundo,
                    4 : champions.ornn,
                    6 : champions.braum,
                    11 : champions.singed,
                    18 : champions.twitch,
                    22 : champions.olaf,
                    23 : champions.zed,
                    28 : champions.volibear
            ]),
            webLink: nil)
        
        
        // MARK: SHADOW RANGERS
        shadowRangers = TeamComp(name: "Shadow Rangers",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              
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
                              
                              carries: [champions.senna, champions.kindred, champions.taric],
                              carryItems: [
                                champions.senna :
                                    [items.morellonomicon, items.seraphsEmbrace],
                                champions.kindred :
                                    [items.bloodthirster, items.guinsoosRageblade, items.infinityEdge],
                                champions.taric : [items.redemption]],
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
            patch: TeamCompPatch.nineTwoFour.rawValue,
            earlyUnits: [],
            midUnits: [
                champions.ivern,
                champions.maokai,
                champions.leBlanc,
                champions.qiyana,
                champions.khazix,
            ],
            units: [
                champions.ornn,
                champions.azir,
                champions.qiyana,
                champions.soraka,
                champions.khazix,
                champions.yorick,
                champions.nami,
                champions.zed
            ],
            carries: [
                champions.yorick,
                champions.nami,
                champions.zed
            ],
            carryItems: [
                champions.yorick :
                    [
                        items.dragonsClaw,
                        items.redemption
                ],
                champions.nami :
                    [
                        items.morellonomicon
                ],
                champions.zed :
                    [
                        items.guardianAngel,
                        items.infinityEdge,
                        items.talismanOfLight
                ]
            ],
            teamCompPositions:  TeamCompPositions(
                champsPositions:
                [
                    20 : champions.ornn,
                    21 : champions.yorick,
                    22 : champions.zed,
                    23 : champions.qiyana,
                    25 : champions.khazix,
                    26 : champions.soraka,
                    27 : champions.azir,
                    28 : champions.nami
            ]),
            webLink: nil)
        
        
        // MARK: GLACIAL BERSERKERS
        glacialBerserkers = TeamComp(name: "Glacial Berserkers",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              
                              earlyUnits: [],
                              
                              midUnits: [
                                champions.ornn,
                                champions.braum,
                                champions.volibear,
                                champions.ezreal,
                                champions.olaf],
                              
                              units: [
                                champions.renekton,
                                champions.braum,
                                champions.jax,
                                champions.volibear,
                                champions.drMundo,
                                champions.ezreal,
                                champions.sion,
                                champions.olaf],
                              
                              carries: [champions.volibear, champions.ezreal, champions.olaf],
                              carryItems: [
                                champions.volibear :
                                    [items.locket, items.locket],
                                champions.ezreal :
                                    [items.seraphsEmbrace],
                              champions.olaf :
                                [items.bloodthirster, items.guinsoosRageblade, items.hush]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    1 : champions.renekton,
                                    2 : champions.jax,
                                    3 : champions.drMundo,
                                    4 : champions.volibear,
                                    5 : champions.olaf,
                                    6 : champions.braum,
                                    7 : champions.sion,
                                    18 : champions.ezreal,
                              ]) ,
                              webLink: nil)
        
        
        // MARK: SOULBOUND WARDENS
        soulboundWardens = TeamComp(name: "Soulbound Wardens",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              
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
                              
                              carries: [champions.senna, champions.lucian, champions.amumu],
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
                                        items.hush
                                ],
                              champions.amumu :
                                [
                                    items.icebornGauntlet
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
        
        
        // MARK: WARDEN RANGERS
        wardenRangers = TeamComp(name: "Warden Rangers",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.nineTwoFour.rawValue,
                              
                              earlyUnits: [],
                              
                              midUnits: [
                                champions.braum,
                                champions.thresh,
                                champions.ezreal,
                                champions.nautilus,
                                champions.malphite],
                              
                              units: [
                                champions.thresh,
                                champions.varus,
                                champions.nautilus,
                                champions.kindred,
                                champions.ashe,
                                champions.twitch,
                                champions.amumu,
                                champions.taric],
                              
                              carries: [champions.ashe, champions.twitch, champions.taric],
                              carryItems: [
                                champions.ashe :
                                    [
                                        items.giantSlayer,
                                        items.guinsoosRageblade,
                                        items.runaansHurricane
                                ],
                                champions.twitch :
                                    [
                                        items.redBuff
                                ],
                              champions.taric :
                                [
                                    items.redemption,
                                    items.thornmail
                                ]
                            ],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    8 : champions.nautilus,
                                    10 : champions.taric,
                                    12 : champions.amumu,
                                    14 : champions.thresh,
                                    22 : champions.varus,
                                    24 : champions.ashe,
                                    26 : champions.twitch,
                                    28 : champions.kindred,
                              ]) ,
                              webLink: nil)
        
        
    }
    
    
    
    
    
    
    
    
    
}

