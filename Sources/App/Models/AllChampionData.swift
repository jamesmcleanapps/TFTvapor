//
//  AllChampionData.swift
//  App
//
//  Created by James Mclean on 30/09/2019.
//

import Foundation


class Champions {
    
    static var shared = Champions()
    
    var varus: Champion
    var elise: Champion
    var morgana: Champion
    var evelynn: Champion
    var aatrox: Champion
    var brand: Champion
    var swain: Champion
    var shyvana: Champion
    var aurelionSol: Champion
    var yasuo: Champion
    var braum: Champion
    var lissandra: Champion
    var ashe: Champion
    var volibear: Champion
    var sejuani: Champion
    var anivia: Champion
    var blitzcrank: Champion
    var darius: Champion
    var katarina: Champion
    var draven: Champion
    var fiora: Champion
    var garen: Champion
    var vayne: Champion
    var lucian: Champion
    var leona: Champion
    var kayle: Champion
    var shen: Champion
    var zed: Champion
    var kennen: Champion
    var akali: Champion
    var graves: Champion
    var pyke: Champion
    var gangplank: Champion
    var missFortune: Champion
    var twistedFate: Champion
    var mordekaiser: Champion
    var kindred: Champion
    var karthus: Champion
    var warwick: Champion
    var nidalee: Champion
    var ahri: Champion
    var rengar: Champion
    var gnar: Champion
    var khazix: Champion
    var kassadin: Champion
    var reksai: Champion
    var chogath: Champion
    var tristana: Champion
    var lulu: Champion
    var poppy: Champion
    var veigar: Champion
    var camille: Champion
    var jayce: Champion
    var vi: Champion
    var jinx: Champion
    var pantheon: Champion
    var kaisa: Champion
    
    lazy var allChampions: [Champion] = {
        return [varus, elise, morgana, evelynn, aatrox, brand, swain,
                shyvana, aurelionSol,
                yasuo,
                braum, lissandra, ashe, volibear, sejuani, anivia,
                blitzcrank,
                darius, katarina, draven,
                fiora, garen, vayne, lucian, leona, kayle,
                shen, zed, kennen, akali,
                graves, pyke, gangplank, missFortune, twistedFate,
                mordekaiser, kindred, karthus,
                warwick, nidalee, ahri, rengar, gnar,
                khazix, kassadin, reksai, chogath,
                tristana, lulu, poppy, veigar,
                camille, jayce, vi, jinx,
                pantheon, kaisa
        ]
    }()
    
    func getChampions(of origin: ChampionOrigin) -> [Champion] {
        var champsToReturn = [Champion]()
        allChampions.forEach { champion in
            if champion.championOrigin.contains(origin) {
                champsToReturn.append(champion)
            }
        }
        return champsToReturn
    }
    
    func getChampions(of championClass: ChampionClass) -> [Champion] {
        var champsToReturn = [Champion]()
        allChampions.forEach { champion in
            if champion.championClass.contains(championClass) {
                champsToReturn.append(champion)
            }
        }
        return champsToReturn
    }
    
    func getChampions(of championTier: ChampionTier) -> [Champion] {
        var champsToReturn = [Champion]()
        allChampions.forEach { champion in
            if champion.tier == championTier {
                champsToReturn.append(champion)
            }
        }
        return champsToReturn
    }
    
    func goodChamps(for item: CombinedItem) -> [Champion] {
        Champions.shared.allChampions.filter { (champ) -> Bool in
            return champ.bestItems?.contains(item) ?? false
        }.sorted { $0.cost < $1.cost } // lowest champ first
    }
    
    
    init() {
        let items = Items.shared
        // MARK: DEMONS
        varus = Champion(name: "varus", nickname: "The Arrow of Retribution", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "piercing arrow", description: "Varus charges and fires an arrow, dealing damage to all enemies in a line."), championOrigin: [.demon], championClass: [.ranger], bestItems: [items.guinsoosRageblade, items.rabadonsDeathcap, items.seraphsEmbrace], stats: Stats(health: 500, armor: 25, magicResist: 20, attackDamage: 50, attackSpeed: 0.7, attackRange: 4))
        
        elise = Champion(name: "elise", nickname: "The Spider Queen", tier: .one, cost: 1, rating: .C, ultimate: Ultimate(name: "spider form", description: "Elise summons Spiderlings and transforms, gaining Lifesteal."), championOrigin: [.demon], championClass: [.shapeshifter], bestItems: [items.guinsoosRageblade, items.rapidFirecannon, items.titanicHydra], stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 45, attackSpeed: 0.6, attackRange: 2))
        
        morgana = Champion(name: "morgana", nickname: "The Fallen", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "soul shackles", description: "Morgana fires chains to nearby enemies, dealing damage. If those enemies are still nearby after a short delay, she stuns them and deals damage again."), championOrigin: [.demon], championClass: [.sorcerer], bestItems: [items.locket, items.guardianAngel, items.rabadonsDeathcap], stats: Stats(health: 650, armor: 30, magicResist: 20, attackDamage: 70, attackSpeed: 0.6, attackRange: 2))
        
        evelynn = Champion(name: "evelynn", nickname: "Agony's Embrace", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "last caress", description: "Evelynn deals damage to the three closest enemies and teleports away. Damage is increased against low health enemies."), championOrigin: [.demon], championClass: [.assassin], bestItems: [items.hextechGunblade, items.seraphsEmbrace, items.dragonsClaw], stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 60, attackSpeed: 0.6, attackRange: 1))
        
        aatrox = Champion(name: "aatrox", nickname: "The Darkin Blade", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "the darkin blade", description: "Aatrox cleaves the area in front of him, dealing damage to enemies inside it."), championOrigin: [.demon], championClass: [.blademaster], bestItems: [items.guardianAngel, items.dragonsClaw, items.hextechGunblade], stats: Stats(health: 700, armor: 25, magicResist: 20, attackDamage: 65, attackSpeed: 0.65, attackRange: 1))
        
        brand = Champion(name: "brand", nickname: "The Burning Vengeance", tier: .four, cost: 4, rating: .S, ultimate: Ultimate(name: "pyroclasm", description: "Brand launches a bouncing fireball, damaging enemies hit."), championOrigin: [.demon], championClass: [.elementalist], bestItems: [items.rabadonsDeathcap, items.guinsoosRageblade, items.morellonomicon], stats: Stats(health: 700, armor: 25, magicResist: 20, attackDamage: 60, attackSpeed: 0.6, attackRange: 3))
        
        swain = Champion(name: "swain", nickname: "The Noxian Grand General", tier: .five, cost: 5, rating: .S, ultimate: Ultimate(name: "demonflare", description: "Swain transforms, draining health from all nearby enemies. At the end of his transformation, Swain sends out a burst of energy dealing damage to nearby enemies."), championOrigin: [.demon, .imperial], championClass: [.shapeshifter], bestItems: [items.guardianAngel, items.dragonsClaw, items.morellonomicon], stats: Stats(health: 850, armor: 25, magicResist: 20, attackDamage: 65, attackSpeed: 0.65, attackRange: 2))
        
        
        
        
        // MARK: DRAGON
        
        shyvana = Champion(name: "shyvana", nickname: "The Hald-Dragon", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "dragons descent", description: "Shyvana dashes and transforms, gaining Attack Damage and Attack Range. When transformed, her attacks set enemies on fire."), championOrigin: [.dragon], championClass: [.shapeshifter], bestItems: [items.guinsoosRageblade, items.phantomDancer, items.warmogsArmor], stats: Stats(health: 650, armor: 30, magicResist: 20, attackDamage: 50, attackSpeed: 0.7, attackRange: 1))
        
        aurelionSol = Champion(name: "aurelion sol", nickname: "The Star Forger", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "voice of light", description: "Aurelion Sol breathes a large blast of fire in a line, dealing damage to enemies."), championOrigin: [.dragon], championClass: [.sorcerer], bestItems: [items.rabadonsDeathcap, items.rapidFirecannon, items.spearOfShojin], stats: Stats(health: 650, armor: 20, magicResist: 20, attackDamage: 40, attackSpeed: 0.6, attackRange: 3))
        
        pantheon = Champion(name: "pantheon", nickname: "The Unbreakable Spear", tier: .five, cost: 5, rating: .S, ultimate: Ultimate(name: "grand starfall", description: "Pantheon leaps in the air, crashing down towards the farthest enemy, stunning them. Enemies in Pantheon's path take a percentage of their Maximum Health as Magic Damage. They then burn a percentage of their Maximum Health as True Damage over 10 seconds. Applies Grievous Wounds. "), championOrigin: [.dragon], championClass: [.guardian], bestItems: [items.warmogsArmor, items.frozenHeart, items.morellonomicon], stats: Stats(health: 850, armor: 120, magicResist: 20, attackDamage: 75, attackSpeed: 0.75, attackRange: 1))
        
        
        
        
        // MARK: EXILE
        
        yasuo = Champion(name: "yasuo", nickname: "The Unforgiven", tier: .five, cost: 5, rating: .S, ultimate: Ultimate(name: "steel tempest", description: "Yasuo stabs forward, damaging two enemies in a line. On the third cast, Yasuo instead launches a tornado, dealing damage and knocking up enemies in a line."), championOrigin: [.exile], championClass: [.blademaster], bestItems: [items.seraphsEmbrace, items.guardianAngel, items.hextechGunblade], stats: Stats(health: 750, armor: 35, magicResist: 20, attackDamage: 75, attackSpeed: 1, attackRange: 1))
        
        
        
        
        // MARK: ROBOT
        
        blitzcrank = Champion(name: "blitzcrank", nickname: "The Great Steam Golem", tier: .two, cost: 2, rating: .B, ultimate: Ultimate(name: "rocket grab", description: "Blitzcrank pulls the furthest enemy to him and knocks them up."), championOrigin: [.robot], championClass: [.brawler], bestItems: [items.spearOfShojin, items.ionicSpark, items.rabadonsDeathcap], stats: Stats(health: 650, armor: 35, magicResist: 20, attackDamage: 50, attackSpeed: 0.5, attackRange: 1))
        
        
        
        
        
        // MARK: GLACIAL
        
        braum = Champion(name: "braum", nickname: "The Heart of the Freiljord", tier: .two, cost: 2, rating: .B, ultimate: Ultimate(name: "unbreakable", description: "Braum creates a barrier that blocks a percent of incoming damage."), championOrigin: [.glacial], championClass: [.guardian], bestItems: [items.thornmail, items.ionicSpark, items.warmogsArmor], stats: Stats(health: 650, armor: 75, magicResist: 20, attackDamage: 40, attackSpeed: 0.6, attackRange: 1))
        
        lissandra = Champion(name: "lissandra", nickname: "The Ice Witch", tier: .two, cost: 2, rating: .B, ultimate: Ultimate(name: "frozen tomb", description: "Lissandra encases the target in ice, damaging and slowing nearby enemies. Below half health, Lissandra instead encases herself, becoming untargetable."), championOrigin: [.glacial], championClass: [.elementalist], bestItems: [items.locket, items.zekesHerald, items.seraphsEmbrace], stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 40, attackSpeed: 0.6, attackRange: 2))
        
        ashe = Champion(name: "ashe", nickname: "The Frost Archer", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "enchanted crystal arrow", description: "Ashe fires an arrow that stuns and damages the first enemy hit. The stun is longer the further the enemy."), championOrigin: [.glacial], championClass: [.ranger], bestItems: [items.statikkShiv, items.statikkShiv, items.runaansHurricane], stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 65, attackSpeed: 0.7, attackRange: 4))
        
        volibear = Champion(name: "volibear", nickname: "The Thunder's Roar", tier: .three, cost: 3, rating: .B, ultimate: Ultimate(name: "thunder claws", description: "Volibear empowers his attacks to deal bonus damage that chains between enemies and applies on-hit effects"), championOrigin: [.glacial], championClass: [.brawler], bestItems: [items.rapidFirecannon, items.guinsoosRageblade, items.redBuff], stats: Stats(health: 750, armor: 30, magicResist: 20, attackDamage: 70, attackSpeed: 0.6, attackRange: 1))
        
        sejuani = Champion(name: "sejuani", nickname: "Fury of the North", tier: .four, cost: 4, rating: .S, ultimate: Ultimate(name: "glacial prison", description: "Sejuani creates a large glacial storm, stunning enemies within it after a short delay."), championOrigin: [.glacial], championClass: [.knight], bestItems: [items.redemption, items.morellonomicon, items.guardianAngel], stats: Stats(health: 800, armor: 40, magicResist: 20, attackDamage: 45, attackSpeed: 0.55, attackRange: 1))
        
        anivia = Champion(name: "anivia", nickname: "The Cryophoenix", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "glacial storm", description: "Anivia channels a large hailstorm, damaging and slowing the attack speed of enemies inside of it."), championOrigin: [.glacial], championClass: [.elementalist], bestItems: [items.rabadonsDeathcap, items.seraphsEmbrace, items.morellonomicon], stats: Stats(health: 750, armor: 20, magicResist: 20, attackDamage: 40, attackSpeed: 0.8, attackRange: 3))
        
        
        
        
        // MARK: IMPERIAL
        
        darius = Champion(name: "darius", nickname: "The Hand of Noxus", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "decimate", description: "Darius swings his axe, damaging nearby enemies and healing himself based off enemies hit."), championOrigin: [.imperial], championClass: [.knight], bestItems: [items.guardianAngel, items.morellonomicon, items.warmogsArmor], stats: Stats(health: 600, armor: 40, magicResist: 20, attackDamage: 50, attackSpeed: 0.5, attackRange: 1))
        
        katarina = Champion(name: "katarina", nickname: "The Sinister Blade", tier: .three, cost: 3, rating: .C, ultimate: Ultimate(name: "death lotus", description: "Katarina channels and fires daggers at a number of nearby enemies, dealing damage and reducing their healing."), championOrigin: [.imperial], championClass: [.assassin], bestItems: [items.rabadonsDeathcap, items.seraphsEmbrace, items.spearOfShojin], stats: Stats(health: 450, armor: 20, magicResist: 20, attackDamage: 65, attackSpeed: 0.65, attackRange: 1))
        
        draven = Champion(name: "draven", nickname: "The Glorious Executioner", tier: .four, cost: 4, rating: .S, ultimate: Ultimate(name: "spinning axe", description: "Draven throws a spinning axe on his next attack, dealing bonus damage. If Draven catches it, he automatically readies another Spinning Axe. Draven can have multiple Spinning Axes at once."), championOrigin: [.imperial], championClass: [.blademaster], bestItems: [items.rapidFirecannon, items.runaansHurricane, items.bloodthirster], stats: Stats(health: 650, armor: 25, magicResist: 20, attackDamage: 75, attackSpeed: 0.75, attackRange: 3))

        // swain is also an imperial
        
        
        
        // MARK: NOBLE
        
        fiora = Champion(name: "fiora", nickname: "The Grand Duelist", tier: .one, cost: 1, rating: .B, ultimate: Ultimate(name: "riposte", description: "Fiora becomes immune to damage and spells. After a short delay, she stuns and damages the closest enemy."), championOrigin: [.noble], championClass: [.blademaster], bestItems: [items.rapidFirecannon, items.guinsoosRageblade, items.bloodthirster], stats: Stats(health: 400, armor: 25, magicResist: 20, attackDamage: 40, attackSpeed: 1.0, attackRange: 1))
        
        garen = Champion(name: "garen", nickname: "The Might of Demacia", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "judgement", description: "Garen spins his sword, becoming immune to ability damage and dealing damage to nearby enemies."), championOrigin: [.noble], championClass: [.knight], bestItems: [items.morellonomicon, items.guardianAngel, items.warmogsArmor], stats: Stats(health: 600, armor: 40, magicResist: 20, attackDamage: 50, attackSpeed: 0.6, attackRange: 1))
        
        vayne = Champion(name: "vayne", nickname: "The Night Hunter", tier: .one, cost: 1, rating: .B, ultimate: Ultimate(name: "silver bolts", description: "Vayne deals bonus true damage every third attack based on the enemy's maximum health."), championOrigin: [.noble], championClass: [.ranger], bestItems: [items.rapidFirecannon, items.guinsoosRageblade, items.runaansHurricane], stats: Stats(health: 550, armor: 25, magicResist: 20, attackDamage: 40, attackSpeed: 0.7, attackRange: 3))
        
        lucian = Champion(name: "lucian", nickname: "The Night Hunter", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "relentless pursuit", description: "Lucian dashes away to safety and attacks an enemy twice, once with attack damage and once with ability power."), championOrigin: [.noble], championClass: [.gunslinger], bestItems: [items.ludensEcho, items.swordBreaker, items.redBuff], stats: Stats(health: 600, armor: 25, magicResist: 20, attackDamage: 65, attackSpeed: 0.65, attackRange: 3))
        
        leona = Champion(name: "leona", nickname: "The Radian Dawn", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "solar flare", description: "Leona calls down a solar ray that damages and slows enemies inside it. The enemy in the center is stunned."), championOrigin: [.noble], championClass: [.guardian], bestItems: [items.redemption, items.guardianAngel, items.morellonomicon], stats: Stats(health: 750, armor: 100, magicResist: 20, attackDamage: 45, attackSpeed: 0.55, attackRange: 1))
        
        kayle = Champion(name: "kayle", nickname: "The Righteous", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "divine judgement", description: "Kayle shields the weakest ally, making them immune to damage."), championOrigin: [.noble], championClass: [.knight], bestItems: [items.spearOfShojin, items.guinsoosRageblade, items.rapidFirecannon], stats: Stats(health: 750, armor: 40, magicResist: 20, attackDamage: 70, attackSpeed: 1, attackRange: 3))
        
        
        
        
        // MARK: NINJA
        
        shen = Champion(name: "shen", nickname: "The Eye of Twilight", tier: .two, cost: 2, rating: .B, ultimate: Ultimate(name: "spirits refuge", description: "Shen creates a zone around himself, allowing allies inside to dodge all attacks."), championOrigin: [.ninja], championClass: [.blademaster], bestItems: [items.phantomDancer, items.redemption, items.warmogsArmor], stats: Stats(health: 700, armor: 30, magicResist: 20, attackDamage: 65, attackSpeed: 0.7, attackRange: 1))
        
        zed = Champion(name: "zed", nickname: "The Master of Shadows", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "razor shuriken", description: "Zed throws a shuriken, dealing damage to enemies in a line."), championOrigin: [.ninja], championClass: [.assassin], bestItems: [items.rapidFirecannon, items.zekesHerald, items.infinityEdge], stats: Stats(health: 550, armor: 25, magicResist: 20, attackDamage: 65, attackSpeed: 0.7, attackRange: 1))
        
        kennen = Champion(name: "kennen", nickname: "The Heart of the Tempest", tier: .three, cost: 3, rating: .S, ultimate: Ultimate(name: "slicing maelstrom", description: "Kennen summons a storm around him, dealing damage and stunning enemies inside of it."), championOrigin: [.ninja, .yordle], championClass: [.elementalist], bestItems: [items.morellonomicon, items.guardianAngel, items.rabadonsDeathcap], stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 65, attackSpeed: 0.65, attackRange: 2))
        
        akali = Champion(name: "akali", nickname: "The Rogue Assasin", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "five point strike", description: "Akali throws shurikens in front of her, dealing damage. This ability can critically strike."), championOrigin: [.ninja], championClass: [.assassin], bestItems: [items.dragonsClaw, items.hextechGunblade, items.guardianAngel], stats: Stats(health: 650, armor: 20, magicResist: 20, attackDamage: 80, attackSpeed: 0.85, attackRange: 1))
        
        
        
        
        
        // MARK: PIRATE
        
        graves = Champion(name: "graves", nickname: "The Outlaw", tier: .one, cost: 1, rating: .C, ultimate: Ultimate(name: "buckshot", description: "Graves' attacks deal increased damage and splash to nearby enemies."), championOrigin: [.pirate], championClass: [.gunslinger], bestItems: [items.redBuff, items.rapidFirecannon, items.rapidFirecannon], stats: Stats(health: 450, armor: 30, magicResist: 20, attackDamage: 55, attackSpeed: 0.55, attackRange: 1))
        
        pyke = Champion(name: "pyke", nickname: "The Bloodharbor Ripper", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "phantom undertow", description: "Pyke dashes behind the furthest enemy, creating an afterimage that stuns enemies it passes through."), championOrigin: [.pirate], championClass: [.assassin], bestItems: [items.spearOfShojin, items.morellonomicon, items.frozenHeart], stats: Stats(health: 600, armor: 25, magicResist: 20, attackDamage: 60, attackSpeed: 0.6, attackRange: 1))

        gangplank = Champion(name: "gangplank", nickname: "The Saltwater Scourge", tier: .three, cost: 3, rating: .B, ultimate: Ultimate(name: "powder keg", description: "Gangplank periodically creates barrels. On cast, Gangplank detonates the barrels, damaging nearby enemies."), championOrigin: [.pirate], championClass: [.blademaster, .gunslinger], bestItems: [items.redBuff, items.guardianAngel, items.hush], stats: Stats(health: 700, armor: 20, magicResist: 20, attackDamage: 55, attackSpeed: 0.65, attackRange: 1))
        
        missFortune = Champion(name: "miss fortune", nickname: "The Bounty Hunter", tier: .five, cost: 5, rating: .B, ultimate: Ultimate(name: "bullet time", description: "Miss Fortune channels and fires several waves of bullets, damaging enemies in a cone."), championOrigin: [.pirate], championClass: [.gunslinger], bestItems: [items.morellonomicon, items.hush, items.swordBreaker], stats: Stats(health: 750, armor: 20, magicResist: 20, attackDamage: 75, attackSpeed: 0.95, attackRange: 3))
        
        twistedFate = Champion(name: "twisted fate", nickname: "The Card Master", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "pick a card", description: "Twisted Fate throws a card that randomly stuns (Gold), deals damage around his target (Red), or restores mana to himself and nearby allies (Blue)"), championOrigin: [.pirate], championClass: [.sorcerer], bestItems: [items.guinsoosRageblade, items.ludensEcho, items.seraphsEmbrace], stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 40, attackSpeed: 0.75, attackRange: 3))
        
        
        
        // MARK: PHANTOM
        
        mordekaiser = Champion(name: "mordekaiser", nickname: "The Iron Revenant", tier: .one, cost: 1, rating: .C, ultimate: Ultimate(name: "obliterate", description: "Mordekaiser slams his mace in front of him, dealing damage to two enemies in a line."), championOrigin: [.phantom], championClass: [.knight], bestItems: [items.frozenHeart, items.warmogsArmor, items.redemption], stats: Stats(health: 550, armor: 40, magicResist: 20, attackDamage: 50, attackSpeed: 0.5, attackRange: 1))
        
        kindred = Champion(name: "kindred", nickname: "The Eternal Hunters", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "lambs respite", description: "Kindred creates a zone around herself that prevents allies from dying."), championOrigin: [.phantom], championClass: [.ranger], bestItems: [items.redBuff, items.zekesHerald, items.hush], stats: Stats(health: 600, armor: 20, magicResist: 20, attackDamage: 60, attackSpeed: 0.7, attackRange: 3))
        
        karthus = Champion(name: "karthus", nickname: "The Deathsinger", tier: .five, cost: 5, rating: .S, ultimate: Ultimate(name: "requiem", description: "Karthus deals damage to a number of random enemies after a long channel."), championOrigin: [.phantom], championClass: [.sorcerer], bestItems: [items.seraphsEmbrace, items.spearOfShojin, items.rabadonsDeathcap], stats: Stats(health: 850, armor: 25, magicResist: 20, attackDamage: 65, attackSpeed: 0.65, attackRange: 3))
        
        
        
        
        // MARK: WILD
        
        warwick = Champion(name: "warwick", nickname: "The Uncaged Wrath of Zaun", tier: .one, cost: 1, rating: .B, ultimate: Ultimate(name: "infinite duress", description: "Warwick pounces onto the lowest health enemy, stunning and damaging them while healing himself."), championOrigin: [.wild], championClass: [.brawler], bestItems: [items.warmogsArmor, items.redemption, items.thornmail], stats: Stats(health: 650, armor: 30, magicResist: 20, attackDamage: 50, attackSpeed: 0.6, attackRange: 1))
        
        nidalee = Champion(name: "nidalee", nickname: "The Bestial Huntress", tier: .one, cost: 1, rating: .B, ultimate: Ultimate(name: "primal surge", description: "Nidalee heals herself and the weakest ally, then transforms, gaining Attack Damage."), championOrigin: [.wild], championClass: [.shapeshifter], bestItems: [items.rapidFirecannon, items.guinsoosRageblade, items.titanicHydra], stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 50, attackSpeed: 0.65, attackRange: 3))
        
        ahri = Champion(name: "ahri", nickname: "The Nine-Tailed Fox", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "orb of deception", description: "Ahri fires an orb in a line that returns to her, damaging enemies it passes through."), championOrigin: [.wild], championClass: [.sorcerer], bestItems: [items.morellonomicon, items.statikkShiv, items.ludensEcho], stats: Stats(health: 450, armor: 20, magicResist: 20, attackDamage: 50, attackSpeed: 0.55, attackRange: 3))
        
        rengar = Champion(name: "rengar", nickname: "The Pridestalker", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "savagery", description: "Rengar leaps to the weakest enemy and stabs them for bonus damage. After dealing damage, Rengar gains attack speed and critical strike chance."), championOrigin: [.wild], championClass: [.assassin], bestItems: [items.rapidFirecannon, items.guardianAngel, items.bloodthirster], stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 70, attackSpeed: 0.6, attackRange: 1))
        
        gnar = Champion(name: "gnar", nickname: "The Missing Link", tier: .four, cost: 4, rating: .S, ultimate: Ultimate(name: "GNAR!", description: "Gnar transforms, gaining health and attack damage, and jumps behind the furthest enemy, damaging and shoving enemies backwards."), championOrigin: [.wild, .yordle], championClass: [.shapeshifter], bestItems: [items.statikkShiv, items.warmogsArmor, items.dragonsClaw], stats: Stats(health: 700, armor: 30, magicResist: 20, attackDamage: 50, attackSpeed: 0.7, attackRange: 2))
        
        
        
        
        // MARK: VOID
        
        khazix = Champion(name: "kha'Zix", nickname: "The Void Reaver", tier: .one, cost: 1, rating: .B, ultimate: Ultimate(name: "taste their fear", description: "Kha'Zix slashes the closest enemy, dealing bonus damage to enemies that are alone."), championOrigin: [.void], championClass: [.assassin], bestItems: [items.seraphsEmbrace, items.rabadonsDeathcap, items.rapidFirecannon], stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 55, attackSpeed: 0.6, attackRange: 1))
        
        kassadin = Champion(name: "kassadin", nickname: "The Void Walker", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "nether blade", description: "Kassadin's attacks steal mana from enemies, converting it into a shield."), championOrigin: [.void], championClass: [.sorcerer], bestItems: [items.guinsoosRageblade, items.runaansHurricane, items.rapidFirecannon], stats: Stats(health: 550, armor: 35, magicResist: 20, attackDamage: 40, attackSpeed: 0.55, attackRange: 1))
        
        reksai = Champion(name: "rek'Sai", nickname: "The Void Burrower", tier: .two, cost: 2, rating: .B, ultimate: Ultimate(name: "burrow", description: "Rek'Sai burrows for a short duration, becoming untargetable and healing herself. When Rek'Sai unburrows, she deals damage and knocks up the closest enemy."), championOrigin: [.void], championClass: [.brawler], bestItems: [items.frozenHeart, items.warmogsArmor, items.spearOfShojin], stats: Stats(health: 650, armor: 20, magicResist: 20, attackDamage: 50, attackSpeed: 0.6, attackRange: 1))
        
        chogath = Champion(name: "cho'Gath", nickname: "The Terror of the Void", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "rupture", description: "Cho'Gath ruptures an area, stunning and damaging enemies inside of it."), championOrigin: [.void], championClass: [.brawler], bestItems: [items.guardianAngel, items.frozenHeart, items.morellonomicon], stats: Stats(health: 1000, armor: 20, magicResist: 20, attackDamage: 70, attackSpeed: 0.6, attackRange: 1))
        
        kaisa = Champion(name: "kai'sa", nickname: "Daughter of the Void", tier: .five, cost: 5, rating: .S, ultimate: Ultimate(name: "killer instinct", description: "Kai’Sa dashes to the furthest enemy unit, shielding herself and gaining attack speed for 3 seconds."), championOrigin: [.void], championClass: [.ranger, .assassin], bestItems: [items.guinsoosRageblade, items.statikkShiv, items.frozenHeart], stats: Stats(health: 700, armor: 20, magicResist: 20, attackDamage: 55, attackSpeed: 1.25, attackRange: 2))
        
        
        
        
        
        // MARK: YORDLE
        
        tristana = Champion(name: "tristana", nickname: "The Yordle Gunner", tier: .one, cost: 1, rating: .B, ultimate: Ultimate(name: "explosive charge", description: "Tristana places a bomb on her current target that detonates after 4 attacks, damaging nearby enemies."), championOrigin: [.yordle], championClass: [.gunslinger], bestItems: [items.cursedBlade, items.swordBreaker, items.redBuff], stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 50, attackSpeed: 0.65, attackRange: 4))
        
        lulu = Champion(name: "lulu", nickname: "The Fae Sorceress", tier: .two, cost: 2, rating: .B, ultimate: Ultimate(name: "wild growth", description: "Lulu grants an ally bonus health, knocking up enemies near them."), championOrigin: [.yordle], championClass: [.sorcerer], bestItems: [items.spearOfShojin, items.spearOfShojin, items.guinsoosRageblade], stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 50, attackSpeed: 0.6, attackRange: 2))
        
        poppy = Champion(name: "poppy", nickname: "Keeper of the Hammer", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "keepers verdict", description: "Poppy swings her hammer, damaging and knocking up the closest enemy."), championOrigin: [.yordle], championClass: [.knight], bestItems: [items.guardianAngel, items.seraphsEmbrace, items.warmogsArmor], stats: Stats(health: 750, armor: 40, magicResist: 20, attackDamage: 50, attackSpeed: 0.5, attackRange: 1))
        
        veigar = Champion(name: "veigar", nickname: "The Tiny Master of Evil", tier: .three, cost: 3, rating: .B, ultimate: Ultimate(name: "primordial burst", description: "Veigar blasts an enemy with magical energy, dealing damage. This spell instantly kills them if they are a lower star level than Veigar."), championOrigin: [.yordle], championClass: [.sorcerer], bestItems: [items.guinsoosRageblade, items.seraphsEmbrace, items.cursedBlade], stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 45, attackSpeed: 0.55, attackRange: 3))
        
        
        // kennen
        // gnar
        
        
        // MARK:- HEXTECH
        
        camille = Champion(name: "camille", nickname: "The Steel Shadow", tier: .one, cost: 1, rating: .B, ultimate: Ultimate(name: "the hextech ultimatum", description: "Camille singles out an enemy, dealing damage and rooting them. Her team will prioritize that enemy."), championOrigin: [.hextech], championClass: [.blademaster], bestItems: [items.guardianAngel, items.warmogsArmor, items.dragonsClaw], stats: Stats(health: 550, armor: 25, magicResist: 20, attackDamage: 55, attackSpeed: 0.6, attackRange: 1))
        
        jayce = Champion(name: "jayce", nickname: "The Defender of Tomorrow", tier: .two, cost: 2, rating: .B, ultimate: Ultimate(name: "mercury cannon", description: "Jayce knocks away an enemy dealing damage and stunning, then transforms into a ranged attacker gaining attack speed."), championOrigin: [.hextech], championClass: [.shapeshifter], bestItems: [items.phantomDancer, items.titanicHydra, items.bloodthirster], stats: Stats(health: 600, armor: 35, magicResist: 20, attackDamage: 55, attackSpeed: 0.7, attackRange: 1))
        
        jinx = Champion(name: "jinx", nickname: "The Loose Cannon", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "get excited", description: "Jinx gains attack speed after her first takedown. After her second takedown her attacks deal bonus magic and splash damage."), championOrigin: [.hextech], championClass: [.gunslinger], bestItems: [items.infinityEdge, items.rapidFirecannon, items.hextechGunblade], stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 75, attackSpeed: 0.7, attackRange: 3))
        
        vi = Champion(name: "vi", nickname: "The Piltover Enforcer", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "assault and battery", description: "Vi charges towards the furthest enemy dealing damage to enemies in her way as well as stunning and dealing damage to the target."), championOrigin: [.hextech], championClass: [.brawler], bestItems: [items.morellonomicon, items.guardianAngel, items.frozenHeart], stats: Stats(health: 700, armor: 25, magicResist: 20, attackDamage: 55, attackSpeed: 0.65, attackRange: 1))
        
        setChampionRatings()
        
    }
    
}

