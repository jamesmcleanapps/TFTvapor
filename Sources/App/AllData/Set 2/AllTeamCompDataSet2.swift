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
            fourOfAKind, beholdTheLight, sivirsHurricane, predators, sandCloneArmy, shadowRangers
        ]
    }()
    
    /////////////// https://tft.mobalytics.gg/team-comp ///////
    
    let fourOfAKind: TeamComp
    let beholdTheLight: TeamComp
    let sivirsHurricane: TeamComp
    let predators: TeamComp
    let sandCloneArmy: TeamComp
    let shadowRangers: TeamComp
    
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
        
        
        // MARK: SIVIRS HURRICANE
        sivirsHurricane = TeamComp(name: "Sivir's Hurricane",
                                  teamCompSet: .set2,
                              tier: .S,
                              patch: TeamCompPatch.nineTwoOne.rawValue,
                              earlyUnits: [champions.nasus, champions.vayne, champions.renekton, champions.yasuo],
                              midUnits: [champions.sivir, champions.aatrox, champions.renekton, champions.jax, champions.drMundo, champions.soraka],
                              units: [champions.aatrox, champions.yasuo, champions.masterYi, champions.sivir, champions.janna, champions.khazix, champions.qiyana, champions.zed],
                              carries: [champions.sivir, champions.yasuo],
                              carryItems: [
                                champions.sivir :
                                    [items.runaansHurricane, items.giantSlayer],
                                champions.yasuo :
                                    [items.icebornGauntlet]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    2 : champions.yasuo,
                                    4 : champions.aatrox,
                                    6 : champions.masterYi,
                                    18 : champions.sivir,
                                    23 : champions.zed,
                                    24 : champions.khazix,
                                    25 : champions.janna,
                                    26 : champions.qiyana,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/sivirs-hurricane")
        
        // MARK: PREDATORS
        predators = TeamComp(name: "Predators",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoOne.rawValue,
                              earlyUnits: [champions.renekton, champions.warwick, champions.kogmaw, champions.reksai],
                              midUnits: [champions.renekton, champions.warwick, champions.kogmaw, champions.reksai, champions.khazix, champions.nocturne],
                              units: [champions.kogmaw, champions.reksai, champions.warwick, champions.renekton, champions.nocturne, champions.khazix, champions.zed],
                              carries: [champions.kogmaw, champions.reksai],
                              carryItems: [
                                champions.kogmaw :
                                    [items.runaansHurricane, items.redBuff],
                                champions.reksai :
                                    [items.ionicSpark]],
                              teamCompPositions:  nil ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/predators")
        
        
        // MARK: SAND CLONE ARMY
        sandCloneArmy = TeamComp(name: "Sand Clone Army",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoOne.rawValue,
                              earlyUnits: [champions.zyra, champions.malzahar, champions.azir, champions.renekton],
                              midUnits: [champions.zyra, champions.malzahar, champions.azir, champions.renekton, champions.sion, champions.nocturne],
                              units: [champions.yorick, champions.sion, champions.nocturne, champions.qiyana, champions.azir, champions.khazix, champions.malzahar, champions.zed],
                              carries: [champions.azir, champions.zed],
                              carryItems: [
                                champions.azir :
                                    [items.zekesHerald, items.zekesHerald, items.zekesHerald],
                                champions.zed :
                                    [items.guardianAngel, items.redemption]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    3 : champions.yorick,
                                    6 : champions.sion,
                                    11 : champions.azir,
                                    19 : champions.malzahar,
                                    22 : champions.nocturne,
                                    25 : champions.khazix,
                                    26 : champions.qiyana,
                                    28 : champions.zed,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/sand-clone-army")
        
        // MARK: SHADOW RANGERS
        shadowRangers = TeamComp(name: "Shadow Rangers",
                                  teamCompSet: .set2,
                              tier: .A,
                              patch: TeamCompPatch.nineTwoOne.rawValue,
                              earlyUnits: [champions.vayne, champions.varus, champions.diana, champions.zyra],
                              midUnits: [champions.kindred, champions.vayne, champions.aatrox, champions.nasus, champions.sion, champions.yasuo],
                              units: [champions.yasuo, champions.janna, champions.kindred, champions.ashe, champions.sion, champions.masterYi, champions.taric, champions.malzahar],
                              carries: [champions.ashe, champions.kindred],
                              carryItems: [
                                champions.ashe :
                                    [items.statikkShiv, items.statikkShiv, items.statikkShiv],
                                champions.kindred :
                                    [items.runaansHurricane, items.giantSlayer]],
                              teamCompPositions:  TeamCompPositions(champsPositions:
                                [
                                    3 : champions.sion,
                                    5 : champions.taric,
                                    6 : champions.masterYi,
                                    18 : champions.kindred,
                                    19 : champions.janna,
                                    22 : champions.yasuo,
                                    25 : champions.ashe,
                                    28 : champions.malzahar,
                              ]) ,
                              webLink: "https://app.mobalytics.gg/tft/set2/team-comps/shadow-rangers")
        
        
    }
    
    
    
    
}

