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
            ninjaElementalists, burstRangers, dragonGuardians, imperialGuard,
            polarBearFrenzy, pirateSwashbucklers, rangerKnights, voidSorcerers, voidBrawlers,
            jungleVoid, fullSorcerers, protectDraven, magicalYordles,
            lordDraven, ladyJinx, jinxsPirateBrigade, theKnightsVow, knightlyRangers, jinxAndTheMeatwall,
            nobles, botrkGunslingers, demonSorcerer, shapeShifters,
            protectTheEve,  assassinsFromTheVoid,
            demonOfTheVoid, theMeatiestWallOfAll, teenageMutantNinjaAssassins, yordellini,
            iceQueenLissandra, wildSorcerers, hyperKnights, elementalRangers, wildAndFreeAssassins,
            hyperShifters, dragonsAndYordles, theWall, varusGrandMagus, voidExodia, ironDragons, imperialShifters, jinxKnights, theOccult
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
    let dragonGuardians: TeamComp
    let imperialGuard: TeamComp
    
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
    
    let iceQueenLissandra: TeamComp
    
    let wildSorcerers: TeamComp
    let hyperKnights: TeamComp
    
    let elementalRangers: TeamComp
    
    let wildAndFreeAssassins: TeamComp
    let hyperShifters: TeamComp
    let dragonsAndYordles: TeamComp
    
    let theWall: TeamComp
    let varusGrandMagus: TeamComp
    
    let voidExodia: TeamComp
    
    let ironDragons: TeamComp
    
    let imperialShifters: TeamComp
    
    let jinxKnights: TeamComp
    
    let theOccult: TeamComp
    
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
                                      patch: TeamCompPatch.nineOneFiveB.rawValue,
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
                                           patch: TeamCompPatch.nineOneSeven.rawValue,
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
                                 patch: TeamCompPatch.nineOneSeven.rawValue,
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
                                      patch: TeamCompPatch.nineOneSeven.rawValue,
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
                                           patch: TeamCompPatch.nineOneSeven.rawValue,
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
                                patch: TeamCompPatch.nineOneSeven.rawValue,
                                earlyUnits: [champions.garen, champions.vayne, champions.fiora, champions.varus],
                                midUnits: [champions.ashe, champions.aatrox, champions.varus, champions.mordekaiser, champions.garen, champions.vayne],
                                units: [champions.ashe, champions.varus, champions.vayne, champions.kindred, champions.aatrox, champions.sejuani, champions.mordekaiser],
                                carries: [champions.ashe, champions.aatrox, champions.sejuani],
                                carryItems: [champions.ashe : [items.statikkShiv],
                                             champions.aatrox : [items.dragonsClaw, items.yuumi, items.guardianAngel],
                                             champions.sejuani : [items.guardianAngel, items.morellonomicon]  ],
                                webLink: "https://tft.mobalytics.gg/team-comp/demon-ranger-glacial")
        
        // MARK: DRAGON GAURDIANS
        dragonGuardians = TeamComp(name: "Dragon Guardians",
                                   tier: .S,
                                   patch: TeamCompPatch.nineTwoZero.rawValue,
                                   earlyUnits: [champions.darius, champions.garen, champions.lucian, champions.mordekaiser],
                                   midUnits: [champions.darius, champions.garen, champions.poppy, champions.mordekaiser, champions.sejuani, champions.leona],
                                   units: [champions.darius, champions.poppy, champions.sejuani, champions.pantheon, champions.leona, champions.mordekaiser, champions.aurelionSol, champions.karthus],
                                   carries: [champions.pantheon, champions.aurelionSol],
                                   carryItems: [champions.pantheon : [items.yuumi, items.thornmail, items.thornmail],
                                                champions.aurelionSol : [items.morellonomicon, items.rabadonsDeathcap] ],
                                   teamCompPositions: TeamCompPositions(champsPositions: [
                                    1 : champions.poppy,
                                   4 : champions.pantheon,
                                   5 : champions.sejuani,
                                   8 : champions.darius,
                                   12 : champions.leona,
                                   14 : champions.mordekaiser,
                                   18 : champions.karthus,
                                   19 : champions.aurelionSol
                                   ]) ,
                                   webLink: nil)
        
        // MARK: THE IMPERIAL GUARD
        imperialGuard = TeamComp(name: "Imperial Knights",
                                 tier: .S,
                                 patch: TeamCompPatch.nineTwoZero.rawValue,
                                 earlyUnits: [champions.darius, champions.garen, champions.fiora, champions.lucian],
                                 midUnits:  [champions.garen, champions.darius, champions.draven, champions.sejuani, champions.poppy, champions.shen],
                                 units: [champions.draven, champions.darius, champions.swain, champions.katarina, champions.kayle, champions.poppy, champions.sejuani, champions.mordekaiser],
                                 carries: [champions.draven, champions.swain, champions.katarina],
                                 carryItems: [
                                    champions.draven : [items.guardianAngel, items.rapidFirecannon, items.bloodthirster],
                                    champions.swain : [items.guardianAngel, items.morellonomicon],
                                    champions.katarina : [items.knightsVow, items.frozenHeart, items.frozenHeart] ],
                                 teamCompPositions: TeamCompPositions(champsPositions: [4 : champions.sejuani,
                                                                                        15: champions.katarina,
                                                                                        16 : champions.mordekaiser,
                                                                                        17 : champions.kayle,
                                                                                        18 : champions.draven,
                                                                                        19 : champions.poppy,
                                                                                        20 : champions.swain,
                                                                                        21 : champions.darius
                                                                                        ]) ,
                                 webLink: nil)
        
        // MARK: POLAR BEAR FRENZY
        polarBearFrenzy = TeamComp(name: "Polar Bear Frenzy",
                                   tier: .B,
                                   patch: TeamCompPatch.nineOneFive.rawValue,
                                   earlyUnits: [champions.warwick, champions.blitzcrank, champions.nidalee],
                                   midUnits: [champions.volibear, champions.brand, champions.lissandra, champions.kennen, champions.chogath],
                                   units: [champions.volibear, champions.reksai, champions.chogath, champions.blitzcrank, champions.kennen, champions.lissandra, champions.brand],
                                   carries: [champions.volibear, champions.kennen],
                                   carryItems: [champions.volibear : [items.rapidFirecannon, items.cursedBlade],
                                                champions.kennen : [items.morellonomicon, items.guardianAngel] ], webLink: "https://tft.mobalytics.gg/team-comp/glacial-brawlers")
        
        // MARK: PIRATE SWASHBUCKLERS
        pirateSwashbucklers = TeamComp(name: "Pirate Swashbucklers",
                                       tier: .B,
                                       patch: TeamCompPatch.nineOneNine.rawValue,
                                       earlyUnits: [champions.tristana, champions.graves, champions.twistedFate],
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
                              tier: .B,
                              patch: TeamCompPatch.nineOneNine.rawValue,
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
                            tier: .B,
                            patch: TeamCompPatch.nineOneNine.rawValue,
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
                            18 : champions.draven,
                            19 : champions.jinx,
                            21 : champions.vayne
                            ]) ,
                            webLink: "https://tft.mobalytics.gg/team-comp/Lady_Jinx")
        
        // MARK: JINX'S PIRATE BRIGADE
        jinxsPirateBrigade = TeamComp(name: "Jinx's Pirate Brigade",
                                      tier: .B,
                                      patch: TeamCompPatch.nineOneSixB.rawValue,
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
                                 patch: TeamCompPatch.nineOneSixB.rawValue,
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
                                   patch: TeamCompPatch.nineOneSeven.rawValue,
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
                                      tier: .A,
                                      patch: TeamCompPatch.nineTwoZero.rawValue,
                                      earlyUnits: [champions.blitzcrank, champions.lucian, champions.warwick, champions.reksai],
                                      midUnits: [champions.blitzcrank, champions.jinx, champions.lucian, champions.reksai, champions.vi, champions.warwick],
                                      units: [champions.blitzcrank, champions.chogath, champions.jinx, champions.lucian, champions.reksai, champions.vi, champions.volibear, champions.warwick],
                                      carries: [champions.blitzcrank, champions.jinx],
                                      carryItems: [champions.jinx : [items.giantSlayer, items.runaansHurricane, items.trapClaw],
                                                   champions.blitzcrank : [items.ionicSpark, items.ionicSpark] ],
                                      teamCompPositions: TeamCompPositions(champsPositions: [
                                        15 : champions.vi,
                                        6 : champions.reksai,
                                        7 : champions.warwick,
                                        13 : champions.chogath,
                                        14 : champions.blitzcrank,
                                        19 : champions.volibear,
                                        20 : champions.lucian,
                                        21 : champions.jinx
                                      ]),
                                      webLink: nil)
        
        // MARK: PROTECT THE EVE
        protectTheEve = TeamComp(name: "Protect the Eve",
                                 tier: .A,
                                 patch: TeamCompPatch.nineOneSeven.rawValue,
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
                                 patch: TeamCompPatch.nineOneSeven.rawValue,
                                 earlyUnits: [champions.kassadin, champions.reksai, champions.khazix, champions.zed],
                                 midUnits: [champions.zed, champions.pyke, champions.khazix, champions.reksai, champions.chogath, champions.evelynn],
                                 units: [champions.kassadin, champions.reksai, champions.khazix, champions.akali, champions.pyke, champions.rengar, champions.evelynn],
                                 carries: [champions.akali, champions.reksai],
                                 carryItems: [champions.akali : [items.infinityEdge, items.dragonsClaw, items.seraphsEmbrace],
                                              champions.reksai : [items.youmuusGhostblade, items.dragonsClaw, items.rapidFirecannon],
            ], webLink: "https://tft.mobalytics.gg/team-comp/Void-sins")
        
        // MARK: DEMON OF THE VOID
        demonOfTheVoid = TeamComp(name: "Demon of the Void",
                                        tier: .A,
                                        patch: TeamCompPatch.nineOneSeven.rawValue,
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
                                  patch: TeamCompPatch.nineOneSeven.rawValue,
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
                                        tier: .B,
                                        patch: TeamCompPatch.nineOneNine.rawValue,
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
        patch: TeamCompPatch.nineOneSeven.rawValue,
        earlyUnits: [champions.tristana, champions.lucian, champions.garen, champions.darius],
        midUnits: [champions.poppy, champions.kennen, champions.garen, champions.darius, champions.mordekaiser, champions.lulu],
        units: [champions.tristana, champions.ahri, champions.kennen, champions.poppy, champions.lulu, champions.veigar, champions.gnar],
        carries: [champions.kennen, champions.gnar],
        carryItems: [champions.kennen : [items.morellonomicon, items.guardianAngel],
        champions.gnar : [items.warmogsArmor, items.dragonsClaw]
        ,
        ], webLink: "https://tft.mobalytics.gg/team-comp/Yordellini")
        
        
        // MARK: ICE QUEEN LISSANDRA
        iceQueenLissandra = TeamComp(name: "Ice Queen Lissandra",
                              tier: .A,
                              patch: TeamCompPatch.nineOneSeven.rawValue,
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
                              tier: .S,
                              patch: TeamCompPatch.nineTwoZero.rawValue,
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
                              tier: .B,
                              patch: TeamCompPatch.nineOneNine.rawValue,
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
                                 patch: TeamCompPatch.nineOneNine.rawValue,
                                 earlyUnits: [champions.garen, champions.darius, champions.vayne, champions.varus],
                                 midUnits: [champions.vayne, champions.ashe, champions.lissandra, champions.kennen, champions.brand, champions.varus],
                                 units: [champions.vayne, champions.ashe, champions.brand, champions.sejuani, champions.lissandra, champions.varus, champions.kindred, champions.kennen],
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
                                 18 : champions.sejuani,
                                 21 : champions.varus
                                 ]) ,
                                 webLink: "https://tft.mobalytics.gg/team-comp/elemental_rangers")
        
        // MARK: WILD AND FREE ASSASSINS
        wildAndFreeAssassins = TeamComp(name: "Wild And Free Assassins",
                              tier: .A,
                              patch: TeamCompPatch.nineOneNine.rawValue,
                              earlyUnits: [champions.jayce, champions.nidalee, champions.warwick, champions.elise],
                              midUnits: [champions.elise, champions.jayce, champions.nidalee, champions.vi, champions.warwick, champions.akali],
                              units: [champions.akali, champions.gnar, champions.jayce, champions.nidalee, champions.pyke, champions.rengar, champions.vi, champions.warwick],
                              carries: [champions.akali],
                              carryItems: [champions.akali : [items.guardianAngel, items.infinityEdge, items.seraphsEmbrace], ],
                              teamCompPositions: TeamCompPositions(champsPositions: [
                              8 : champions.rengar,
                              15 : champions.nidalee,
                              16 : champions.gnar,
                              17 : champions.jayce,
                              18 : champions.warwick,
                              19 : champions.vi,
                              20 : champions.pyke,
                              21 : champions.akali
                              ]) ,
                              webLink: "https://tft.mobalytics.gg/team-comp/Wild_and_Free_Assassins")
        
        // MARK: HYPER SHIFTERS
               hyperShifters = TeamComp(name: "Hyper Shifters",
                                     tier: .B,
                                     patch: TeamCompPatch.nineOneNine.rawValue,
                                     earlyUnits: [champions.camille, champions.jayce, champions.nidalee, champions.warwick],
                                     midUnits: [champions.camille, champions.elise, champions.jayce, champions.nidalee, champions.warwick],
                                     units: [champions.camille, champions.elise, champions.jayce, champions.nidalee, champions.warwick],
                                     carries: [champions.jayce],
                                     carryItems: [champions.jayce : [items.runaansHurricane, items.titanicHydra, items.titanicHydra], ],
                                     teamCompPositions: TeamCompPositions(champsPositions: [
                                     15 : champions.nidalee,
                                     16 : champions.elise,
                                     17 : champions.jayce,
                                     18 : champions.warwick,
                                     19 : champions.camille,
                                     ]) ,
                                     webLink: "https://tft.mobalytics.gg/team-comp/Hyper_Shifters")
        
        // MARK: DRAGONS AND YORDLES
        dragonsAndYordles = TeamComp(name: "Dragons and Yordles",
                              tier: .B,
                              patch: TeamCompPatch.nineOneNine.rawValue,
                              earlyUnits: [champions.elise, champions.warwick, champions.nidalee, champions.jayce],
                              midUnits: [champions.nidalee, champions.gnar, champions.elise, champions.warwick, champions.kennen, champions.lulu],
                              units: [champions.gnar, champions.nidalee, champions.shyvana, champions.twistedFate, champions.kennen, champions.lulu, champions.aurelionSol],
                              carries: [champions.kennen, champions.shyvana, champions.aurelionSol],
                              carryItems: [champions.kennen : [items.guardianAngel, items.morellonomicon, items.redemption],
                                           champions.shyvana : [items.guardianAngel, items.warmogsArmor],
                                           champions.aurelionSol : [items.morellonomicon]],
                              teamCompPositions: TeamCompPositions(champsPositions: [
                              1 : champions.nidalee,
                              2 : champions.kennen,
                              3 : champions.shyvana,
                              8 : champions.lulu,
                              9 : champions.twistedFate,
                              10 : champions.gnar,
                              15 : champions.aurelionSol,
                              ]) ,
                              webLink: "https://tft.mobalytics.gg/team-comp/Dragons_and_Yordles")
        
        // MARK: THE WALL
        theWall = TeamComp(name: "The Wall",
                              tier: .A,
                              patch: TeamCompPatch.nineTwoZero.rawValue,
                              earlyUnits: [champions.darius, champions.garen, champions.lucian, champions.vayne],
                              midUnits: [champions.aurelionSol, champions.braum, champions.darius, champions.garen, champions.leona, champions.shyvana],
                              units: [champions.aurelionSol, champions.braum, champions.darius, champions.garen, champions.leona, champions.poppy, champions.sejuani, champions.shyvana],
                              carries: [champions.shyvana, champions.aurelionSol],
                              carryItems: [champions.shyvana : [items.guardianAngel, items.redemption, items.thornmail],
                                           champions.aurelionSol : [items.ionicSpark, items.morellonomicon]],
                              teamCompPositions: TeamCompPositions(champsPositions: [
                              3 : champions.garen,
                              4 : champions.shyvana,
                              5 : champions.darius,
                              11 : champions.leona,
                              12 : champions.braum,
                              15 : champions.poppy,
                              18 : champions.aurelionSol,
                              21 : champions.sejuani
                              ]) ,
                              webLink: "https://tft.mobalytics.gg/team-comp/The_Wall")
        
        // MARK: VARUS GRAND MAGUS
        varusGrandMagus = TeamComp(name: "Varus Grand Magus",
                              tier: .A,
                              patch: TeamCompPatch.nineTwoZero.rawValue,
                              earlyUnits: [champions.darius, champions.garen, champions.varus, champions.vayne],
                              midUnits: [champions.garen, champions.kindred, champions.mordekaiser, champions.poppy, champions.sejuani, champions.varus],
                              units: [champions.aurelionSol, champions.kindred, champions.leona, champions.mordekaiser, champions.morgana, champions.pantheon, champions.sejuani, champions.varus],
                              carries: [champions.varus, champions.sejuani],
                              carryItems: [champions.varus : [items.rabadonsDeathcap, items.yuumi],
                                           champions.sejuani : [items.guardianAngel, items.redemption]],
                              teamCompPositions: TeamCompPositions(champsPositions: [
                              1 : champions.leona,
                              2 : champions.sejuani,
                              8 : champions.varus,
                              9 : champions.morgana,
                              10 : champions.pantheon,
                              15 : champions.kindred,
                              16 : champions.aurelionSol,
                              21 : champions.mordekaiser
                              ]) ,
                              webLink: "https://tft.mobalytics.gg/team-comp/Varus_Grand_Magus")
        
        // MARK: VOID EXODIA
        voidExodia = TeamComp(name: "Void Exodia",
                              tier: .A,
                              patch: TeamCompPatch.nineTwoZero.rawValue,
                              earlyUnits: [champions.blitzcrank, champions.khazix, champions.reksai, champions.pyke],
                              midUnits: [champions.akali, champions.blitzcrank, champions.khazix, champions.pyke, champions.reksai, champions.jinx],
                              units: [champions.akali, champions.blitzcrank, champions.chogath, champions.jinx, champions.kaisa, champions.khazix, champions.reksai, champions.vi],
                              carries: [champions.kaisa, champions.jinx],
                              carryItems: [champions.kaisa : [items.guinsoosRageblade, items.giantSlayer, items.quicksilver],
                                           champions.jinx : [items.guinsoosRageblade, items.giantSlayer, items.quicksilver]],
                              teamCompPositions: TeamCompPositions(champsPositions: [
                              13 : champions.chogath,
                              15 : champions.vi,
                              16 : champions.kaisa,
                              17 : champions.akali,
                              18 : champions.reksai,
                              19 : champions.jinx,
                              20 : champions.khazix,
                              21 : champions.blitzcrank
                              ]) ,
                              webLink: "https://tft.mobalytics.gg/team-comp/Void_Exodia")
        
        // MARK: IRON DRAGONS
        ironDragons = TeamComp(name: "Iron Dragons",
                              tier: .S,
                              patch: TeamCompPatch.nineTwoZero.rawValue,
                              earlyUnits: [champions.elise, champions.jayce, champions.nidalee, champions.warwick],
                              midUnits: [champions.aurelionSol, champions.blitzcrank, champions.elise, champions.nidalee, champions.shyvana, champions.warwick],
                              units: [champions.ahri, champions.aurelionSol, champions.gnar, champions.leona, champions.morgana, champions.pantheon, champions.shyvana, champions.swain],
                              carries: [champions.gnar, champions.aurelionSol, champions.swain],
                              carryItems: [champions.gnar : [items.guardianAngel, items.redemption],
                                           champions.aurelionSol : [items.morellonomicon],
                                           champions.swain : [items.guardianAngel, items.morellonomicon] ],
                              teamCompPositions: TeamCompPositions(champsPositions: [
                              3 : champions.shyvana,
                              4 : champions.morgana,
                              5 : champions.swain,
                              11 : champions.leona,
                              12 : champions.pantheon,
                              18 : champions.ahri,
                              19 : champions.aurelionSol,
                              13 : champions.gnar
                              ]) ,
                              webLink: "https://tft.mobalytics.gg/team-comp/Iron_Dragons")
        
        // MARK: IMPERIAL SHIFTERS
        imperialShifters = TeamComp(name: "Imperial Shifters",
                              tier: .S,
                              patch: TeamCompPatch.nineTwoZero.rawValue,
                              earlyUnits: [champions.darius, champions.garen, champions.nidalee, champions.warwick],
                              midUnits: [champions.blitzcrank, champions.darius, champions.garen, champions.katarina, champions.nidalee, champions.warwick],
                              units: [champions.darius, champions.draven, champions.gnar, champions.katarina, champions.kindred, champions.mordekaiser, champions.shyvana, champions.swain],
                              carries: [champions.draven, champions.swain],
                              carryItems: [champions.draven : [items.guardianAngel, items.redemption],
                                           champions.swain : [items.morellonomicon] ],
                              teamCompPositions:  nil ,
                              webLink: "https://tft.mobalytics.gg/team-comp/Imperial_Shifters")
        
        // MARK: JINX KNIGHTS
        jinxKnights = TeamComp(name: "Jinx Knights",
                              tier: .A,
                              patch: TeamCompPatch.nineTwoOne.rawValue,
                              earlyUnits: [champions.fiora, champions.garen, champions.lucian, champions.mordekaiser],
                              midUnits: [champions.fiora, champions.garen, champions.kindred, champions.lucian, champions.mordekaiser, champions.tristana],
                              units: [champions.jinx, champions.kayle, champions.kindred, champions.lucian, champions.mordekaiser, champions.poppy, champions.sejuani, champions.vi],
                              carries: [champions.jinx],
                              carryItems: [champions.jinx : [items.guinsoosRageblade, items.giantSlayer, items.dragonsClaw] ],
                              teamCompPositions:  nil ,
                              webLink: "https://tft.mobalytics.gg/team-comp/Jinx_Knights")
        
        // MARK: THE OCCULT
        theOccult = TeamComp(name: "The Occult",
                              tier: .S,
                              patch: TeamCompPatch.nineTwoOne.rawValue,
                              earlyUnits: [champions.ahri, champions.darius, champions.garen, champions.nidalee],
                              midUnits: [champions.ahri, champions.aurelionSol, champions.gnar, champions.lulu, champions.nidalee, champions.shyvana],
                              units: [champions.ahri, champions.aurelionSol, champions.gnar, champions.lulu, champions.morgana, champions.shyvana, champions.swain, champions.veigar],
                              carries: [champions.aurelionSol, champions.gnar],
                              carryItems: [champions.aurelionSol : [items.morellonomicon, items.rabadonsDeathcap],
                                           champions.gnar : [items.dragonsClaw, items.warmogsArmor, items.yuumi]],
                              teamCompPositions:  nil ,
                              webLink: "https://tft.mobalytics.gg/team-comp/The_Occult")
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        // MARK: TFT TACTICS GG
        
        
        // MARK: NOBLES
        nobles = TeamComp(name: "Nobles",
                          tier: .S,
                          patch: TeamCompPatch.nineOneSixB.rawValue,
                          earlyUnits: [champions.garen, champions.vayne, champions.lucian],
                          midUnits: [champions.garen, champions.lucian, champions.vi, champions.jinx, champions.leona],
                          units: [champions.fiora, champions.garen, champions.vayne, champions.lucian, champions.vi, champions.jinx, champions.kayle, champions.leona],
                          carries: [champions.jinx, champions.kayle],
                          carryItems: [champions.jinx : [items.rapidFirecannon, items.runaansHurricane], champions.kayle : [items.spearOfShojin]], webLink: nil)
        
        // MARK: RANGER KNIGHTS
        rangerKnights = TeamComp(name: "Ranger Knights",
                                 tier: .S, patch: TeamCompPatch.nineOneFive.rawValue,
                                 earlyUnits: [champions.garen, champions.fiora, champions.vayne],
                                 midUnits: [champions.vayne, champions.varus, champions.braum, champions.ashe, champions.kindred, champions.leona],
                                 units: [champions.mordekaiser, champions.vayne, champions.varus, champions.braum, champions.ashe, champions.kindred, champions.leona, champions.kayle],
                                 carries: [champions.ashe],
                                 carryItems: [champions.ashe : [items.statikkShiv, items.statikkShiv, items.statikkShiv]], webLink: "<#String?#>")
        
        // MARK: VOID SORCERERS
        voidSorcerers = TeamComp(name: "Void Sorcerers",
                                 tier: .S,
                                 patch: TeamCompPatch.nineOneSixB.rawValue,
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
                                patch: TeamCompPatch.nineOneSixB.rawValue,
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
                              patch: TeamCompPatch.nineOneFiveB.rawValue,
                              earlyUnits: [champions.kassadin, champions.khazix, champions.reksai],
                              midUnits: [champions.warwick, champions.khazix, champions.blitzcrank, champions.reksai, champions.chogath],
                              units: [champions.khazix, champions.warwick, champions.blitzcrank, champions.rengar, champions.reksai, champions.chogath, champions.akali],
                              carries: [champions.chogath, champions.rengar],
                              carryItems: [champions.chogath : [items.morellonomicon, items.guardianAngel, items.rabadonsDeathcap],
                                           champions.rengar : [items.guardianAngel, items.statikkShiv, items.rapidFirecannon] ], webLink: nil)
        
        // MARK: FULL SORECERERS
        fullSorcerers = TeamComp(name: "Full Sorcerers",
                                 tier: .S,
                                 patch: TeamCompPatch.nineOneFiveB.rawValue,
                                 earlyUnits: [champions.kassadin, champions.khazix, champions.reksai],
                                 midUnits: [champions.kassadin, champions.lulu, champions.veigar, champions.morgana, champions.poppy],
                                 units: [champions.mordekaiser, champions.lulu, champions.ahri, champions.veigar, champions.poppy, champions.morgana, champions.aurelionSol, champions.karthus],
                                 carries: [champions.aurelionSol, champions.karthus],
                                 carryItems: [champions.aurelionSol : [items.spearOfShojin, items.spearOfShojin, items.morellonomicon],
                                              champions.karthus : [items.seraphsEmbrace, items.seraphsEmbrace, items.rabadonsDeathcap] ], webLink: nil)
        
        // MARK: PROTECT DRAVEN
        protectDraven = TeamComp(name: "Protect Draven",
                                 tier: .S,
                                 patch: TeamCompPatch.nineOneFiveB.rawValue,
                                 earlyUnits: [champions.mordekaiser, champions.darius, champions.garen],
                                 midUnits: [champions.garen, champions.darius, champions.braum, champions.leona, champions.draven],
                                 units: [champions.mordekaiser, champions.darius, champions.braum, champions.draven, champions.leona, champions.sejuani, champions.karthus, champions.kayle],
                                 carries: [champions.draven],
                                 carryItems: [champions.draven : [items.runaansHurricane, items.guardianAngel, items.bloodthirster]  ], webLink: nil)
        
        
        // MARK: MAGICAL YORDLES
        magicalYordles = TeamComp(name: "Magical Yordles",
                                  tier: .A,
                                  patch: TeamCompPatch.nineOneSixB.rawValue,
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
                                    patch: TeamCompPatch.nineOneSixB.rawValue,
                                    earlyUnits: [champions.graves, champions.tristana, champions.lucian],
                                    midUnits: [champions.graves, champions.tristana, champions.lucian, champions.pyke, champions.gangplank],
                                    units: [champions.camille, champions.tristana, champions.shen, champions.gangplank, champions.draven, champions.jinx, champions.missFortune, champions.yasuo],
                                    carries: [champions.jinx],
                                    carryItems: [champions.jinx : [items.bladeOfTheRuinedKing, items.rapidFirecannon, items.runaansHurricane]],
                                    webLink: nil)
        
        // MARK: DEMON SORCERER
        demonSorcerer = TeamComp(name: "Demon Sorcerer",
                                 tier: .A,
                                 patch: TeamCompPatch.nineOneSixB.rawValue,
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
                                      tier: .B,
                                      patch: TeamCompPatch.nineOneNine.rawValue,
                                      earlyUnits: [champions.pyke, champions.zed, champions.khazix, champions.kassadin],
                                      midUnits: [champions.akali, champions.brand, champions.evelynn, champions.kennen, champions.lissandra, champions.pyke],
                                      units: [champions.akali, champions.brand, champions.zed, champions.kennen, champions.lissandra, champions.pyke, champions.shen],
                                      carries: [champions.akali, champions.kennen, champions.pyke],
                                      carryItems: [
                                        champions.akali : [items.guardianAngel, items.infinityEdge, items.seraphsEmbrace],
                                        champions.kennen : [items.guardianAngel],
                                        champions.pyke : [items.frozenHeart] ],
                                      teamCompPositions: TeamCompPositions(champsPositions: [
                                      15 : champions.kennen,
                                      16 : champions.brand,
                                      17 : champions.lissandra,
                                      18 : champions.zed,
                                      19 : champions.akali,
                                      20 : champions.pyke,
                                      21 : champions.shen
                                      ]) ,
                                      webLink: "https://tft.mobalytics.gg/team-comp/Ninja_Elementalists")
        
        // MARK: SHAPESHIFTERS
        shapeShifters = TeamComp(name: "Shapeshifters",
                                 tier: .A,
                                 patch: TeamCompPatch.nineOneSixB.rawValue,
                                 earlyUnits: [champions.elise, champions.jayce, champions.nidalee],
                                 midUnits: [champions.ahri, champions.jayce, champions.nidalee, champions.vi, champions.gnar],
                                 units: [champions.elise, champions.jayce, champions.nidalee, champions.shyvana, champions.aurelionSol, champions.draven, champions.gnar, champions.swain],
                                 carries: [champions.shyvana],
                                 carryItems: [
                                    champions.shyvana : [items.guardianAngel, items.hextechGunblade, items.warmogsArmor] ],
                                 webLink: nil)
        
    }
    
    
    
    
}

