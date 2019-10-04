//
//  AllTeamCompsData.swift
//  App
//
//  Created by James Mclean on 02/10/2019.
//

import Foundation


class TeamComps {
    
    static var shared = TeamComps()
    
    lazy var allTeamComps: [TeamComp] = {
        return [
            elementalSorcerers, ultimateRangerFormation, pickABlueCard, ahriAndTheBrawlers, theHunterAndThePredator,
            ninjaElementalists, burstRangers, dragonDefenders, imperialGuard, littleSparks,
            polarBearFrenzy, pirateSwashbucklers, rangerKnights, voidSorcerers, voidBrawlers,
            jungleVoid, fullSorcerers, protectDraven, magicalYordles,
            lordDraven, ladyJinx, jinxsPirateBrigade, theKnightsVow, knightlyRangers, jinxAndTheMeatwall,
            nobles, botrkGunslingers, demonSorcerer, shapeShifters,
            protectTheEve,  assassinsFromTheVoid,
            demonOfTheVoid, theMeatiestWallOfAll, teenageMutantNinjaAssassins, yordellini,
            dragonSorcerers,
            iceQueenLissandra, wildSorcerers, hyperKnights, elementalRangers
        ]
    }()
    
    /////////////// https://tft.mobalytics.gg/team-comp ///////
    let elementalSorcerers: TeamComp
    let ultimateRangerFormation: TeamComp
    let pickABlueCard: TeamComp
    let ahriAndTheBrawlers: TeamComp
    let theHunterAndThePredator: TeamComp
    
    let ninjaElementalists: TeamComp
    let burstRangers: TeamComp
    let dragonDefenders: TeamComp
    let imperialGuard: TeamComp
    let littleSparks: TeamComp
    
    let polarBearFrenzy: TeamComp
    let pirateSwashbucklers: TeamComp
    
    let lordDraven: TeamComp
    let ladyJinx: TeamComp
    let jinxsPirateBrigade: TeamComp
    let theKnightsVow: TeamComp
    let knightlyRangers: TeamComp
    let jinxAndTheMeatwall: TeamComp
    
    let protectTheEve: TeamComp
    let assassinsFromTheVoid: TeamComp
    let demonOfTheVoid: TeamComp
    
    let theMeatiestWallOfAll: TeamComp
    let teenageMutantNinjaAssassins: TeamComp
    
    let yordellini: TeamComp
    let dragonSorcerers: TeamComp
    
    let iceQueenLissandra: TeamComp
    
    let wildSorcerers: TeamComp
    let hyperKnights: TeamComp
    
    let elementalRangers: TeamComp
    
    /////////////////https://tftactics.gg/tierlist/team-comps /////////
    
    let rangerKnights: TeamComp
    let voidSorcerers: TeamComp
    let voidBrawlers: TeamComp
    
    let jungleVoid: TeamComp
    let fullSorcerers: TeamComp
    let protectDraven: TeamComp
    let magicalYordles: TeamComp
    
    let nobles: TeamComp
    let botrkGunslingers: TeamComp
    let demonSorcerer: TeamComp
    let shapeShifters: TeamComp
    
    init() {
        let champions = Champions.shared
        let items = Items.shared
        
        // MARK: ELEMENTAL SORCERERS
        elementalSorcerers = TeamComp(name: "Elemental Sorcerers",
                                      tier: .B,
                                      patch: .nineOneFiveB,
                                      earlyUnits: [champions.garen, champions.darius, champions.kennen],
                                      midUnits: [champions.lissandra, champions.kennen, champions.brand, champions.lulu, champions.veigar],
                                      units: [champions.kennen, champions.veigar, champions.lulu, champions.morgana, champions.brand, champions.lissandra],
                                      carries: [champions.kennen, champions.morgana],
                                      carryItems: [champions.kennen : [items.morellonomicon, items.guardianAngel] ,
                                                   champions.morgana : [items.guardianAngel]
            ], webLink: "https://tft.mobalytics.gg/team-comp/Sorcerer-Yordle-Elemental")
        
        // MARK: ULTIMATE RANGER FORMATION
        ultimateRangerFormation = TeamComp(name: "Ultimate Ranger Formation",
                                           tier: .B,
                                           patch: .nineOneSeven,
                                           earlyUnits: [champions.garen, champions.vayne, champions.fiora, champions.varus],
                                           midUnits: [champions.vayne, champions.garen, champions.poppy, champions.varus, champions.mordekaiser, champions.darius],
                                           units: [champions.ashe, champions.varus, champions.kindred, champions.mordekaiser, champions.vayne, champions.braum, champions.pantheon],
                                           carries: [champions.ashe, champions.leona],
                                           carryItems: [champions.ashe : [items.guinsoosRageblade, items.runaansHurricane, items.hush],
                                                        champions.leona : [items.guardianAngel, items.morellonomicon] ],
                                           webLink: "https://tft.mobalytics.gg/team-comp/guardian-ranger-phantom")
        
        // MARK: PICK A BLUE CARD
        pickABlueCard = TeamComp(name: "Pick A Blue Card",
                                 tier: .B,
                                 patch: .nineOneSeven,
                                 earlyUnits: [champions.garen, champions.darius, champions.kennen, champions.twistedFate],
                                 midUnits: [champions.lissandra, champions.kennen, champions.brand, champions.twistedFate, champions.morgana, champions.lulu],
                                 units: [champions.kennen, champions.lulu, champions.twistedFate, champions.morgana, champions.brand, champions.lissandra, champions.poppy],
                                 carries: [champions.kennen, champions.brand, champions.morgana],
                                 carryItems: [
                                    champions.kennen : [items.morellonomicon,items.redemption, items.guardianAngel],
                                    champions.brand : [items.statikkShiv, items.morellonomicon],
                                    champions.morgana : [items.guardianAngel] ],
                                 webLink: "https://tft.mobalytics.gg/team-comp/TwistedFate-Sorc-Elemental")
        
        // MARK: AHRI AND THE BRAWLERS
        ahriAndTheBrawlers = TeamComp(name: "Ahri and the Brawlers",
                                      tier: .A,
                                      patch: .nineOneSeven,
                                      earlyUnits: [champions.warwick, champions.reksai, champions.ahri, champions.nidalee],
                                      midUnits: [champions.chogath, champions.ahri, champions.reksai, champions.warwick, champions.vi, champions.kassadin],
                                      units: [champions.warwick, champions.vi, champions.chogath, champions.reksai, champions.kassadin, champions.ahri, champions.lulu],
                                      carries: [champions.ahri, champions.chogath],
                                      carryItems: [
                                        champions.ahri : [items.ludensEcho, items.statikkShiv, items.guardianAngel],
                                        champions.chogath : [items.morellonomicon, items.guardianAngel] ],
                                      webLink: "https://tft.mobalytics.gg/team-comp/Void-Sorcerer-Brawler")
        
        // MARK: THE HUNTER AND THE PREDATOR
        theHunterAndThePredator = TeamComp(name: "The Hunter and the Predator",
                                           tier: .S,
                                           patch: .nineOneSeven,
                                           earlyUnits: [champions.kassadin, champions.reksai, champions.khazix, champions.warwick],
                                           midUnits: [champions.chogath, champions.khazix, champions.reksai, champions.zed, champions.rengar, champions.warwick],
                                           units: [champions.warwick, champions.vi, champions.chogath, champions.reksai, champions.khazix, champions.rengar, champions.akali],
                                           carries: [champions.rengar, champions.chogath],
                                           carryItems: [
                                            champions.rengar : [items.bloodthirster, items.guardianAngel, items.rapidFirecannon],
                                            champions.chogath : [items.morellonomicon, items.guardianAngel] ],
                                           webLink: "https://tft.mobalytics.gg/team-comp/Void-Assassin-Brawler")
        
        
        
        // MARK: BURST RANGERS
        burstRangers = TeamComp(name: "Burst Rangers",
                                tier: .S,
                                patch: .nineOneSeven,
                                earlyUnits: [champions.garen, champions.vayne, champions.fiora, champions.varus],
                                midUnits: [champions.ashe, champions.aatrox, champions.varus, champions.mordekaiser, champions.garen, champions.vayne],
                                units: [champions.ashe, champions.varus, champions.vayne, champions.kindred, champions.aatrox, champions.sejuani, champions.mordekaiser],
                                carries: [champions.ashe, champions.aatrox, champions.sejuani],
                                carryItems: [champions.ashe : [items.statikkShiv],
                                             champions.aatrox : [items.dragonsClaw, items.yuumi, items.guardianAngel],
                                             champions.sejuani : [items.guardianAngel, items.morellonomicon]  ],
                                webLink: "https://tft.mobalytics.gg/team-comp/demon-ranger-glacial")
        
        // MARK: DRAGON DEFENDERS
        dragonDefenders = TeamComp(name: "Dragon Defenders",
                                   tier: .B,
                                   patch: .nineOneFive,
                                   earlyUnits: [champions.warwick, champions.blitzcrank, champions.nidalee],
                                   midUnits: [champions.nidalee, champions.shyvana, champions.elise, champions.garen, champions.darius],
                                   units: [champions.gnar, champions.nidalee, champions.shyvana, champions.braum, champions.karthus, champions.lulu, champions.aurelionSol, champions.leona],
                                   carries: [champions.shyvana, champions.gnar, champions.braum],
                                   carryItems: [champions.shyvana : [items.warmogsArmor, items.thornmail, items.hextechGunblade],
                                                champions.gnar : [items.statikkShiv, items.statikkShiv],
                                                champions.braum : [items.thornmail] ], webLink: "https://tft.mobalytics.gg/team-comp/guardian-dragons")
        
        // MARK: THE IMPERIAL GUARD
        imperialGuard = TeamComp(name: "The Imperial Guard",
                                 tier: .S,
                                 patch: .nineOneNine,
                                 earlyUnits: [champions.darius, champions.garen, champions.fiora, champions.lucian],
                                 midUnits:  [champions.garen, champions.darius, champions.draven, champions.sejuani, champions.poppy, champions.shen],
                                 units: [champions.draven, champions.darius, champions.swain, champions.katarina, champions.garen, champions.poppy, champions.sejuani],
                                 carries: [champions.draven, champions.swain],
                                 carryItems: [
                                    champions.draven : [items.runaansHurricane, items.guinsoosRageblade, items.bloodthirster],
                                    champions.swain : [items.dragonsClaw, items.morellonomicon, items.guardianAngel] ],
                                 teamCompPositions: TeamCompPositions(champsPositions: [1 : champions.swain,
                                                                                        2 : champions.darius,
                                                                                        3 : champions.sejuani,
                                                                                        4 : champions.poppy,
                                                                                        15 : champions.draven,
                                                                                        18 : champions.katarina,
                                                                                        21 : champions.garen]) ,
                                 webLink: "https://tft.mobalytics.gg/team-comp/The_Imperial_Guard")
        
        // MARK: LITTLE SPARKS
        littleSparks = TeamComp(name: "Little Sparks",
                                tier: .B,
                                patch: .nineOneFive,
                                earlyUnits: [champions.tristana, champions.lulu, champions.lucian],
                                midUnits: [champions.poppy, champions.kennen, champions.garen, champions.darius, champions.mordekaiser],
                                units: [champions.tristana, champions.ahri, champions.kennen, champions.poppy, champions.lulu, champions.veigar, champions.gnar],
                                carries: [champions.gnar, champions.kennen],
                                carryItems: [champions.gnar : [items.statikkShiv, items.statikkShiv],
                                             champions.kennen : [items.morellonomicon, items.guardianAngel] ], webLink: "https://tft.mobalytics.gg/team-comp/yordle-sorcerer-wild")
        
        // MARK: POLAR BEAR FRENZY
        polarBearFrenzy = TeamComp(name: "Polar Bear Frenzy",
                                   tier: .B,
                                   patch: .nineOneFive,
                                   earlyUnits: [champions.warwick, champions.blitzcrank, champions.nidalee],
                                   midUnits: [champions.volibear, champions.brand, champions.lissandra, champions.kennen, champions.chogath],
                                   units: [champions.volibear, champions.reksai, champions.chogath, champions.blitzcrank, champions.kennen, champions.lissandra, champions.brand],
                                   carries: [champions.volibear, champions.kennen],
                                   carryItems: [champions.volibear : [items.rapidFirecannon, items.cursedBlade],
                                                champions.kennen : [items.morellonomicon, items.guardianAngel] ], webLink: "https://tft.mobalytics.gg/team-comp/glacial-brawlers")
        
        // MARK: PIRATE SWASHBUCKLERS
        pirateSwashbucklers = TeamComp(name: "Pirate Swashbucklers",
                                       tier: .A,
                                       patch: .nineOneNine,
                                       earlyUnits: [champions.tristana, champions.graves, champions.twistedFate, champions.twistedFate],
                                       midUnits: [champions.tristana, champions.graves, champions.pyke, champions.gangplank, champions.lucian, champions.shen],
                                       units: [champions.tristana, champions.graves, champions.gangplank, champions.lucian, champions.shen, champions.pyke],
                                       carries: [champions.tristana, champions.lucian],
                                       carryItems: [champions.tristana : [items.hush, items.bladeOfTheRuinedKing, items.giantSlayer],
                                                    champions.lucian : [items.hush, items.swordBreaker, items.redBuff] ],
                                       teamCompPositions: TeamCompPositions(champsPositions: [
                                       3 : champions.gangplank,
                                       4 : champions.shen,
                                       5 : champions.graves,
                                       15 : champions.pyke,
                                       18 : champions.tristana,
                                       20 : champions.lucian,]) ,
                                       webLink: "https://tft.mobalytics.gg/team-comp/Pirate_Swashbucklers")
        
        // MARK: LORD DRAVEN
        lordDraven = TeamComp(name: "Lord Draven",
                              tier: .A,
                              patch: .nineOneNine,
                              earlyUnits: [champions.gangplank, champions.graves, champions.pyke, champions.lucian],
                              midUnits: [champions.graves, champions.pyke, champions.lucian, champions.gangplank, champions.tristana, champions.shen],
                              units: [champions.vayne, champions.fiora, champions.garen, champions.leona, champions.lucian, champions.kayle, champions.draven, champions.gangplank],
                              carries: [champions.draven, champions.gangplank],
                              carryItems: [
                                champions.draven : [items.guinsoosRageblade, items.runaansHurricane, items.bloodthirster],
                                champions.gangplank : [items.guardianAngel, items.hush, items.redBuff] ],
                              teamCompPositions: TeamCompPositions(champsPositions: [
                              2 : champions.leona,
                              5 : champions.garen,
                              9 : champions.kayle,
                              14 : champions.gangplank,
                              15 : champions.fiora,
                              17 : champions.lucian,
                              19 : champions.draven,
                              21 : champions.vayne
                              ]) ,
                              webLink: "https://tft.mobalytics.gg/team-comp/Lord_Draven")
        
        // MARK: LADY JINX
        ladyJinx = TeamComp(name: "Lady Jinx",
                            tier: .A,
                            patch: .nineOneNine,
                            earlyUnits: [champions.garen, champions.fiora, champions.darius, champions.lucian],
                            midUnits: [champions.garen, champions.darius, champions.lucian, champions.gangplank, champions.fiora, champions.jinx],
                            units: [champions.vayne, champions.fiora, champions.garen, champions.leona, champions.lucian, champions.kayle, champions.jinx, champions.draven],
                            carries: [champions.jinx],
                            carryItems: [
                                champions.jinx : [items.bladeOfTheRuinedKing, items.giantSlayer, items.bloodthirster] ],
                            teamCompPositions: TeamCompPositions(champsPositions: [
                            2 : champions.leona,
                            5 : champions.garen,
                            10 : champions.kayle,
                            15 : champions.fiora,
                            17 : champions.lucian,
                            19 : champions.jinx,
                            21 : champions.vayne
                            ]) ,
                            webLink: "https://tft.mobalytics.gg/team-comp/Lady_Jinx")
        
        // MARK: JINX'S PIRATE BRIGADE
        jinxsPirateBrigade = TeamComp(name: "Jinx's Pirate Brigade",
                                      tier: .B,
                                      patch: .nineOneSixB,
                                      earlyUnits: [champions.tristana, champions.graves, champions.lucian],
                                      midUnits: [champions.tristana, champions.graves, champions.lucian, champions.gangplank, champions.pyke],
                                      units: [champions.tristana, champions.graves, champions.gangplank, champions.lucian, champions.missFortune, champions.jinx, champions.camille],
                                      carries: [champions.jinx],
                                      carryItems: [
                                        champions.jinx : [items.bladeOfTheRuinedKing, items.rapidFirecannon, items.hextechGunblade], ],
                                      webLink: "https://tft.mobalytics.gg/team-comp/Gunslinger-Blademaster")
        
        
        // MARK: THE KNIGHTS VOW
        theKnightsVow = TeamComp(name: "The Knight's Vow",
                                 tier: .A,
                                 patch: .nineOneSixB,
                                 earlyUnits: [champions.garen, champions.darius, champions.mordekaiser],
                                 midUnits: [champions.garen, champions.darius, champions.poppy, champions.mordekaiser, champions.sejuani],
                                 units: [champions.darius, champions.garen, champions.poppy, champions.sejuani, champions.kayle, champions.swain, champions.varus],
                                 carries: [champions.swain, champions.varus],
                                 carryItems: [
                                    champions.swain : [items.guardianAngel, items.morellonomicon, items.knightsVow],
                                    champions.varus : [items.ionicSpark, items.ionicSpark] ],
                                 webLink: "https://tft.mobalytics.gg/team-comp/Knights")
        
        // MARK: KNIGHTLY RANGERS
        knightlyRangers = TeamComp(name: "Knightly Rangers",
                                   tier: .B,
                                   patch: .nineOneSeven,
                                   earlyUnits: [champions.garen, champions.vayne, champions.mordekaiser, champions.varus],
                                   midUnits: [champions.garen, champions.vayne, champions.darius, champions.varus, champions.mordekaiser, champions.poppy],
                                   units: [champions.ashe, champions.varus, champions.kindred, champions.mordekaiser, champions.vayne, champions.poppy, champions.sejuani],
                                   carries: [champions.ashe, champions.kindred, champions.sejuani],
                                   carryItems: [
                                    champions.ashe : [items.guinsoosRageblade, items.runaansHurricane, items.hush],
                                    champions.kindred : [items.knightsVow],
                                    champions.sejuani : [items.guardianAngel]
            ], webLink: "https://tft.mobalytics.gg/team-comp/Ranger-Knights")
        
        // MARK: JINX AND THE MEATWALL
        jinxAndTheMeatwall = TeamComp(name: "Jinx and the Meat Wall",
                                      tier: .B,
                                      patch: .nineOneSixB,
                                      earlyUnits: [champions.reksai, champions.warwick, champions.nidalee],
                                      midUnits: [champions.blitzcrank, champions.warwick, champions.nidalee, champions.reksai, champions.vi],
                                      units: [champions.volibear, champions.reksai, champions.chogath, champions.blitzcrank, champions.vi, champions.warwick, champions.jinx],
                                      carries: [champions.jinx],
                                      carryItems: [champions.jinx : [items.rapidFirecannon, items.hextechGunblade, items.infinityEdge],
            ], webLink: "https://tft.mobalytics.gg/team-comp/Brawlers-Hextech")
        
        // MARK: PROTECT THE EVE
        protectTheEve = TeamComp(name: "Protect the Eve",
                                 tier: .A,
                                 patch: .nineOneSeven,
                                 earlyUnits: [champions.garen, champions.darius, champions.evelynn],
                                 midUnits: [champions.garen, champions.poppy, champions.leona, champions.braum, champions.evelynn],
                                 units: [champions.evelynn, champions.brand, champions.leona, champions.braum, champions.poppy, champions.sejuani, champions.jinx],
                                 carries: [champions.evelynn, champions.brand, champions.sejuani],
                                 carryItems: [champions.evelynn : [items.hextechGunblade, items.dragonsClaw, items.guardianAngel],
                                              champions.brand : [items.morellonomicon],
                                              champions.sejuani : [items.guardianAngel, items.morellonomicon, items.redemption],
            ], webLink: "https://tft.mobalytics.gg/team-comp/Eve-Guardians")
        
        // MARK: ASSASSINS FROM THE VOID
        assassinsFromTheVoid = TeamComp(name: "Assassins from the Void",
                                 tier: .S,
                                 patch: .nineOneSeven,
                                 earlyUnits: [champions.kassadin, champions.reksai, champions.khazix, champions.zed],
                                 midUnits: [champions.zed, champions.pyke, champions.khazix, champions.reksai, champions.chogath, champions.evelynn],
                                 units: [champions.kassadin, champions.reksai, champions.khazix, champions.akali, champions.pyke, champions.rengar, champions.evelynn],
                                 carries: [champions.chogath, champions.akali, champions.reksai],
                                 carryItems: [champions.kassadin : [items.youmuusGhostblade, items.dragonsClaw, items.rapidFirecannon],
                                              champions.reksai : [items.youmuusGhostblade, items.dragonsClaw, items.rapidFirecannon],
            ], webLink: "https://tft.mobalytics.gg/team-comp/Void-sins")
        
        // MARK: DEMON OF THE VOID
        demonOfTheVoid = TeamComp(name: "Demon of the Void",
                                        tier: .A,
                                        patch: .nineOneSeven,
                                        earlyUnits: [champions.kassadin, champions.reksai, champions.blitzcrank, champions.khazix],
                                        midUnits: [champions.morgana, champions.varus, champions.chogath, champions.kassadin, champions.twistedFate, champions.evelynn],
                                        units: [champions.reksai, champions.chogath, champions.kassadin, champions.morgana, champions.aurelionSol, champions.brand, champions.evelynn],
                                        carries: [champions.chogath, champions.evelynn, champions.brand],
                                        carryItems: [champions.chogath : [items.morellonomicon, items.guardianAngel, items.darkin],
                                                     champions.evelynn : [items.dragonsClaw, items.hextechGunblade, items.guardianAngel],
                                                     champions.brand : [items.morellonomicon, items.rapidFirecannon],
            ], webLink: "https://tft.mobalytics.gg/team-comp/Void-demons")
        
        // MARK: The MEATIEST WALL OF ALL
        theMeatiestWallOfAll = TeamComp(name: "The Meatiest Wall of All",
                                  tier: .A,
                                  patch: .nineOneSeven,
                                  earlyUnits: [champions.nidalee, champions.jayce, champions.elise, champions.warwick],
                                  midUnits: [champions.nidalee, champions.jayce, champions.elise, champions.warwick, champions.vi, champions.varus],
                                  units: [champions.nidalee, champions.gnar, champions.swain, champions.elise, champions.jayce, champions.shyvana, champions.pantheon, champions.leona],
                                  carries: [champions.swain, champions.shyvana, champions.pantheon],
                                  carryItems: [champions.swain : [items.morellonomicon, items.guardianAngel, items.redemption],
                                               champions.shyvana : [items.warmogsArmor, items.hextechGunblade, items.thornmail],
                                               champions.pantheon : [items.guardianAngel],
            ], webLink: "https://tft.mobalytics.gg/team-comp/Shapeshifter-Wild")
        
        // MARK: TEENAGE MUTANT NINJA ASSASSINS
        teenageMutantNinjaAssassins = TeamComp(name: "Teenage Mutant Ninja Assassins",
                                        tier: .A,
                                        patch: .nineOneNine,
                                        earlyUnits: [champions.pyke, champions.zed, champions.khazix, champions.warwick],
                                        midUnits: [champions.brand, champions.kennen, champions.lissandra, champions.pyke, champions.zed, champions.khazix],
                                        units: [champions.rengar, champions.evelynn, champions.kennen, champions.shen, champions.zed, champions.pyke, champions.akali],
                                        carries: [champions.kennen, champions.akali],
                                        carryItems: [champions.kennen : [items.morellonomicon, items.guardianAngel, items.youmuusGhostblade],
                                                     champions.akali : [items.dragonsClaw, items.hextechGunblade, items.phantomDancer]],
                                        teamCompPositions: TeamCompPositions(champsPositions: [
                                        15 : champions.akali,
                                        16 : champions.kennen,
                                        17 : champions.evelynn,
                                        18 : champions.zed,
                                        19 : champions.rengar,
                                        20 : champions.pyke,
                                        21 : champions.shen
                                        ]) ,
                                        webLink: "https://tft.mobalytics.gg/team-comp/Teenage_Mutant_Ninja_Assassins")
        
        
        // MARK: YORDELLINI
        yordellini = TeamComp(name: "Yordellini",
        tier: .A,
        patch: .nineOneSeven,
        earlyUnits: [champions.tristana, champions.lucian, champions.garen, champions.darius],
        midUnits: [champions.poppy, champions.kennen, champions.garen, champions.darius, champions.mordekaiser, champions.lulu],
        units: [champions.tristana, champions.ahri, champions.kennen, champions.poppy, champions.lulu, champions.veigar, champions.gnar],
        carries: [champions.kennen, champions.gnar],
        carryItems: [champions.kennen : [items.morellonomicon, items.guardianAngel],
        champions.gnar : [items.warmogsArmor, items.dragonsClaw]
        ,
        ], webLink: "https://tft.mobalytics.gg/team-comp/Yordellini")
        
        // MARK: DRAGON SORCERERS
        dragonSorcerers = TeamComp(name: "Dragon Sorcerers",
                              tier: .S,
                              patch: .nineOneNine,
                              earlyUnits: [champions.elise, champions.warwick, champions.nidalee, champions.jayce],
                              midUnits: [champions.nidalee, champions.gnar, champions.elise, champions.warwick, champions.kennen, champions.lulu],
                              units: [champions.gnar, champions.nidalee,champions.lulu, champions.shyvana, champions.twistedFate, champions.kennen, champions.aurelionSol],
                              carries: [champions.kennen, champions.shyvana, champions.aurelionSol],
                              carryItems: [champions.kennen : [items.guardianAngel ,items.morellonomicon, items.redemption],
                                           champions.aurelionSol : [items.morellonomicon],
                                           champions.shyvana : [items.guardianAngel, items.warmogsArmor],
                                            ],
                              teamCompPositions: TeamCompPositions(champsPositions: [1 : champions.nidalee,
                                                                                     2 : champions.kennen,
                                                                                     3 : champions.shyvana,
                                                                                     8 : champions.lulu,
                                                                                     9 : champions.twistedFate,
                                                                                     10 : champions.gnar,
                                                                                     15 : champions.aurelionSol] ),
                              webLink: "https://tft.mobalytics.gg/team-comp/Dragon_Sorcerers")
        
        
        // MARK: ICE QUEEN LISSANDRA
        iceQueenLissandra = TeamComp(name: "Ice Queen Lissandra",
                              tier: .A,
                              patch: .nineOneSeven,
                              earlyUnits: [champions.lissandra, champions.garen, champions.darius, champions.braum],
                              midUnits: [champions.brand, champions.lissandra, champions.kennen, champions.lulu, champions.poppy],
                              units: [champions.brand, champions.lissandra, champions.kennen, champions.gnar, champions.poppy, champions.sejuani],
                              carries: [champions.lissandra, champions.gnar],
                              carryItems: [champions.lissandra : [items.morellonomicon, items.redemption, items.guardianAngel],
                                           champions.gnar : [items.warmogsArmor, items.dragonsClaw]
                                ,
            ], webLink: "https://tft.mobalytics.gg/team-comp/Ice-Queen-Lissandra")
        
        // MARK: WILD SORCERERS
        wildSorcerers = TeamComp(name: "Wild Sorcerers",
                              tier: .A,
                              patch: .nineOneNine,
                              earlyUnits: [champions.warwick, champions.shyvana, champions.nidalee, champions.jayce],
                              midUnits: [champions.nidalee, champions.gnar, champions.shyvana, champions.warwick, champions.ahri, champions.twistedFate],
                              units: [champions.gnar, champions.nidalee, champions.shyvana, champions.twistedFate, champions.warwick, champions.ahri, champions.aurelionSol],
                              carries: [champions.aurelionSol, champions.shyvana, champions.gnar],
                              carryItems: [champions.aurelionSol : [items.morellonomicon],
                                           champions.shyvana : [items.warmogsArmor, items.guardianAngel],
                                           champions.gnar : [items.warmogsArmor, items.guinsoosRageblade],
                                           ],
                              teamCompPositions: TeamCompPositions(champsPositions: [
                              1 : champions.nidalee,
                              2 : champions.warwick,
                              3 : champions.shyvana,
                              8 : champions.ahri,
                              9 : champions.twistedFate,
                              10 : champions.gnar,
                              15 : champions.aurelionSol,
                              ]),
                              webLink: "https://tft.mobalytics.gg/team-comp/Wild_Sorcerers")
        
        // MARK: HYPER KNIGHTS
        hyperKnights = TeamComp(name: "Hyper Knights",
                              tier: .A,
                              patch: .nineOneNine,
                              earlyUnits: [champions.darius, champions.garen, champions.varus, champions.vayne],
                              midUnits: [champions.darius, champions.garen, champions.mordekaiser, champions.poppy, champions.varus, champions.vayne],
                              units: [champions.darius, champions.garen, champions.kindred, champions.mordekaiser, champions.poppy, champions.sejuani, champions.vayne],
                              carries: [champions.vayne, champions.kindred],
                              carryItems: [champions.vayne : [items.guinsoosRageblade, items.runaansHurricane, items.giantSlayer],
                                           champions.kindred : [items.knightsVow],
                                            ],
                              teamCompPositions: TeamCompPositions(champsPositions: [
                              1 : champions.darius,
                              2 : champions.garen,
                              3 : champions.sejuani,
                              4 : champions.poppy,
                              15 : champions.vayne,
                              17 : champions.kindred,
                              21 : champions.mordekaiser
                              ]) ,
                              webLink: "https://tft.mobalytics.gg/team-comp/Hyper_Knights")
        
        // MARK: ELEMENTAL RANGERS
           elementalRangers = TeamComp(name: "Elemental Rangers",
                                 tier: .B,
                                 patch: .nineOneNine,
                                 earlyUnits: [champions.garen, champions.darius, champions.vayne, champions.varus],
                                 midUnits: [champions.vayne, champions.ashe, champions.lissandra, champions.kennen, champions.brand, champions.varus],
                                 units: [champions.vayne, champions.ashe, champions.brand, champions.sejuani, champions.lissandra, champions.anivia, champions.varus, champions.kindred],
                                 carries: [champions.kennen, champions.ashe],
                                 carryItems: [champions.kennen : [items.guardianAngel],
                                              champions.ashe : [items.guinsoosRageblade, items.runaansHurricane, items.giantSlayer],
                                            ],
                                 teamCompPositions: TeamCompPositions(champsPositions: [
                                 8 : champions.lissandra,
                                 9 : champions.vayne,
                                 10 : champions.kennen,
                                 15 : champions.ashe,
                                 16 : champions.kindred,
                                 17 : champions.brand,
                                 21 : champions.varus
                                 ]) ,
                                 webLink: "https://tft.mobalytics.gg/team-comp/elemental_rangers")
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        // MARK: TFT TACTICS GG
        
        
        // MARK: NOBLES
        nobles = TeamComp(name: "Nobles",
                          tier: .S,
                          patch: .nineOneSixB,
                          earlyUnits: [champions.garen, champions.vayne, champions.lucian],
                          midUnits: [champions.garen, champions.lucian, champions.vi, champions.jinx, champions.leona],
                          units: [champions.fiora, champions.garen, champions.vayne, champions.lucian, champions.vi, champions.jinx, champions.kayle, champions.leona],
                          carries: [champions.jinx, champions.kayle],
                          carryItems: [champions.jinx : [items.rapidFirecannon, items.runaansHurricane], champions.kayle : [items.spearOfShojin]], webLink: nil)
        
        // MARK: RANGER KNIGHTS
        rangerKnights = TeamComp(name: "Ranger Knights",
                                 tier: .S, patch: .nineOneFive,
                                 earlyUnits: [champions.garen, champions.fiora, champions.vayne],
                                 midUnits: [champions.vayne, champions.varus, champions.braum, champions.ashe, champions.kindred, champions.leona],
                                 units: [champions.mordekaiser, champions.vayne, champions.varus, champions.braum, champions.ashe, champions.kindred, champions.leona, champions.kayle],
                                 carries: [champions.ashe],
                                 carryItems: [champions.ashe : [items.statikkShiv, items.statikkShiv, items.statikkShiv]], webLink: "<#String?#>")
        
        // MARK: VOID SORCERERS
        voidSorcerers = TeamComp(name: "Void Sorcerers",
                                 tier: .S,
                                 patch: .nineOneSixB,
                                 earlyUnits: [champions.kassadin, champions.khazix, champions.reksai],
                                 midUnits: [champions.kassadin, champions.khazix, champions.warwick, champions.ahri, champions.reksai],
                                 units: [champions.kassadin, champions.blitzcrank, champions.reksai, champions.vi, champions.aurelionSol, champions.chogath, champions.jinx, champions.karthus],
                                 carries: [champions.chogath, champions.karthus],
                                 carryItems: [
                                    champions.chogath : [items.morellonomicon, items.guardianAngel, items.rabadonsDeathcap],
                                    champions.karthus : [items.seraphsEmbrace, items.seraphsEmbrace, items.rabadonsDeathcap] ],
                                 webLink: nil)
        
        // MARK: VOID BRAWLERS
        voidBrawlers = TeamComp(name: "Void Brawlers",
                                tier: .S,
                                patch: .nineOneSixB,
                                earlyUnits: [champions.kassadin, champions.khazix, champions.reksai],
                                midUnits: [champions.kassadin, champions.blitzcrank, champions.reksai, champions.vi, champions.chogath],
                                units: [champions.kassadin, champions.reksai, champions.blitzcrank, champions.vi, champions.chogath, champions.jinx, champions.missFortune],
                                carries: [champions.jinx, champions.missFortune],
                                carryItems: [
                                    champions.jinx : [items.rapidFirecannon, items.runaansHurricane],
                                    champions.missFortune : [items.seraphsEmbrace] ],
                                webLink: nil)
        
        // MARK: JUNGLE VOID
        jungleVoid = TeamComp(name: "Jungle Void",
                              tier: .S,
                              patch: .nineOneFiveB,
                              earlyUnits: [champions.kassadin, champions.khazix, champions.reksai],
                              midUnits: [champions.warwick, champions.khazix, champions.blitzcrank, champions.reksai, champions.chogath],
                              units: [champions.khazix, champions.warwick, champions.blitzcrank, champions.rengar, champions.reksai, champions.chogath, champions.akali],
                              carries: [champions.chogath, champions.rengar],
                              carryItems: [champions.chogath : [items.morellonomicon, items.guardianAngel, items.rabadonsDeathcap],
                                           champions.rengar : [items.guardianAngel, items.statikkShiv, items.rapidFirecannon] ], webLink: nil)
        
        // MARK: FULL SORECERERS
        fullSorcerers = TeamComp(name: "Full Sorcerers",
                                 tier: .S,
                                 patch: .nineOneFiveB,
                                 earlyUnits: [champions.kassadin, champions.khazix, champions.reksai],
                                 midUnits: [champions.kassadin, champions.lulu, champions.veigar, champions.morgana, champions.poppy],
                                 units: [champions.mordekaiser, champions.lulu, champions.ahri, champions.veigar, champions.poppy, champions.morgana, champions.aurelionSol, champions.karthus],
                                 carries: [champions.aurelionSol, champions.karthus],
                                 carryItems: [champions.aurelionSol : [items.spearOfShojin, items.spearOfShojin, items.morellonomicon],
                                              champions.karthus : [items.seraphsEmbrace, items.seraphsEmbrace, items.rabadonsDeathcap] ], webLink: nil)
        
        // MARK: PROTECT DRAVEN
        protectDraven = TeamComp(name: "Protect Draven",
                                 tier: .S,
                                 patch: .nineOneFiveB,
                                 earlyUnits: [champions.mordekaiser, champions.darius, champions.garen],
                                 midUnits: [champions.garen, champions.darius, champions.braum, champions.leona, champions.draven],
                                 units: [champions.mordekaiser, champions.darius, champions.braum, champions.draven, champions.leona, champions.sejuani, champions.karthus, champions.kayle],
                                 carries: [champions.draven, champions.karthus],
                                 carryItems: [champions.draven : [items.rapidFirecannon, items.guardianAngel, items.bloodthirster]  ], webLink: nil)
        
        
        // MARK: MAGICAL YORDLES
        magicalYordles = TeamComp(name: "Magical Yordles",
                                  tier: .A,
                                  patch: .nineOneSixB,
                                  earlyUnits: [champions.fiora, champions.garen, champions.lucian],
                                  midUnits: [champions.garen, champions.twistedFate, champions.kennen, champions.poppy, champions.morgana, champions.veigar],
                                  units: [champions.twistedFate, champions.kennen, champions.morgana, champions.poppy, champions.brand, champions.gnar, champions.karthus, champions.anivia],
                                  carries: [champions.twistedFate, champions.kennen],
                                  carryItems: [champions.twistedFate : [items.statikkShiv, items.statikkShiv, items.ludensEcho],
                                               champions.kennen : [items.morellonomicon, items.guardianAngel] ],
                                  webLink: nil)
        
        // MARK: botrkGunslingers
        botrkGunslingers = TeamComp(name: "BotRK Gunslingers",
                                    tier: .A,
                                    patch: .nineOneSixB,
                                    earlyUnits: [champions.graves, champions.tristana, champions.lucian],
                                    midUnits: [champions.graves, champions.tristana, champions.lucian, champions.pyke, champions.gangplank],
                                    units: [champions.camille, champions.tristana, champions.shen, champions.gangplank, champions.draven, champions.jinx, champions.missFortune, champions.yasuo],
                                    carries: [champions.jinx],
                                    carryItems: [champions.jinx : [items.bladeOfTheRuinedKing, items.rapidFirecannon, items.runaansHurricane]],
                                    webLink: nil)
        
        // MARK: DEMON SORCERER
        demonSorcerer = TeamComp(name: "Demon Sorcerer",
                                 tier: .A,
                                 patch: .nineOneSixB,
                                 earlyUnits: [champions.garen, champions.vayne, champions.lucian],
                                 midUnits: [champions.varus, champions.aatrox, champions.evelynn, champions.kennen, champions.morgana],
                                 units: [champions.twistedFate, champions.aatrox, champions.kennen, champions.morgana, champions.brand, champions.anivia, champions.karthus, champions.swain],
                                 carries: [champions.kennen, champions.brand],
                                 carryItems: [
                                    champions.kennen : [items.morellonomicon, items.guardianAngel] ,
                                    champions.brand : [items.morellonomicon , items.guardianAngel] ],
                                 webLink: nil)
        
        // MARK: NINJA ELEMENTALISTS
        ninjaElementalists = TeamComp(name: "Ninja Elementalists",
                                      tier: .A,
                                      patch: .nineOneSeven,
                                      earlyUnits: [champions.pyke, champions.zed, champions.khazix, champions.reksai],
                                      midUnits: [champions.brand, champions.lissandra, champions.kennen, champions.pyke, champions.zed, champions.khazix],
                                      units: [champions.brand, champions.lissandra, champions.kennen, champions.shen, champions.zed, champions.pyke, champions.akali],
                                      carries: [champions.akali, champions.kennen, champions.zed],
                                      carryItems: [
                                        champions.akali : [items.dragonsClaw, items.phantomDancer, items.hextechGunblade],
                                        champions.kennen : [items.morellonomicon, items.guardianAngel],
                                        champions.zed : [items.zekesHerald] ], webLink: "https://tft.mobalytics.gg/team-comp/ninja-elementalist")
        
        // MARK: SHAPESHIFTERS
        shapeShifters = TeamComp(name: "Shapeshifters",
                                 tier: .A,
                                 patch: .nineOneSixB,
                                 earlyUnits: [champions.elise, champions.jayce, champions.nidalee],
                                 midUnits: [champions.ahri, champions.jayce, champions.nidalee, champions.vi, champions.gnar],
                                 units: [champions.elise, champions.jayce, champions.nidalee, champions.shyvana, champions.aurelionSol, champions.draven, champions.gnar, champions.swain],
                                 carries: [champions.shyvana],
                                 carryItems: [
                                    champions.shyvana : [items.guardianAngel, items.hextechGunblade, items.warmogsArmor] ],
                                 webLink: nil)
        
    }
    
    
    
    
}

