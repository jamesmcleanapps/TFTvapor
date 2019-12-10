//
//  AllItemDataSet2.swift
//  App
//
//  Created by James Mclean on 08/11/2019.
//

import Foundation


class ItemsSet2 {
    
    static var shared = ItemsSet2()
    
    // MARK: BASIC ITEMS
    
    lazy var allItems: [Item] = {
       return allBasicItems + allCombinedItems
    }()
    
    lazy var allBasicItems: [BasicItem] = {
        return [bfSword, chainVest, giantsBelt, needlesslyLargeRod, negatronCloak, recurveBow, tearOfTheGoddess, spatula, sparringGloves]
    }()
    
    lazy var allCombinedItems: [CombinedItem] = {
        return [bloodthirster, guardianAngel, hextechGunblade, deathBlade, spearOfShojin, giantSlayer, youmuusGhostblade, zekesHerald ] +
            [frozenHeart, locket, phantomDancer, redBuff, thornmail, wardensMail, swordBreaker] +
            [frozenMallet, morellonomicon, redemption, warmogsArmor, zephyr, titanicHydra] +
            [guinsoosRageblade, ionicSpark, rabadonsDeathcap, ludensEcho, infernosCinder] +
            [talismanOfLight, dragonsClaw, hush, runaansHurricane] +
            [rapidFirecannon, statikkShiv, bladeOfTheRuinedKing] +
            [magesCap, forceOfNature] +
            [seraphsEmbrace] +
            [ infinityEdge,
             repeatingCrossbow, jeweledGauntlet, handOfJustice, icebornGauntlet, quicksilver, trapClaw, thiefsGloves, berserkersAxe]
    }()
    
    lazy var itemsByRating: [[CombinedItem]] = {
           var itemsToReturn = [[CombinedItem]]()
           for (index, itemRating) in ItemRating.allCases.enumerated() {
               var items = [CombinedItem]()
               for item in allCombinedItems {
                   if itemRating == item.rating {
                       items.append(item)
                   }
               }
               itemsToReturn.append(items)
           }
           return itemsToReturn
       }()
    
    func allItemsContaining(item: BasicItem) -> [CombinedItem] {
        var itemsToReturn = [CombinedItem]()
        allCombinedItems.forEach { combinedItem in
            if combinedItem.recipe.contains(item) {
                itemsToReturn.append(combinedItem)
            }
        }
        return itemsToReturn
    }
    
    

    
    let bfSword = BasicItem(name: "bF sword", bonus: "+15 Attack Damage")
    let chainVest = BasicItem(name: "chain vest", bonus: "+25 Armor")
    let giantsBelt = BasicItem(name: "giant's belt", bonus: "+200 Health")
    let needlesslyLargeRod = BasicItem(name: "needlessly large rod", bonus: "+20% Spell Power")
    let negatronCloak = BasicItem(name: "negatron cloak", bonus: "+25 Magic Resist")
    let recurveBow = BasicItem(name: "recurve bow", bonus: "+15% Attack Speed")
    let tearOfTheGoddess = BasicItem(name: "tear of the goddess", bonus: "+20 mana")
    let spatula = BasicItem(name: "spatula", bonus: "It must do something...")
    let sparringGloves = BasicItem(name: "sparring gloves", bonus: "Gives +10% Critical Strike chance and +10% chance to Dodge chance.")
    
    
    var bloodthirster: CombinedItem
    var guardianAngel: CombinedItem
    var hextechGunblade: CombinedItem
    var deathBlade: CombinedItem
    var spearOfShojin: CombinedItem
    var giantSlayer: CombinedItem
    var youmuusGhostblade: CombinedItem
    var zekesHerald: CombinedItem
    var infinityEdge: CombinedItem
    
    var frozenHeart: CombinedItem
    var locket: CombinedItem
    var phantomDancer: CombinedItem
    var redBuff: CombinedItem
    var thornmail: CombinedItem
    var wardensMail: CombinedItem
    var swordBreaker: CombinedItem
    
    var frozenMallet: CombinedItem
    var morellonomicon: CombinedItem
    var redemption: CombinedItem
    var warmogsArmor: CombinedItem
    var zephyr: CombinedItem
    var titanicHydra: CombinedItem
    
    var guinsoosRageblade: CombinedItem
    var ionicSpark: CombinedItem
    var rabadonsDeathcap: CombinedItem
    var ludensEcho: CombinedItem
    var infernosCinder: CombinedItem
    
    var runaansHurricane: CombinedItem
    var dragonsClaw: CombinedItem
    var hush: CombinedItem
    var talismanOfLight: CombinedItem
    
    var rapidFirecannon: CombinedItem
    var statikkShiv: CombinedItem
    var bladeOfTheRuinedKing: CombinedItem
    
    var magesCap: CombinedItem
    var forceOfNature: CombinedItem
    
    var seraphsEmbrace: CombinedItem
    
    
    var repeatingCrossbow: CombinedItem
    var handOfJustice: CombinedItem
    var jeweledGauntlet: CombinedItem
    var icebornGauntlet: CombinedItem
    var quicksilver: CombinedItem
    var trapClaw: CombinedItem
    var thiefsGloves: CombinedItem
    var berserkersAxe: CombinedItem
    
    
    init() {
        // MARK: BLOODTHIRSTER
        bloodthirster = CombinedItem(name: "bloodthirster", bonus: "Attacks heal for 40% of damage", rating: .A, recipe: [bfSword, negatronCloak])
        
        // MARK: GUARDIAN ANGEL
        guardianAngel = CombinedItem(name: "guardian angel", bonus: "Wearer revives with 400 health after 2 seconds", rating: .C, recipe: [bfSword, chainVest])
        
        // MARK: HEXTECH GUNBLADE
        hextechGunblade = CombinedItem(name: "hextech gunblade", bonus: "Heal for 25% of all damage dealt", rating: .A, recipe: [bfSword, needlesslyLargeRod])
        
        // MARK: DEATH BLADE
        deathBlade = CombinedItem(name: "deathblade", bonus: "On a kill or assist, gain an additional 15 Attack Damage until end of combat (Stacks infinitely, starts with 1 stack).", rating: .A, recipe: [bfSword, bfSword])
        
        // MARK: SPEAR OF SHOJIN
        spearOfShojin = CombinedItem (name: "spear of shojin", bonus: "After casting, wearer gains 15% of its max mana per attack", rating: .B, recipe: [bfSword, tearOfTheGoddess])
        
        // MARK: GIANT SLAYER
        giantSlayer = CombinedItem(name: "giant slayer", bonus: "Attacks deal an additional 9% enemy max Health as True Damage.", rating: .S, recipe: [bfSword, recurveBow])
        
        // MARK: YOUMUUS GHOSTBLADE
        youmuusGhostblade = CombinedItem(name: "youmuu's ghostblade", bonus: "Wearer is also an assassin", rating: .B, recipe: [bfSword, spatula])
        
        // MARK: ZEKES HERALD
        zekesHerald = CombinedItem(name: "zeke's herald", bonus: "Allies two spaces to the left and right gain +15% attack speed", rating: .B, recipe: [bfSword, giantsBelt])
        
        
        // CHAIN VEST
        
        // MARK: FROZEN HEART
        frozenHeart = CombinedItem(name: "frozen heart", bonus: "Adjacent enemies lose 25% attack speed for 1 second", rating: .B, recipe: [chainVest, tearOfTheGoddess])
        
        // MARK: LOCKET OF THE IRON SOLARI
        locket = CombinedItem(name: "locket of the iron solari", bonus: "On start of combat, shields wearer and champions two spaces to the left and right for 300 for 7 seconds", rating: .B, recipe: [chainVest, needlesslyLargeRod])
        
        // MARK: PHANTOM DANCER
        phantomDancer = CombinedItem(name: "phantom dancer", bonus: "Wearer dodges bonus damage from critical strikes", rating: .A, recipe: [chainVest, recurveBow])
        
        // MARK: RED BUFF
        redBuff = CombinedItem(name: "red buff", bonus: "Attacks deal 20% max health over 10 seconds as burn damage", rating: .A, recipe: [chainVest, giantsBelt])
        
        // MARK: THORNMAIL
        thornmail = CombinedItem(name: "thornmail", bonus: "Reflects 100% of physical damage that was mitigated as Magic Damage", rating: .B, recipe: [chainVest, chainVest])
        
        // MARK: WARDENS MAIL
        wardensMail = CombinedItem(name: "warden's mail", bonus: "Wearer is also a Warden", rating: .B, recipe: [chainVest, spatula])
        
        // MARK: SWORD BREAKER
        swordBreaker = CombinedItem(name: "sword breaker", bonus: "Attacks have a 25% chance to disarm for 4 seconds", rating: .B, recipe: [chainVest, negatronCloak])
        
        
        // GIANTS BELT
        
        // MARK: FROZEN MALLET
        frozenMallet = CombinedItem(name: "frozen mallet", bonus: "Wearer is also Glacial", rating: .A, recipe: [giantsBelt, spatula])
        
        // MARK: MORELLONOMICON
        morellonomicon = CombinedItem(name: "morellonomicon", bonus: "Spells deal burn damage equal to 20% of the enemy's maximum health over 10 seconds. Burned units cannot heal.", rating: .A, recipe: [giantsBelt, needlesslyLargeRod])
        
        // MARK: REDEMPTION
        redemption = CombinedItem(name: "redemption", bonus: "At 25% health, heal all nearby allies for 1200 health", rating: .B, recipe: [giantsBelt, tearOfTheGoddess])
        
        // MARK: WARMOGS ARMOR
        warmogsArmor = CombinedItem(name: "warmog's armor", bonus: "Wearer regenerates 6% max health per second", rating: .A, recipe: [giantsBelt, giantsBelt])
        
        // MARK: ZEPHYR
        zephyr = CombinedItem(name: "zephyr", bonus: "On start of combat, banish an enemy for 6 seconds", rating: .A, recipe: [giantsBelt, negatronCloak])
        
        // MARK: TITANIC HYDRA
        titanicHydra = CombinedItem(name: "titanic hydra", bonus: "Attacks deal 10% of wearer's max health as splash damage", rating: .A, recipe: [giantsBelt, recurveBow])
        
        
        // NEEDLESSLY
        
        // MARK: GUINSOOS RAGEBLADE
        guinsoosRageblade = CombinedItem(name: "guinsoo's rageblade", bonus: "Attacks grant 5% attack speed (stacks infinitely)", rating: .S, recipe: [needlesslyLargeRod, recurveBow])
        
        // MARK: IONIC SPARK
        ionicSpark = CombinedItem(name: "ionic spark", bonus: "Whenever an enemy casts a spell, they take 90 true damage", rating: .A, recipe: [needlesslyLargeRod, negatronCloak])
        
        // MARK: RABADONS DEATHCAP
        rabadonsDeathcap = CombinedItem(name: "rabadon's deathcap", bonus: "+50% Ability Power", rating: .A, recipe: [needlesslyLargeRod, needlesslyLargeRod])
        
        // MARK: LUDENS ECHO
        ludensEcho = CombinedItem(name: "luden's echo", bonus: "Spells deal 180 splash damage on hit", rating: .A, recipe: [needlesslyLargeRod, tearOfTheGoddess])
        
        // MARK: INFERNOS CINDER
        infernosCinder = CombinedItem(name: "inferno's cinder", bonus: "Wearer is also Infernal", rating: .A, recipe: [needlesslyLargeRod, spatula])
        
        
        // NEGATRON
        
        // MARK: RUNAANS HURRICANE
        runaansHurricane = CombinedItem(name: "runaan's hurricane", bonus: "Summon a spirit who mirrors your attacks)", rating: .A, recipe: [negatronCloak, recurveBow])
        
        // MARK: DRAGONS CLAW
        dragonsClaw = CombinedItem(name: "dragon's claw", bonus: "Gain 75% resistance to magic damage", rating: .S, recipe: [negatronCloak, negatronCloak])
        
        // MARK: HUSH
        hush = CombinedItem(name: "hush", bonus: "Attacks have a 33% chance to prevent the enemy from gaining mana for 4 seconds", rating: .S, recipe: [negatronCloak, tearOfTheGoddess])
        
        // MARK: TALISMAN OF LIGHT
         talismanOfLight = CombinedItem(name: "talisman of light", bonus: "Wearer is also Light", rating: .A, recipe: [negatronCloak, spatula])
        
        // MARK: RAPIDFIRE CANNON
        rapidFirecannon = CombinedItem(name: "rapid firecannon", bonus: "Attack range is doubled", rating: .S, recipe: [recurveBow, recurveBow])
        
        // MARK: STATIC SHIV
        statikkShiv = CombinedItem(name: "statikk shiv", bonus: "Every 3rd attack deals 100 splash magical damage to 3 additional targets", rating: .S, recipe: [recurveBow, tearOfTheGoddess])
        
        // MARK: BLADE OF THE RUINED KING
        bladeOfTheRuinedKing = CombinedItem(name: "blade of the ruined king", bonus: "Wearer is also a Blademaster", rating: .A, recipe: [recurveBow, spatula])
        
        
        // SPATULA
        
        
        // MARK: MAGES CAP
        magesCap = CombinedItem(name: "mage's cap", bonus: "Wearer is also a Mage", rating: .A, recipe: [spatula, tearOfTheGoddess])
        
        // MARK: FORCE OF NATURE
        forceOfNature = CombinedItem(name: "force of nature", bonus: "Gain +1 team size", rating: .A, recipe: [spatula, spatula])
        
        
        // TEAR
        
        // MARK: SERAPHS EMBRACE
        seraphsEmbrace = CombinedItem(name: "seraph's embrace", bonus: "Regain 20% mana each time a spell is cast", rating: .B, recipe: [tearOfTheGoddess, tearOfTheGoddess])
        
        
        // MARK: INFINITY EDGE
        infinityEdge = CombinedItem(name: "infinity edge", bonus: "20% Critical Strike chance, +125% Critical Strike damage", rating: .A, recipe: [sparringGloves, bfSword])
        
        // MARK: REPEATING CROSSBOW
        repeatingCrossbow = CombinedItem(name: "repeating crossbow", bonus: "On death, this jumps to an allied champion and grants an additional 20% Attack Speed & Critical Strike chance", rating: .B, recipe: [sparringGloves, recurveBow])
        
        // MARK: JEWELLED GAUNTLET
        jeweledGauntlet = CombinedItem(name: "jeweled gauntlet", bonus: "Your spells can crit", rating: .A, recipe: [sparringGloves, needlesslyLargeRod])
        
        // MARK: HAND OF JUSTICE
        handOfJustice = CombinedItem(name: "hand of justice", bonus: "On round start, either gain 40% more damage or 40 life on hit.", rating: .A, recipe: [sparringGloves, tearOfTheGoddess])
        
        // MARK: ICEBORN GAUNTLET
        icebornGauntlet = CombinedItem(name: "iceborn gauntlet", bonus: "On dodge, create an expandable zone that lowers Attack Speed by 25%.", rating: .A, recipe: [sparringGloves, chainVest])
        
        // MARK: QUICKSILVER
        quicksilver = CombinedItem(name: "quicksilver", bonus: "When CC’d, cleanse the CC. 3 second cooldown.", rating: .A, recipe: [sparringGloves, negatronCloak])
        
        // MARK: TRAP CLAW
        trapClaw = CombinedItem(name: "trap claw", bonus: "On combat begin, gain a spell shield. When it breaks, stun the champion who broke the shield.", rating: .B, recipe: [sparringGloves, giantsBelt])
        
        // MARK: THIEF'S GLOVES
        thiefsGloves = CombinedItem(name: "thief's gloves", bonus: "This item takes all three item slots. On round begin, copy two random items.", rating: .A, recipe: [sparringGloves, sparringGloves])
        
        // MARK: MITTENS
        berserkersAxe = CombinedItem(name: "berserker's axe", bonus: "This champ is also a Berserker.", rating: .A, recipe: [sparringGloves, spatula])
        
        setItemRatings()
    }
    
}
