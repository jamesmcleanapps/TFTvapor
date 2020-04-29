//
//  AllSet3ChampionData.swift
//  App
//
//  Created by James Mclean on 19/03/2020.
//



import Foundation

class ChampionsSet3 {
    
    static var shared = ChampionsSet3()
    
    // celestial
    var ashe: Champion
    var kassadin: Champion
    var lulu: Champion
    var rakan: Champion
    var xayah: Champion
    var xinZhao: Champion
    
    // chrono
    var blitzcrank: Champion
    var caitlyn: Champion
    var ezreal: Champion
    var shen: Champion
    var thresh: Champion
    var twistedFate: Champion
    var wukong: Champion
    
    // cybernetic
    var ekko: Champion
    var fiora: Champion
    var irelia: Champion
    var leona: Champion
    var lucian: Champion
    var vi: Champion
    
    // dark star
    var jarvan: Champion
    var jhin: Champion
    var karma: Champion
    var lux: Champion
    var mordekaiser: Champion
    var shaco: Champion
    var xerath: Champion
    
    // mech pilot
    var annie: Champion
    var fizz: Champion
    var rumble: Champion
    
    // rebel
    var aurelionSol: Champion
    var jinx: Champion
    var malphite: Champion
    var masterYi: Champion
    var sona: Champion
    var yasuo: Champion
    var ziggs: Champion
    
    // space pirate
    var darius: Champion
    var gangplank: Champion
    var graves: Champion
    var jayce: Champion
    
    // star guardian
    var ahri: Champion
    var neeko: Champion
    var poppy: Champion
    var soraka: Champion
    var syndra: Champion
    var zoe: Champion
    
    // valkyrie
    var kaisa: Champion
    var kayle: Champion
    var missFortune: Champion
    
    // void
    var chogath: Champion
    var khazix: Champion
    var velkoz: Champion
    
    
    lazy var allChampions: [Champion] = {
        return [
            ashe,
            kassadin,
            lulu,
            rakan,
            xayah,
            xinZhao,
            blitzcrank,
            caitlyn,
            ezreal,
            shen,
            thresh,
            twistedFate,
            wukong,
            ekko,
            fiora,
            irelia,
            leona,
            lucian,
            vi,
            jarvan,
            jhin,
            karma,
            lux,
            mordekaiser,
            shaco,
            xerath,
            annie,
            fizz,
            rumble,
            aurelionSol,
            jinx,
            malphite,
            masterYi,
            sona,
            yasuo,
            ziggs,
            darius,
            gangplank,
            graves,
            jayce,
            ahri,
            neeko,
            poppy,
            soraka,
            syndra,
            zoe,
            kaisa,
            kayle,
            missFortune,
            chogath,
            khazix,
            velkoz
        ]
    }()
    
    
    func goodChamps(for item: CombinedItem) -> [Champion] {
        ChampionsSet3.shared.allChampions.filter { (champ) -> Bool in
            return champ.bestItems?.contains(item) ?? false
        }.sorted { $0.cost < $1.cost } // lowest champ first
    }
    
    func getChampions(of origin: ChampOriginSet3) -> [Champion] {
        var champsToReturn = [Champion]()
        allChampions.forEach { champion in
            if champion.championOriginSet3.contains(origin) {
                champsToReturn.append(champion)
            }
        }
        return champsToReturn
    }
    
    func getChampions(of championClass: ChampClassSet3) -> [Champion] {
        var champsToReturn = [Champion]()
        allChampions.forEach { champion in
            if champion.championClassSet3.contains(championClass) {
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
    
    func getChampion(withName name: String) -> Champion? {
        var champToReturn: Champion?
        allChampions.forEach { champion in
            if champion.name == name {
                champToReturn = champion
            }
        }
        return champToReturn
    }
    
    
    
    init() {
    let items = ItemsSet3.shared
    
    
    // MARK: ------ CELESTIAL -----
    
    
    
    // MARK: ASHE
        ashe = Champion(name: "ashe", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "enchanted crystal arrow", description: "Ashe fires and arrow toward the farthest enemy, colliding with the first enemy hit, dealing damage and stunning them. The stun lasts longer the farther the arrow travels."), championOriginSet3: [.celestial], championClassSet3: [.sniper],
                        bestItems: [items.guinsoosRageblade, items.spearOfShojin, items.spearOfShojin],
                        stats: Stats(health: 600, armor: 20, magicResist: 20, attackDamage: 60, attackSpeed: 0.8, attackRange: 5))
        
        
        // MARK: KASSADIN
        kassadin = Champion(name: "kassadin", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "force pulse", description: "Kassadin releases a wave of energy in front of him, dealing magic damage and disarming all targets hit."), championOriginSet3: [.celestial], championClassSet3: [.manaReaver],
                            bestItems: [items.brambleVest, items.guardianAngel, items.ionicSpark],
                            stats: Stats(health: 800, armor: 30, magicResist: 20, attackDamage: 50, attackSpeed: 0.65, attackRange: 1))
        
        
        // MARK: LULU
        lulu = Champion(name: "lulu", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "mass polymorph", description: "Lulu polymorphs the nearest enemies for 4 seconds, rendering them unable to attack or cast, and causing them to hop around aimlessly. Polymorphed enemies take additional damage."), championOriginSet3: [.celestial], championClassSet3: [.mystic],
                        bestItems: [items.guinsoosRageblade, items.spearOfShojin, items.spearOfShojin],
                        stats: Stats(health: 800, armor: 25, magicResist: 20, attackDamage: 45, attackSpeed: 0.85, attackRange: 3))
        
        
        // MARK: RAKAN
        rakan = Champion(name: "rakan", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "grand entrance", description: "Rakan dashes to his attack target and leaps into the air, knocking up and dealing magic damage to all nearby enemies."), championOriginSet3: [.celestial], championClassSet3: [.protector],
                         bestItems: [items.guardianAngel, items.spearOfShojin, items.warmogsArmor],
                         stats: Stats(health: 600, armor: 35, magicResist: 20, attackDamage: 45, attackSpeed: 0.7, attackRange: 2))
        
        
        // MARK: XAYAH
        xayah = Champion(name: "xayah", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "deadly plumage", description: "Xayah creates a storm of blades, gaining Attack Speed."), championOriginSet3: [.celestial], championClassSet3: [.blademaster],
                         bestItems: [items.statikkShiv, items.statikkShiv, items.statikkShiv],
                         stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 55, attackSpeed: 0.8, attackRange: 3))
        
    
        // MARK: XIN ZHAO
        xinZhao = Champion(name: "xin zhao", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "three talon strike", description: "Xin Zhao quickly strikes his target three times, dealing Basic Attack damage and applying on-hit effects. The third strike deals bonus magic damage and knocks his target up for 1.5 seconds."), championOriginSet3: [.celestial], championClassSet3: [.protector],
                           bestItems: [items.brambleVest, items.dragonsClaw, items.warmogsArmor],
                           stats: Stats(health: 650, armor: 35, magicResist: 20, attackDamage: 60, attackSpeed: 0.7, attackRange: 1))
        
        
        
        // MARK: ------ CELESTIAL -----
        
        
        // MARK: BLITZCRANK
        blitzcrank = Champion(name: "blitzcrank", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "rocket grab", description: "Blitzcrank pulls the furthest enemy to him, dealing magic damage and stunning them for 2.5 seconds. The next attack after pulling knocks up for 1 second. Allies within range will prioritize attacking Blitzcrank's target."), championOriginSet3: [.chrono], championClassSet3: [.brawler],
                              bestItems: [items.dragonsClaw, items.warmogsArmor, items.warmogsArmor],
                              stats: Stats(health: 650, armor: 35, magicResist: 20, attackDamage: 55, attackSpeed: 0.5, attackRange: 1))
        
        // MARK: CAITLYN
        caitlyn = Champion(name: "caitlyn", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "ace in the hole", description: "Caitlyn takes aim at the furthest enemy, firing a deadly bullet towards them that deals magic damage to the first enemy it hits."), championOriginSet3: [.chrono], championClassSet3: [.sniper],
                           bestItems: [items.statikkShiv, items.statikkShiv, items.statikkShiv],
                           stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 45, attackSpeed: 0.75, attackRange: 5))
        
        
        // MARK: EZREAL
        ezreal = Champion(name: "ezreal", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "emp", description: "Ezreal fires an electromagnetic pulse at a random enemy that explodes on impact, dealing magic damage to all nearby enemies and increases the cost of their next spell cast by 40%."), championOriginSet3: [.chrono], championClassSet3: [.blaster],
                          bestItems: [items.giantSlayer, items.redBuff, items.spearOfShojin],
                          stats: Stats(health: 600, armor: 20, magicResist: 20, attackDamage: 60, attackSpeed: 0.7, attackRange: 3))
        
        // MARK: SHEN
        shen = Champion(name: "shen", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "future's refuge", description: "Shen creates a zone around himself for a few seconds, granting all narby allies 100% chance to dodge incoming basic attacks. While active, Shen gains Magic Resist."), championOriginSet3: [.chrono], championClassSet3: [.blademaster],
                        bestItems: [items.brambleVest, items.dragonsClaw, items.guardianAngel],
                        stats: Stats(health: 800, armor: 35, magicResist: 20, attackDamage: 60, attackSpeed: 0.7, attackRange: 1))
        
        // MARK: THRESH
        thresh = Champion(name: "thresh", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "temporal passage", description: "Thresh tosses his lantern towards random unit(s) on your bench, pulling them into the current combat and granting them and himself bonus mana. Traits are unaffected."), championOriginSet3: [.chrono], championClassSet3: [.manaReaver],
                          bestItems: [items.guardianAngel, items.seraphsEmbrace, items.spearOfShojin],
                          stats: Stats(health: 950, armor: 35, magicResist: 20, attackDamage: 50, attackSpeed: 0.95, attackRange: 2))
        
        
        // MARK: TWISTED FATE
        twistedFate = Champion(name: "twisted fate", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "wild cards", description: "Twisted Fate throws three cards in a cone that deal magic damage to each enemy they pass through."), championOriginSet3: [.chrono], championClassSet3: [.sorcerer],
                               bestItems: [items.statikkShiv, items.statikkShiv, items.statikkShiv],
                               stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 45, attackSpeed: 0.7, attackRange: 3))
        
        
        // MARK: WUKONG
        wukong = Champion(name: "wukong", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "cyclone", description: "Wukong spins rapidly around, dealing magic damage to nearby units over 3 seconds. The first time Wukong hits each enemy, he knocks them into the air and stuns them."), championOriginSet3: [.chrono], championClassSet3: [.vanguard],
                          bestItems: [items.brambleVest, items.guardianAngel, items.ionicSpark],
                          stats: Stats(health: 950, armor: 40, magicResist: 20, attackDamage: 50, attackSpeed: 0.75, attackRange: 1))
        
        
        // MARK: ------ CYBERNETIC -----
        
        
        // MARK: EKKO
        ekko = Champion(name: "ekko", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "chronobreak", description: "Ekko shatters the timeline, freezing all units in time before attacking each enemy with bonus magic damage and applying on-hit effects. Ekko cannot die while he has stopped time."), championOriginSet3: [.cybernetic], championClassSet3: [.infiltrator],
                        bestItems: [items.guardianAngel, items.morellonomicon, items.spearOfShojin],
                        stats: Stats(health: 850, armor: 30, magicResist: 20, attackDamage: 60, attackSpeed: 0.9, attackRange: 1))
        
        
        // MARK: FIORA
        fiora = Champion(name: "fiora", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "riposte", description: "Fiora enters a defensive stance for 1.5 seconds, becoming immune to damage and enemy spell effects. As she exits this stance, she ripostes, dealing magic damage to a nearby enemy and stunning them for 1.5 seconds."), championOriginSet3: [.cybernetic], championClassSet3: [.blademaster],
                         bestItems: [items.guardianAngel, items.guinsoosRageblade, items.handOfJustice],
                         stats: Stats(health: 450, armor: 30, magicResist: 20, attackDamage: 45, attackSpeed: 1, attackRange: 1))
        
        // MARK: IRELIA
        irelia = Champion(name: "irelia", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "bladesurge", description: "Irelia dashes past her target, attacking them for a percentage of her Attack Damage as she passes through. If this kills the target, she casts again immediately at the enemy with the highest mana."), championOriginSet3: [.cybernetic], championClassSet3: [.manaReaver, .blademaster],
                          bestItems: [items.bloodthirster, items.guardianAngel, items.infinityEdge],
                          stats: Stats(health: 800, armor: 35, magicResist: 20, attackDamage: 70, attackSpeed: 0.85, attackRange: 1))
        
        
        // MARK: LEONA
        leona = Champion(name: "leona", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "cyber barrier", description: "Leona creates a barrier, reducing all incoming damage for 4 seconds."), championOriginSet3: [.cybernetic], championClassSet3: [.vanguard],
                         bestItems: [items.brambleVest, items.brambleVest, items.warmogsArmor],
                         stats: Stats(health: 600, armor: 40, magicResist: 20, attackDamage: 50, attackSpeed: 0.55, attackRange: 1))
        
        
        // MARK: LUCIAN
        lucian = Champion(name: "lucian", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "relentless pursuit", description: "Lucian dashes away from his current target, then Basic Attacks them and fires a second shot which deals magic damage."), championOriginSet3: [.cybernetic], championClassSet3: [.blaster],
                          bestItems: [items.giantSlayer, items.giantSlayer, items.redBuff],
                          stats: Stats(health: 500, armor: 25, magicResist: 20, attackDamage: 50, attackSpeed: 0.7, attackRange: 4))
        
        
        // MARK: VI
        vi = Champion(name: "vi", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "assault and battery", description: "Vi charges at the furthest enemy, knocking aside and dealing magic damage to all enemies along the way. When she reaches her target, she deals magic damage and knocks them up."), championOriginSet3: [.cybernetic], championClassSet3: [.brawler],
                      bestItems: [items.brambleVest, items.guardianAngel, items.ionicSpark],
                      stats: Stats(health: 700, armor: 35, magicResist: 20, attackDamage: 60, attackSpeed: 0.65, attackRange: 1))
        
        
        // MARK: ------ DARK STAR -----
        
        // MARK: JARVAN IV
        jarvan = Champion(name: "jarvan IV", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "ageless standard", description: "Jarvan calls down his standard to a nearby location, granting nearby allies Attack Speed for 6 seconds."), championOriginSet3: [.darkStar], championClassSet3: [.protector],
                          bestItems: [items.brambleVest, items.guardianAngel, items.warmogsArmor],
                          stats: Stats(health: 650, armor: 40, magicResist: 20, attackDamage: 50, attackSpeed: 0.6, attackRange: 1))
        
        
        // MARK: JHIN
        jhin = Champion(name: "jhin", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "whisper", description: "Jhin converts each 1% of bonus attack speed he has into 0.8 attack damage. Every fourth shot, Jhin deals a bonus percent of attack damage."), championOriginSet3: [.darkStar], championClassSet3: [.sniper],
                        bestItems: [items.infinityEdge, items.guardianAngel, items.lastWhisper],
                        stats: Stats(health: 600, armor: 20, magicResist: 20, attackDamage: 90, attackSpeed: 0.9, attackRange: 5))
        
        
        // MARK: KARMA
        karma = Champion(name: "karma", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "inspire", description: "At the start of combat, Karma tethers to her closest ally. Karma shields the tethered ally, or random if the ally is dead for 4 seconds. While the shield holds, the ally receives bonus attack speed."), championOriginSet3: [.darkStar], championClassSet3: [.mystic],
                         bestItems: [items.guinsoosRageblade, items.spearOfShojin, items.spearOfShojin],
                         stats: Stats(health: 600, armor: 20, magicResist: 20, attackDamage: 50, attackSpeed: 0.65, attackRange: 3))
        
        
        // MARK: LUX
        lux = Champion(name: "lux", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "lurid binding", description: "Lux fires a sphere of darkness towards the farthest enemy. Enemies caught along its path take magic damage and are stunned."), championOriginSet3: [.darkStar], championClassSet3: [.sorcerer],
                       bestItems: [items.jeweledGauntlet, items.rabadonsDeathcap, items.seraphsEmbrace],
                       stats: Stats(health: 600, armor: 20, magicResist: 20, attackDamage: 40, attackSpeed: 0.7, attackRange: 4))
        
        
        // MARK: MORDEKAISER
        mordekaiser = Champion(name: "mordekaiser", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "indestructible", description: "Mordekaiser gains a shield that absorbs damage. While the shield persists, Mordekaiser deals magic damage per second to all nearby enemies."), championOriginSet3: [.darkStar], championClassSet3: [.vanguard],
                               bestItems: [items.brambleVest, items.guardianAngel, items.ionicSpark],
                               stats: Stats(health: 650, armor: 40, magicResist: 20, attackDamage: 55, attackSpeed: 0.6, attackRange: 1))
        
        
        // MARK: SHACO
        shaco = Champion(name: "shaco", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "deceive", description: "Shaco teleports and backstabs his target, critically striking for a percentage of his Basic Attack damage."), championOriginSet3: [.darkStar], championClassSet3: [.infiltrator],
                         bestItems: [items.bloodthirster, items.guardianAngel, items.infinityEdge],
                         stats: Stats(health: 650, armor: 25, magicResist: 20, attackDamage: 70, attackSpeed: 0.8, attackRange: 1))
        
        // MARK: XERATH
        xerath = Champion(name: "xerath", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "abyssal bombardment", description: "Xerath transforms, summoning meteors to strike random foes in place of his normal attacks for 6/8/45 seconds. Meteors deal 300/400/2500 magic damage upon impact and if they kill their target, all adjacent enemies take 150/200/1250 magic damage and are stunned for 1.5 seconds."), championOriginSet3: [.darkStar], championClassSet3: [.sorcerer],
                         bestItems: [items.jeweledGauntlet, items.morellonomicon, items.seraphsEmbrace],
                         stats: Stats(health: 750, armor: 20, magicResist: 20, attackDamage: 60, attackSpeed: 0.9, attackRange: 5))
        
        
        
        // MARK: ------ MECH PILOT -----
        
        // MARK: ANNIE
        annie = Champion(name: "annie", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "galaxy shield blast", description: "Annie blasts a cone of fire dealing magic damage to enemies in front of her, then shields herself for 4 seconds."), championOriginSet3: [.mechPilot], championClassSet3: [.sorcerer],
                         bestItems: [items.guardianAngel, items.ionicSpark, items.warmogsArmor],
                         stats: Stats(health: 700, armor: 40, magicResist: 20, attackDamage: 40, attackSpeed: 0.65, attackRange: 2))
        
        
        // MARK: FIZZ
        fizz = Champion(name: "fizz", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "chum the waters", description: "Fizz throws a lure that attracts a shark, causing it to emerge after a brief delay. It deals magic damage to enemies caught, knocking them back and stunning them for 1.5 seconds."), championOriginSet3: [.mechPilot], championClassSet3: [.infiltrator],
                        bestItems: [items.guardianAngel, items.ionicSpark, items.warmogsArmor],
                        stats: Stats(health: 600, armor: 25, magicResist: 20, attackDamage: 60, attackSpeed: 0.8, attackRange: 1))
        
        
        // MARK: RUMBLE
        rumble = Champion(name: "rumble", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "flamespitter", description: "Rumble torches his enemies, dealing magic damage in a cone over 3 seconds, and reducing healing on them by 50% for 5 seconds."), championOriginSet3: [.mechPilot], championClassSet3: [.demolitionist],
                          bestItems: [items.guardianAngel, items.ionicSpark, items.warmogsArmor],
                          stats: Stats(health: 800, armor: 35, magicResist: 20, attackDamage: 50, attackSpeed: 0.7, attackRange: 1))
        
        
        // MARK: ------ REBEL -----
        
        // MARK: AURELION SOL
        aurelionSol = Champion(name: "aurelion sol", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "mobilize the fleet", description: "Aurelion Sol launches fighters, which fly out to random enemies, deal magic damage, and then return. Aurelion Sol launches all ready fighters plus 3 additional when he casts. Fighters prefer to target nearby enemies."), championOriginSet3: [.rebel], championClassSet3: [.starship],
                               bestItems: [items.jeweledGauntlet, items.morellonomicon, items.seraphsEmbrace],
                               stats: Stats(health: 1100, armor: 35, magicResist: 20, attackDamage: 10, attackSpeed: 0.8, attackRange: 1))
        
        
        // MARK: JINX
        jinx = Champion(name: "jinx", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "get excited", description: "Jinx gets excited as she helps take down enemies. After her first takedown, Jinx gains bonus attack speed. After her second takedown, Jinx swaps to her rocket launcher, causing her Basic Attacks to deal bonus magic damage to all enemies in a small area around her target."), championOriginSet3: [.rebel], championClassSet3: [.blaster],
                        bestItems: [items.giantSlayer, items.guardianAngel, items.redBuff],
                        stats: Stats(health: 600, armor: 20, magicResist: 20, attackDamage: 70, attackSpeed: 0.75, attackRange: 3))
        
        
        // MARK: MALPHITE
        malphite = Champion(name: "malphite", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "energy shield", description: "Malphite starts combat with a shield equal to a percent of his maximum health."), championOriginSet3: [.rebel], championClassSet3: [.brawler],
                            bestItems: [items.warmogsArmor, items.warmogsArmor, items.warmogsArmor],
                            stats: Stats(health: 700, armor: 30, magicResist: 20, attackDamage: 70, attackSpeed: 0.5, attackRange: 1))
        
        
        // MARK: MASTER YI
        masterYi = Champion(name: "master yi", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "chosen one", description: "For 5 seconds, Master Yi gains massively increased movement speed, heals for a percentage of his maximum health each second, and deals bonus true damage with his Basic Attacks."), championOriginSet3: [.rebel], championClassSet3: [.blademaster],
                            bestItems: [items.guinsoosRageblade, items.handOfJustice, items.rapidFirecannon],
                            stats: Stats(health: 750, armor: 30, magicResist: 20, attackDamage: 55, attackSpeed: 0.8, attackRange: 1))
        
        
        // MARK: SONA
        sona = Champion(name: "sona", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "aria of perseverance", description: "Sona heals injured allies and cleanses them of all negative effects."), championOriginSet3: [.rebel], championClassSet3: [.mystic],
                        bestItems: [items.guardianAngel, items.seraphsEmbrace, items.zephyr],
                        stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 40, attackSpeed: 0.65, attackRange: 3))
        
        
        // MARK: YASUO
        yasuo = Champion(name: "yasuo", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "last breath", description: "Yasuo blinks to the enemy with the most items and knocks them up, holding them airborne for 1 second and hitting them multiple times, dealing Basic Attack damage and applying on-hit effects."), championOriginSet3: [.rebel], championClassSet3: [.blademaster],
                         bestItems: [items.guardianAngel, items.handOfJustice, items.infinityEdge],
                         stats: Stats(health: 600, armor: 30, magicResist: 20, attackDamage: 50, attackSpeed: 0.75, attackRange: 1))
        
        
        // MARK: ZIGGS
        ziggs = Champion(name: "ziggs", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "bomb", description: "Ziggs throws a bomb at an enemy, dealing magic damage."), championOriginSet3: [.rebel], championClassSet3: [.demolitionist],
                         bestItems: [items.jeweledGauntlet, items.seraphsEmbrace, items.rabadonsDeathcap],
                         stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 40, attackSpeed: 0.7, attackRange: 3))
        
        
        // MARK: ------ SPACE PIRATE -----
        
        // MARK: DARIUS
        darius = Champion(name: "darius", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "dreadnova guillotine", description: "Darius dunks an enemy, dealing magic damage. If this kills the target, Darius immediately casts again. Targets below 50% health take double damage."), championOriginSet3: [.spacePirate], championClassSet3: [.manaReaver],
                          bestItems: [items.brambleVest, items.guardianAngel, items.ionicSpark],
                          stats: Stats(health: 750, armor: 35, magicResist: 20, attackDamage: 60, attackSpeed: 0.65, attackRange: 1))
        
        // MARK: GANGPLANK
        gangplank = Champion(name: "gangplank", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "orbital strike", description: "Gangplank calls down a large orbital strike around his target, dealing magic damage to all enemies in that area for 2 seconds."), championOriginSet3: [.spacePirate], championClassSet3: [.mercenary, .demolitionist],
                             bestItems: [items.guardianAngel, items.jeweledGauntlet, items.rabadonsDeathcap],
                             stats: Stats(health: 1000, armor: 30, magicResist: 20, attackDamage: 60, attackSpeed: 1, attackRange: 1))
        
        // MARK: GRAVES
        graves = Champion(name: "graves", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "smoke grenade", description: "Graves launches a smoke grenade toward the highest attack speed enemy, which explodes on impact dealing magic damage to enemies in the area and causing their attacks to miss for 4 seconds."), championOriginSet3: [.spacePirate], championClassSet3: [.blaster],
                          bestItems: [items.giantSlayer, items.rapidFirecannon, items.redBuff],
                          stats: Stats(health: 650, armor: 35, magicResist: 20, attackDamage: 55, attackSpeed: 0.55, attackRange: 1))
        
        // MARK: JAYCE
        jayce = Champion(name: "jayce", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "to the skies", description: "Jayce jumps into the air and slams his hammer, dealing magic damage to nearby enemies."), championOriginSet3: [.spacePirate], championClassSet3: [.blaster],
                         bestItems: [items.guardianAngel, items.hextechGunblade, items.ionicSpark],
                         stats: Stats(health: 750, armor: 40, magicResist: 20, attackDamage: 60, attackSpeed: 0.7, attackRange: 1))
        
        
        // MARK: ------ STAR GUARDIAN -----
        
        // MARK: AHRI
        ahri = Champion(name: "ahri", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "orb of deception", description: "Ahri fires an orb in a line dealing magic damage to enemies it passes through. It then returns to her, dealing true damage to all enemies it passes through."), championOriginSet3: [.starGuardian], championClassSet3: [.sorcerer],
                        bestItems: [items.jeweledGauntlet, items.morellonomicon, items.seraphsEmbrace],
                        stats: Stats(health: 600, armor: 20, magicResist: 20, attackDamage: 45, attackSpeed: 0.75, attackRange: 3))
        
        
        // MARK: NEEKO
        neeko = Champion(name: "neeko", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "pop blossom", description: "Neeko leaps into the air and slams into the ground, dealing magic damage and stunning all nearby enemies."), championOriginSet3: [.starGuardian], championClassSet3: [.protector],
                         bestItems: [items.brambleVest, items.guardianAngel, items.ionicSpark],
                         stats: Stats(health: 800, armor: 35, magicResist: 20, attackDamage: 50, attackSpeed: 0.65, attackRange: 2))
        
        
        // MARK: POPPY
        poppy = Champion(name: "poppy", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "buckler toss", description: "Poppy throws her buckler at the furthest enemy dealing damage. The buckler bounces back to Poppy, shielding her."), championOriginSet3: [.starGuardian], championClassSet3: [.vanguard],
                         bestItems: [items.brambleVest, items.guardianAngel, items.ionicSpark],
                         stats: Stats(health: 650, armor: 40, magicResist: 20, attackDamage: 50, attackSpeed: 0.55, attackRange: 1))
        
        
        // MARK: SORAKA
        soraka = Champion(name: "soraka", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "wish", description: "Soraka heals all allies."), championOriginSet3: [.starGuardian], championClassSet3: [.mystic],
                          bestItems: [items.guardianAngel, items.spearOfShojin, items.zephyr],
                          stats: Stats(health: 700, armor: 30, magicResist: 20, attackDamage: 45, attackSpeed: 0.75, attackRange: 3))
        
        
        // MARK: SYNDRA
        syndra = Champion(name: "syndra", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "unleashed power", description: "Syndra pulls in all orbs on the battlefield and creates 3 new ones, then fires them all at the enemy with the highest health, dealing magic damage per orb."), championOriginSet3: [.starGuardian], championClassSet3: [.sorcerer],
                          bestItems: [items.jeweledGauntlet, items.rabadonsDeathcap, items.seraphsEmbrace],
                          stats: Stats(health: 600, armor: 20, magicResist: 20, attackDamage: 45, attackSpeed: 0.7, attackRange: 4))
        
        
        // MARK: ZOE
        zoe = Champion(name: "zoe", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "sleepy trouble bubble", description: "Zoe kicks a bubble at the enemy with the highest health, dealing magic damage and stunning them."), championOriginSet3: [.starGuardian], championClassSet3: [.sorcerer],
                       bestItems: [items.guinsoosRageblade, items.spearOfShojin, items.spearOfShojin],
                       stats: Stats(health: 500, armor: 20, magicResist: 20, attackDamage: 40, attackSpeed: 0.7, attackRange: 3))
        
        
        // MARK: ------ VALKYRIE -----
               
        // MARK: KAISA
        kaisa = Champion(name: "kaisa", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "missile rain", description: "Kai'Sa launches missiles towards each nearby enemy that deal 50 magic damage each."), championOriginSet3: [.valkyrie], championClassSet3: [.infiltrator],
                         bestItems: [items.jeweledGauntlet, items.morellonomicon, items.seraphsEmbrace],
                         stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 50, attackSpeed: 0.75, attackRange: 2))
        
        // MARK: KAYLE
        kayle = Champion(name: "kayle", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "ascent", description: "Kayle Ascends, causing her attacks to launch waves that deal bonus magic damage until the end of combat."), championOriginSet3: [.valkyrie], championClassSet3: [.blademaster],
                         bestItems: [items.guinsoosRageblade, items.handOfJustice, items.rapidFirecannon],
                         stats: Stats(health: 700, armor: 25, magicResist: 20, attackDamage: 60, attackSpeed: 0.8, attackRange: 3))
        
        
        // MARK: MISS FORTUNE
        missFortune = Champion(name: "miss fortune", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "bullet time", description: "Miss Fortune channels and fires waves of bullets in a cone for 2.25 seconds, dealing a percentage of enemies' maximum health in magic damage over the duration."), championOriginSet3: [.valkyrie], championClassSet3: [.mercenary, .blaster],
                               bestItems: [items.quicksilver, items.seraphsEmbrace, items.seraphsEmbrace],
                               stats: Stats(health: 800, armor: 20, magicResist: 20, attackDamage: 60, attackSpeed: 1, attackRange: 4))
        
        
        // MARK: ------ VOID -----
        
        // MARK: CHOGATH
        chogath = Champion(name: "chogath", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "rupture", description: "Cho'Gath ruptures a large area, dealing magic damage and knocking up all enemies within."), championOriginSet3: [.void], championClassSet3: [.brawler],
                           bestItems: [items.guardianAngel, items.morellonomicon, items.warmogsArmor],
                           stats: Stats(health: 1000, armor: 20, magicResist: 20, attackDamage: 70, attackSpeed: 0.6, attackRange: 1))
        
        
        // MARK: KHAZIX
        khazix = Champion(name: "khazix", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "taste their fear", description: "Kha'Zix slashes the nearest enemy, dealing magic damage. If the target has no adjacent teammates, this damage is increased."), championOriginSet3: [.void], championClassSet3: [.infiltrator],
                          bestItems: [items.bloodthirster, items.infinityEdge, items.rapidFirecannon],
                          stats: Stats(health: 500, armor: 25, magicResist: 20, attackDamage: 50, attackSpeed: 0.7, attackRange: 1))
        
        
        // MARK: VELKOZ
        velkoz = Champion(name: "velkoz", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "lifeform disintegration ray", description: "Vel'Koz channels a ray of energy that sweeps across the battlefield over 2.5 seconds, dealing magic damage per second to enemies hit."), championOriginSet3: [.void], championClassSet3: [.sorcerer],
                          bestItems: [items.jeweledGauntlet, items.morellonomicon, items.seraphsEmbrace],
                          stats: Stats(health: 650, armor: 20, magicResist: 20, attackDamage: 45, attackSpeed: 0.75, attackRange: 4))
        
        
        setChampionRatings()
        
        
    }
    
}

