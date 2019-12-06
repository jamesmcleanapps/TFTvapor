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
            fourOfAKind, beholdTheLight, sivirsHurricane, hyperrollPredators, sandCloneArmy, shadowRangers,
            sixMages2Tibbers, glacialBerserkers, onePunchVeigar, saveTheTrees,
            brandWaitingRoom, blenderNocturne, goldenArmy, malphonBrando,
            the8thAlchemist, the8thOcean
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
    let glacialBerserkers: TeamComp
    let onePunchVeigar: TeamComp
    let saveTheTrees: TeamComp
    
    let brandWaitingRoom: TeamComp
    let blenderNocturne: TeamComp
    
    let goldenArmy: TeamComp
    let malphonBrando: TeamComp
    
    let the8thAlchemist: TeamComp
    let the8thOcean: TeamComp
    
    /////////////////https://tftactics.gg/tierlist/team-comps /////////
    
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
                              patch: TeamCompPatch.nineTwoThree.rawValue,
                              earlyUnits: [champions.renekton, champions.warwick, champions.kogmaw, champions.reksai],
                              
                              midUnits: [champions.renekton, champions.warwick, champions.kogmaw, champions.reksai, champions.khazix, champions.nocturne],
                              
                              units: [
                                champions.kogmaw,
                                champions.reksai,
                                champions.warwick,
                                champions.drMundo,
                                champions.nocturne,
                                champions.khazix,
                                champions.singed],
                              
                              carries: [champions.kogmaw, champions.reksai],
                              carryItems: [
                                champions.kogmaw :
                                    [items.runaansHurricane, items.redBuff, items.guinsoosRageblade],
                                champions.reksai :
                                    [items.thiefsGloves]],
                              teamCompPositions:
                                    TeamCompPositions(champsPositions:
                                        [
                                            18 : champions.warwick,
                                            22 : champions.nocturne,
                                            23 : champions.reksai,
                                            25 : champions.kogmaw,
                                            26 : champions.drMundo,
                                            27 : champions.singed,
                                            28 : champions.khazix
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
        
        // MARK: SHADOW RANGERS
        shadowRangers = TeamComp(name: "Shadow Rangers",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoThree.rawValue,
                              
                              earlyUnits: [champions.vayne, champions.varus, champions.diana, champions.zyra],
                              
                              midUnits: [champions.kindred, champions.vayne, champions.aatrox, champions.nasus, champions.sion, champions.yasuo],
                              
                              units: [
                                champions.annie,
                                champions.yorick,
                                champions.kindred,
                                champions.ashe,
                                champions.sion,
                                champions.masterYi,
                                champions.taric,
                                champions.malzahar],
                              
                              carries: [champions.ashe, champions.kindred],
                              carryItems: [
                                champions.ashe :
                                    [items.statikkShiv, items.statikkShiv, items.statikkShiv],
                                champions.kindred :
                                    [items.seraphsEmbrace, items.infinityEdge, items.guinsoosRageblade]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    2 : champions.yorick,
                                    4 : champions.taric,
                                    6 : champions.sion,
                                    9 : champions.masterYi,
                                    22 : champions.annie,
                                    24 : champions.ashe,
                                    25 : champions.kindred,
                                    28 : champions.malzahar,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/shadow-rangers")
        
        
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
        
        
        // MARK: GLACIAL BERSERKERS
        glacialBerserkers = TeamComp(name: "Glacial Berserkers",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoThree.rawValue,
                              
                              earlyUnits: [champions.reksai, champions.warwick, champions.kogmaw, champions.renekton],
                              
                              midUnits: [champions.renekton, champions.warwick, champions.braum, champions.reksai, champions.olaf, champions.volibear],
                              
                              units: [
                                champions.olaf,
                                champions.drMundo,
                                champions.volibear,
                                champions.kogmaw,
                                champions.singed,
                                champions.warwick,
                                champions.reksai,
                                champions.braum],
                              
                              carries: [champions.olaf, champions.kogmaw, champions.singed],
                              carryItems: [
                                champions.olaf :
                                    [items.guinsoosRageblade, items.bloodthirster],
                                champions.kogmaw :
                                    [items.runaansHurricane, items.redBuff],
                              champions.singed :
                                [items.frozenHeart, items.morellonomicon]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    18 : champions.braum,
                                    22 : champions.warwick,
                                    23 : champions.singed,
                                    24 : champions.reksai,
                                    25 : champions.kogmaw,
                                    26 : champions.olaf,
                                    27 : champions.drMundo,
                                    28 : champions.volibear,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/glacial-berzerkers")
        
        
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
                              tier: .S,
                              patch: TeamCompPatch.nineTwoThree.rawValue,
                              
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
                              patch: TeamCompPatch.nineTwoThree.rawValue,
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
                              
                              carries: [champions.khazix, champions.nocturne],
                              carryItems: [
                                champions.khazix :
                                    [items.bladeOfTheRuinedKing, items.infinityEdge, items.seraphsEmbrace],
                                champions.nocturne :
                                    [items.bladeOfTheRuinedKing, items.guinsoosRageblade, items.infinityEdge] ],
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
                              tier: .A,
                              patch: TeamCompPatch.nineTwoThree.rawValue,
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
                              patch: TeamCompPatch.nineTwoThree.rawValue,
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
                                champions.taliyah,
                                champions.thresh,
                                champions.vladimir,
                                champions.janna,
                                champions.nami],
                              
                              carries: [champions.brand],
                              carryItems: [
                                champions.brand :
                                    [items.spearOfShojin, items.rabadonsDeathcap, items.morellonomicon],],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    2 : champions.nautilus,
                                    4 : champions.malphite,
                                    7 : champions.thresh,
                                    22 : champions.vladimir,
                                    24 : champions.nami,
                                    25 : champions.brand,
                                    26 : champions.janna,
                                    28 : champions.taliyah
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/malphon-brando")
        
        
        // MARK: THE 8TH ALCHEMIST
        the8thAlchemist = TeamComp(name: "The 8th Alchemist",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.nineTwoThree.rawValue,
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
                              
                              units: [champions.annie,
                                      champions.azir,
                                      champions.janna,
                                      champions.khazix,
                                      champions.nami,
                                      champions.qiyana,
                                      champions.singed,
                                      champions.zed],
                              
                              carries: [champions.singed, champions.zed],
                              carryItems: [
                                champions.singed :
                                    [items.dragonsClaw, items.morellonomicon, items.phantomDancer],
                                champions.zed :
                                    [items.dragonsClaw, items.phantomDancer, items.redemption]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    15 : champions.singed,
                                    22 : champions.khazix,
                                    23 : champions.qiyana,
                                    24 : champions.annie,
                                    25 : champions.janna,
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
        
        
    }
    
    
    
    
}

