//
//  AllSet3ItemData.swift
//  App
//
//  Created by James Mclean on 19/03/2020.
//



import Foundation

class ItemsSet3 {
    
    static var shared = ItemsSet3()
    
    // MARK: BASIC ITEMS
    
    lazy var allItems: [Item] = {
       return allBasicItems + allCombinedItems
    }()
    
    lazy var allBasicItems: [BasicItem] = {
        return [bfSword, chainVest, giantsBelt, needlesslyLargeRod, negatronCloak, recurveBow, tearOfTheGoddess, spatula, sparringGloves]
    }()
    
    lazy var allCombinedItems: [CombinedItem] = {
          return [
            bloodthirster, guardianAngel, hextechGunblade, deathBlade, spearOfShojin, giantSlayer, infiltratorsTalons, zekesHerald ] +
            [frozenHeart, locket, titansResolve, redBuff, brambleVest, rebelMedal, swordBreaker] +
            [protectorsChestguard, morellonomicon, redemption, warmogsArmor, zephyr, zzRot] +
            [guinsoosRageblade, ionicSpark, rabadonsDeathcap, ludensEcho, demolitionistsCharge] +
            [celestialOrb, dragonsClaw, chaliceOfFavor , runaansHurricane] +
            [rapidFirecannon, statikkShiv, bladeOfTheRuinedKing] +
            [starGuardiansCharm, forceOfNature] +
            [seraphsEmbrace] +
            [ infinityEdge,
             lastWhisper, jeweledGauntlet, handOfJustice, shroud, quicksilver, trapClaw, thiefsGloves, darkStarsHeart
        ]
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
    let tearOfTheGoddess = BasicItem(name: "tear of the goddess", bonus: "+15 mana")
    let spatula = BasicItem(name: "spatula", bonus: "It must do something...")
    let sparringGloves = BasicItem(name: "sparring gloves", bonus: "Gives +10% Critical Strike chance and +10% chance to Dodge chance.")
    
    
    var bloodthirster: CombinedItem
    var guardianAngel: CombinedItem
    var hextechGunblade: CombinedItem
    var deathBlade: CombinedItem
    var spearOfShojin: CombinedItem
    var giantSlayer: CombinedItem
    var infiltratorsTalons: CombinedItem
    var zekesHerald: CombinedItem
    var infinityEdge: CombinedItem
    
    var frozenHeart: CombinedItem
    var locket: CombinedItem
    var titansResolve: CombinedItem
    var redBuff: CombinedItem
    var brambleVest: CombinedItem
    var rebelMedal: CombinedItem
    var swordBreaker: CombinedItem
    
    var protectorsChestguard: CombinedItem
    var morellonomicon: CombinedItem
    var redemption: CombinedItem
    var warmogsArmor: CombinedItem
    var zephyr: CombinedItem
    var zzRot: CombinedItem
    
    var guinsoosRageblade: CombinedItem
    var ionicSpark: CombinedItem
    var rabadonsDeathcap: CombinedItem
    var ludensEcho: CombinedItem
    var demolitionistsCharge: CombinedItem
    
    var runaansHurricane: CombinedItem
    var dragonsClaw: CombinedItem
    var chaliceOfFavor : CombinedItem
    var celestialOrb: CombinedItem
    
    var rapidFirecannon: CombinedItem
    var statikkShiv: CombinedItem
    var bladeOfTheRuinedKing: CombinedItem
    
    var starGuardiansCharm: CombinedItem
    var forceOfNature: CombinedItem
    
    var seraphsEmbrace: CombinedItem
    
    
    var lastWhisper: CombinedItem
    var handOfJustice: CombinedItem
    var jeweledGauntlet: CombinedItem
    var shroud: CombinedItem
    var quicksilver: CombinedItem
    var trapClaw: CombinedItem
    var thiefsGloves: CombinedItem
    var darkStarsHeart: CombinedItem
    
    
    init() {
        
        
        // MARK: BLOODTHIRSTER
        bloodthirster = CombinedItem(name: "bloodthirster", bonus: "Attacks heal for 35% of damage", rating: .A, recipe: [bfSword, negatronCloak])
        
        // MARK: GUARDIAN ANGEL
        guardianAngel = CombinedItem(name: "guardian angel", bonus: "Wearer revives with 400 health after 2 seconds", rating: .S, recipe: [bfSword, chainVest])
        
        // MARK: HEXTECH GUNBLADE
        hextechGunblade = CombinedItem(name: "hextech gunblade", bonus: "Heal for 25% of all damage dealt", rating: .A, recipe: [bfSword, needlesslyLargeRod])
        
        // MARK: DEATH BLADE
        deathBlade = CombinedItem(name: "deathblade", bonus: "On a kill or assist, gain an additional 30 Attack Damage until end of combat (Stacks infinitely, starts with 0 stack).", rating: .A, recipe: [bfSword, bfSword])
        
        // MARK: SPEAR OF SHOJIN
        spearOfShojin = CombinedItem (name: "spear of shojin", bonus: "After casting, wearer gains 15% of its max mana per attack", rating: .B, recipe: [bfSword, tearOfTheGoddess])
        
        // MARK: GIANT SLAYER
        giantSlayer = CombinedItem(name: "giant slayer", bonus: "Attacks deal an additional 12% enemy current health as physical damage.", rating: .S, recipe: [bfSword, recurveBow])
        
        // MARK: INFILTRATOR'S TALONS
        infiltratorsTalons = CombinedItem(name: "infiltrator's talons", bonus: "Wearer is also an infiltrator", rating: .B, recipe: [recurveBow, spatula])
        
        // MARK: ZEKES HERALD
        zekesHerald = CombinedItem(name: "zeke's herald", bonus: "Allies two spaces to the left and right gain +30% attack speed", rating: .B, recipe: [bfSword, giantsBelt])
        
        
        
        
        // CHAIN VEST
        
        // MARK: FROZEN HEART
        frozenHeart = CombinedItem(name: "frozen heart", bonus: "Adjacent enemies lose 50% attack speed for 1 second", rating: .B, recipe: [chainVest, tearOfTheGoddess])
        
        // MARK: LOCKET OF THE IRON SOLARI
        locket = CombinedItem(name: "locket of the iron solari", bonus: "At the start of combat, all champions within two spaces to the left and right of the wearer gain a 250/275/300 health shield for 7 seconds. Scales with Star Level", rating: .B, recipe: [chainVest, needlesslyLargeRod])
        
        // MARK: TITANS RESOLVE
        titansResolve = CombinedItem(name: "titan's resolve", bonus: "When wearer takes damage or critically hits, gain a 2% stacking damage bonus. Stacks up to 50 times at which point wearer gains 25 amor and magic resist.", rating: .A, recipe: [chainVest, recurveBow])
        
        // MARK: RED BUFF
        redBuff = CombinedItem(name: "red buff", bonus: "Attacks deal burn damage equal to 3% of the enemy's maximum health per second for 10 seconds. Reduces enemy healing by 27%.", rating: .A, recipe: [chainVest, giantsBelt])
        
        // MARK: BRAMBLE VEST
        brambleVest = CombinedItem(name: "bramble vest", bonus: "Negates bonus damage from critical hits for wearer. When hit by a basic attack, thorns hit nearby enemies up to once every 2.5 seconds and damage scales with star level (80/120/160).", rating: .B, recipe: [chainVest, chainVest])
        
        // MARK: REBEL MEDAL
        rebelMedal = CombinedItem(name: "rebel medal", bonus: "Wearer is also a Rebel", rating: .B, recipe: [chainVest, spatula])
        
        // MARK: SWORD BREAKER
        swordBreaker = CombinedItem(name: "sword breaker", bonus: "Attacks have a 25% chance to disarm for 3 seconds", rating: .B, recipe: [chainVest, negatronCloak])
        
        
        
        
        // GIANTS BELT
        
        // MARK: PROTECTOR'S CHESTGUARD
        protectorsChestguard = CombinedItem(name: "protector's chestguard", bonus: "Wearer is also a Protector", rating: .A, recipe: [giantsBelt, spatula])
        
        // MARK: MORELLONOMICON
        morellonomicon = CombinedItem(name: "morellonomicon", bonus: "Spells deal burn damage equal to 3% of the enemy's maximum health per second for 10 seconds. Reduces enemy healing by 27%.", rating: .A, recipe: [giantsBelt, needlesslyLargeRod])
        
        // MARK: REDEMPTION
        redemption = CombinedItem(name: "redemption", bonus: "At 25% health, heal all nearby allies for 1200 health", rating: .B, recipe: [giantsBelt, tearOfTheGoddess])
        
        // MARK: WARMOGS ARMOR
        warmogsArmor = CombinedItem(name: "warmog's armor", bonus: "Wearer regenerates 5% max health per second", rating: .A, recipe: [giantsBelt, giantsBelt])
        
        // MARK: ZEPHYR
        zephyr = CombinedItem(name: "zephyr", bonus: "On start of combat, banish an enemy for 6 seconds", rating: .A, recipe: [giantsBelt, negatronCloak])
        
        // MARK: ZZ'ROT PORTAL
        zzRot = CombinedItem(name: "zz'rot portal", bonus: "When the holder dies, summon a spawn with 1000/2000/4000 health (Based on Star Level)", rating: .A, recipe: [giantsBelt, recurveBow])
        
        
        
        
        // NEEDLESSLY
        
        // MARK: GUINSOOS RAGEBLADE
        guinsoosRageblade = CombinedItem(name: "guinsoo's rageblade", bonus: "Attacks grant 4% attack speed (stacks infinitely)", rating: .S, recipe: [needlesslyLargeRod, recurveBow])
        
        // MARK: IONIC SPARK
        ionicSpark = CombinedItem(name: "ionic spark", bonus: "Enemies within 2 hexes that cast a spell are zapped, taking magic damage equal to 200% their max mana and reducing their Magic Resist by 50% (does not stack).", rating: .A, recipe: [needlesslyLargeRod, negatronCloak])
        
        // MARK: RABADONS DEATHCAP
        rabadonsDeathcap = CombinedItem(name: "rabadon's deathcap", bonus: "+50% Ability Power", rating: .A, recipe: [needlesslyLargeRod, needlesslyLargeRod])
        
        // MARK: LUDENS ECHO
        ludensEcho = CombinedItem(name: "luden's echo", bonus: "Spells deal 120/160/200 splash damage on hit. Scales with Star Level", rating: .A, recipe: [needlesslyLargeRod, tearOfTheGoddess])
        
        // MARK: DEMOLITIONIST'S CHARGE
        demolitionistsCharge = CombinedItem(name: "demolitionist's charge", bonus: "Wearer is also a Demolitionist", rating: .A, recipe: [needlesslyLargeRod, spatula])
        
        
        
        
        // NEGATRON
        
        // MARK: RUNAANS HURRICANE
        runaansHurricane = CombinedItem(name: "runaan's hurricane", bonus: "Attacks 1 extra target on attack. Extra attacks deal 70% damage.", rating: .A, recipe: [negatronCloak, recurveBow])
        
        // MARK: DRAGONS CLAW
        dragonsClaw = CombinedItem(name: "dragon's claw", bonus: "Gain 50% resistance to magic damage.", rating: .S, recipe: [negatronCloak, negatronCloak])
        
        // MARK: CHALICE OF FAVOR
        chaliceOfFavor  = CombinedItem(name: "chalice of favor", bonus: "Whenever the holder casts a spell, gives all nearby allies and the caster 10 mana.", rating: .S, recipe: [negatronCloak, tearOfTheGoddess])
        
        // MARK: CELESTIAL ORB
         celestialOrb = CombinedItem(name: "celestial orb", bonus: "Wearer is also Celestial", rating: .A, recipe: [negatronCloak, spatula])
        
        // MARK: RAPIDFIRE CANNON
        rapidFirecannon = CombinedItem(name: "rapid firecannon", bonus: "Attack range is trebled", rating: .S, recipe: [recurveBow, recurveBow])
        
        
        
        
        // MARK: STATIC SHIV
        statikkShiv = CombinedItem(name: "statikk shiv", bonus: "Every 3rd attack deals 100 splash magical damage to 3 additional targets", rating: .S, recipe: [recurveBow, tearOfTheGoddess])
        
        
        
        
        
        // SPATULA
        
        
        // MARK: STAR GUARDIANS CHARM
        starGuardiansCharm = CombinedItem(name: "star guardian's charm", bonus: "Wearer is also a Star Guardian", rating: .A, recipe: [spatula, tearOfTheGoddess])
        
        // MARK: FORCE OF NATURE
        forceOfNature = CombinedItem(name: "force of nature", bonus: "Gain +1 team size", rating: .A, recipe: [spatula, spatula])
        
        // MARK: BLADE OF THE RUINED KING
        bladeOfTheRuinedKing = CombinedItem(name: "blade of the ruined king", bonus: "Wearer is also a Blademaster", rating: .A, recipe: [bfSword, spatula])
        
        
        
        
        // TEAR
        
        // MARK: SERAPHS EMBRACE
        seraphsEmbrace = CombinedItem(name: "seraph's embrace", bonus: "Regain 20% mana each time a spell is cast", rating: .B, recipe: [tearOfTheGoddess, tearOfTheGoddess])
        
        
        
        
        // gloves
        
        // MARK: INFINITY EDGE
        infinityEdge = CombinedItem(name: "infinity edge", bonus: "20% Critical Strike chance, +125% Critical Strike damage", rating: .A, recipe: [sparringGloves, bfSword])
        
        // MARK: LAST WHISPER
        lastWhisper = CombinedItem(name: "last whisper", bonus: "When the wearer inflicts a critical hit, the target's armor is reduced by 90% for 3 seconds. Does not stack", rating: .B, recipe: [sparringGloves, recurveBow])
        
        // MARK: JEWELLED GAUNTLET
        jeweledGauntlet = CombinedItem(name: "jeweled gauntlet", bonus: "Your spells can crit", rating: .A, recipe: [sparringGloves, needlesslyLargeRod])
        
        // MARK: HAND OF JUSTICE
        handOfJustice = CombinedItem(name: "hand of justice", bonus: "On round start, either gain 50% more damage or 50 life on hit.", rating: .A, recipe: [sparringGloves, tearOfTheGoddess])
        
        // MARK: SHROUD
        shroud = CombinedItem(name: "shroud of stillness", bonus: "When combat begins, shoots a beam straight ahead that delays affected enemies' first spellcast, increasing their max Mana by 40% until they cast.", rating: .A, recipe: [sparringGloves, chainVest])
        
        // MARK: QUICKSILVER
        quicksilver = CombinedItem(name: "quicksilver", bonus: "The wearer is immune to crowd control for the first 15 seconds of combat.", rating: .A, recipe: [sparringGloves, negatronCloak])
        
        // MARK: TRAP CLAW
        trapClaw = CombinedItem(name: "trap claw", bonus: "On combat begin, gain a spell shield. When it breaks, stun the champion who broke the shield.", rating: .B, recipe: [sparringGloves, giantsBelt])
        
        // MARK: THIEF'S GLOVES
        thiefsGloves = CombinedItem(name: "thief's gloves", bonus: "This item takes all three item slots. On round begin, copy two random items.", rating: .A, recipe: [sparringGloves, sparringGloves])
        
        // MARK: DARK STARS HEART
        darkStarsHeart = CombinedItem(name: "dark star's heart", bonus: "This champ is also a Dark Star.", rating: .A, recipe: [sparringGloves, spatula])
        
        setItemRatings()
    }
    
}
