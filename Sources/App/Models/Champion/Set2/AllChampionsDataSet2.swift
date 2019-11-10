//
//  AllChampionsDataSet2.swift
//  App
//
//  Created by James Mclean on 08/11/2019.
//


import Foundation


class ChampionsSet2 {
    
    static var shared = ChampionsSet2()
    
    // crystal
    var ashe: Champion
    var skarner: Champion
    var taric: Champion
    
    // desert
    var renekton: Champion
    var azir: Champion
    var sivir: Champion
    var khazix: Champion
    
    // electric
    var ornn: Champion
    var volibear: Champion
    var zed: Champion
    
    // glacial
    var warwick: Champion
    var braum: Champion
    var ezreal: Champion
    var olaf: Champion
    
    // inferno
    var diana: Champion
    var zyra: Champion
    var varus: Champion
    var kindred: Champion
    var annie: Champion
    var brand: Champion
    
    // light
    var vayne: Champion
    var nasus: Champion
    var jax: Champion
    var aatrox: Champion
    var soraka: Champion
    var yorick: Champion
    var lux: Champion
    
    // mountain
    var malphite: Champion
    var taliyah: Champion
    
    // ocean
    var vladimir: Champion
    var syndra: Champion
    var thresh: Champion
    var qiyana: Champion
    var nautilus: Champion
    var nami: Champion
    
    // poison
    var kogmaw: Champion
    var drMundo: Champion
    var twitch: Champion
    var singed: Champion
    
    // shadow
    var malzahar: Champion
    // kindred also
    var sion: Champion
    var veigar: Champion
    var masterYi: Champion
    
    // steel
    var reksai: Champion
    var nocturne: Champion
    
    // cloud
    var yasuo: Champion
    var janna: Champion
    
    // woodland
    var ivern: Champion
    var maokai: Champion
    var leBlanc: Champion
    var neeko: Champion
    
    lazy var allChampions: [Champion] = {
        return [ashe, skarner, taric,
                renekton, azir, sivir, khazix,
                ornn, volibear, zed,
                warwick, braum, ezreal, olaf,
                diana, zyra, varus, kindred, annie, brand,
                vayne, nasus, jax, aatrox, soraka, yorick, lux,
                malphite, taliyah,
                vladimir, syndra, thresh, qiyana, nautilus, nami,
                kogmaw, drMundo, twitch, singed,
                malzahar, sion, veigar, masterYi,
                reksai, nocturne,
                yasuo, janna,
                ivern, maokai, leBlanc, neeko
        ]
    }()
    
    func goodChamps(for item: CombinedItem) -> [Champion] {
        ChampionsSet2.shared.allChampions.filter { (champ) -> Bool in
            return champ.bestItems?.contains(item) ?? false
        }.sorted { $0.cost < $1.cost } // lowest champ first
    }
    
    func getChampions(of element: ChampionElementSet2) -> [Champion] {
        var champsToReturn = [Champion]()
        allChampions.forEach { champion in
            if champion.championElementSet2.contains(element) {
                champsToReturn.append(champion)
            }
        }
        return champsToReturn
    }
    
    func getChampions(of championClass: ChampionClassSet2) -> [Champion] {
        var champsToReturn = [Champion]()
        allChampions.forEach { champion in
            if champion.championClassSet2.contains(championClass) {
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
        let items = Items.shared
        
        
        // MARK: ------ CRYSTAL -----
        
        
        
        // MARK: ASHE
        ashe = Champion(name: "ashe", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "ranger's focus", description: "For 5 seconds, Ashe gains % Attack Speed, and her basic attacks fire a flurry of arrows dealing physical damage."), championElement: [.crystal], championClass: [.ranger], bestItems: [items.statikkShiv, items.statikkShiv, items.statikkShiv], stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 65, attackSpeed: 0.7, attackRange: 4))
        
        
        // MARK: SKARNER
        skarner = Champion(name: "skarner", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "crystalline exoskeleton", description: "Skarner shields himself for a few seconds, gaining bonus attack speed while the shield holds."), championElement: [.crystal], championClass: [.predator], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: TARIC
        taric = Champion(name: "taric", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "cosmic radiance", description: "After a delay, Taric and all nearby allies become invulnerable for a few seconds."), championElement: [.crystal], championClass: [.warden], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))

        
        
        
        
        
        
        
        // MARK: ------ DESERT -----
        
        
        
        // MARK: RENEKTON
        renekton = Champion(name: "renekton", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "cull the meek", description: "Renekton damages adjacent enemies and heals himself for each enemy hit."), championElement: [.desert], championClass: [.berserker], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: AZIR
        azir = Champion(name: "azir", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "arise", description: "Azir summons an untargetable Sand Soldier near a random enemy that attacks whenever Azir attacks."), championElement: [.desert], championClass: [.summoner], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: SIVIR
        sivir = Champion(name: "sivir", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "ricochet", description: "Sivir’s attacks temporarily bounce to nearby units."), championElement: [.desert], championClass: [.blademaster], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: KHA'ZIX
        khazix = Champion(name: "khazix", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "arid assault", description: "Kha’Zix briefly becomes stealthed, becoming untargetable and causing his next attack to critically strike."), championElement: [.desert], championClass: [.assassin], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        
        
        
        
        
        // MARK: ------ ELECTRIC -----
        
        
        
        // MARK: ORNN
        ornn = Champion(name: "ornn", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "lightning breath", description: "Ornn breathes lightning in a cone in front of him, damaging enemies and increasing their chance to be critically struck for the next few seconds."), championElement: [.electric], championClass: [.warden], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: VOLIBEAR
        volibear = Champion(name: "volibear", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "frenzied bite", description: "Volibear bites his target, dealing damage. Thunder Bite instantly kills enemies below a certain amount of health, fully restoring Volibear’s mana."), championElement: [.electric, .glacial], championClass: [.berserker], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: ZED
        zed = Champion(name: "zed", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "living lightning", description: "Zed creates an identical clone of himself behind his current target, copying his items as well. This clone can also cast Living Lightning."), championElement: [.electric], championClass: [.assassin, .summoner], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        
        
        
        
        
        // MARK: ------ GLACIAL -----
        
        
        
        // MARK: WARWICK
        warwick = Champion(name: "warwick", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "infinite duress", description: "Warwick pounces onto the lowest-health enemy, stunning and damaging them. Applies on-hit effects."), championElement: [.glacial], championClass: [.predator], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: BRAUM
        braum = Champion(name: "braum", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "unbreakable", description: "Braum raises his shield toward the furthest enemy, reducing incoming damage from that direction and blocking projectiles."), championElement: [.glacial], championClass: [.warden], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        // volibear is also glacial, he is in the electric section
        
        // MARK: EZREAL
        ezreal = Champion(name: "ezreal", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "ice shot", description: "Ezreal fires a shard of ice toward the lowest-health enemy, damaging the first enemy hit and applying on-hit effects."), championElement: [.glacial], championClass: [.ranger], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: OLAF
        olaf = Champion(name: "olaf", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "ragnarok", description: "For the rest of combat, Olaf gains a large amount of Attack Speed and Lifesteal for a few seconds and becomes immune to crowd control."), championElement: [.glacial], championClass: [.berserker], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        
        
        
        
        
        // MARK: ------ INFERNO -----
        
        
        
        // MARK: DIANA
        diana = Champion(name: "diana", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "flame cascade", description: "Diana creates three orbs that rotate around her and that explode when hitting an enemy dealing magic damage. In addition, Diana generates a shield that lasts 3 seconds and absorbs damage."), championElement: [.inferno], championClass: [.assassin], bestItems: [], stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 50, attackSpeed: 0.7, attackRange: 1))
        
        
        // MARK: ZYRA
        zyra = Champion(name: "zyra", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "rampant growth", description: "Zyra summons Flame Spitters at a random location at the edge of the arena. The Flame spitters attack the nearest enemy for 3 seconds. dealing magic damage per attack a total of 4 times."), championElement: [.inferno], championClass: [.summoner], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: VARUS
        varus = Champion(name: "varus", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "piercing arrow", description: "Varus charges and fires an arrow, dealing damage to all enemies in a line."), championElement: [.inferno], championClass: [.ranger], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: KINDRED
        kindred = Champion(name: "kindred", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "dance of dread", description: "Lamb tumbles away from her target while Wolf bites them, dealing damage."), championElement: [.inferno, .shadow], championClass: [.ranger], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: ANNIE
        annie = Champion(name: "annie", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "tibbers", description: "Annie summons Tibbers onto a nearby hex. Tibbers attacks nearby enemies while active."), championElement: [.inferno], championClass: [.summoner], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: BRAND
        brand = Champion(name: "brand", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "pyroclasm", description: "Brand launches a bouncing fireball, damaging enemies hit."), championElement: [.inferno], championClass: [.mage], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        
        
        
        
        
        // MARK: ------ LIGHT -----
        
        
        
        // MARK: VAYNE
        vayne = Champion(name: "vayne", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "silver bolts", description: "Vayne passively deals bonus true damage every third attack based on the enemy’s maximum health."), championElement: [.light], championClass: [.ranger], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: NASUS
        nasus = Champion(name: "nasus", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "fury of the dawn", description: "Nasus temporarily enrages, gaining bonus health and damaging adjacent enemies each second for the duration."), championElement: [.light], championClass: [.warden], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: JAX
        jax = Champion(name: "jax", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "counter strike", description: "Jax gains 100% dodge chance for the next few seconds, then briefly stuns and damages adjacent enemies."), championElement: [.light], championClass: [.berserker], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: AATROX
        aatrox = Champion(name: "aatrox", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "the arclight blade", description: "Aatrox slams his sword in a circle in front of him, damaging enemies hit."), championElement: [.light], championClass: [.blademaster], bestItems: [items.guardianAngel, items.rabadonsDeathcap, items.hextechGunblade], stats: Stats(health: 700, armor: 35, magicResist: 20, attackDamage: 65, attackSpeed: 0.7, attackRange: 1))
        
        
        // MARK: SORAKA
        soraka = Champion(name: "soraka", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "equinox", description: "Soraka temporarily calms an area around a random enemy, damaging enemies and preventing them from gaining mana while inside."), championElement: [.light], championClass: [.mystic], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: YORICK
        yorick = Champion(name: "yorick", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "shepherd of souls", description: "Yorick blesses several of his lowest-health allies, reviving them as a Minion of Light when they die. More star levels, more targets."), championElement: [.light], championClass: [.summoner], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: LUX
        lux = Champion(name: "lux", nickname: "", tier: .seven, cost: 7, rating: .A, ultimate: Ultimate(name: "final spark", description: "Lux fires a giant laser that deals massive damage to enemies hit and restores mana based on enemies hit."), championElement: [.variable], championClass: [.avatar], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        
        
        
        
        // MARK: ------ MOUNTAIN -----
        
        
        
        // MARK: TALIYAH
        taliyah = Champion(name: "taliyah", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "seismic shove", description: "Taliyah erupts the ground under a random enemy, knocking them toward her if ranged, or away if melee."), championElement: [.mountain], championClass: [.mage], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: MALPHITE
        malphite = Champion(name: "malphite", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "unstoppable force", description: "Malphite throws himself toward a random enemy, damaging and knocking up nearby enemies when he arrives."), championElement: [.mountain], championClass: [.warden], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        
        
        
        
        
        // MARK: ------ MOUNTAIN -----
        
        
        // MARK: VLADIMIR
        vladimir = Champion(name: "vladimir", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "drain", description: "Vladimir damages a target enemy, healing himself for the damage dealt."), championElement: [.ocean], championClass: [.mage], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: SYNDRA
        syndra = Champion(name: "syndra", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "hydro sphere", description: "Syndra conjures a Hydro Sphere at a target location that damages enemies."), championElement: [.ocean], championClass: [.mage], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: THRESH
        thresh = Champion(name: "thresh", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "deep sea lantern", description: "Thresh throws his lantern to the lowest-health ally, shielding them and nearby allies for a few seconds."), championElement: [.ocean], championClass: [.warden], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: QIYANA
        qiyana = Champion(name: "qiyana", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "elemental blade", description: "Qiyana dashes to the side of her target and throws a blast of wind through them, damaging and stunning enemies it passes through."), championElement: [.variable], championClass: [.assassin], bestItems: [], stats: Stats(health: 650, armor: 25, magicResist: 20, attackDamage: 65, attackSpeed: 0.7, attackRange: 1))
        
        
        // MARK: NAUTILUS
        nautilus = Champion(name: "nautilus", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "depth charge", description: "Nautilus sends out a depth charge that seeks out the furthest enemy champion, knocking them up and stunning them for a really long time."), championElement: [.ocean], championClass: [.warden], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: NAMI
        nami = Champion(name: "nami", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "tidal wave", description: "Nami sends a massive wave toward a random enemy, damaging and knocking up enemies it passes through and granting allies it passes through bonus magic damage on hit."), championElement: [.ocean], championClass: [.mystic], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        
        
        
        
        // MARK: ------ POISON -----
        
        
        
        // MARK: KOG'MAW
        kogmaw = Champion(name: "kog'maw", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "living artillery", description: "Kog'Maw launches an artillery shot at a random enemy, dealing magic damage on impact"), championElement: [.poison], championClass: [.predator], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: DR MUNDO
        drMundo = Champion(name: "mundo", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "adrenaline rush", description: "Dr. Mundo spawns a toxic cloud around himself that damages adjacent enemies and heals himself for the damage dealt for several seconds."), championElement: [.poison], championClass: [.berserker], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: TWITCH
        twitch = Champion(name: "twitch", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "spray and pray", description: "Twitch temporarily gains infinite range and his attacks become piercing bolts that fly through their targets to the end of the board, damaging all enemies they pass through."), championElement: [.poison], championClass: [.ranger], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: SINGED
        singed = Champion(name: "singed", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "poison trail", description: "Singed passively leaves a poison cloud behind himself that damages enemies who stand in it."), championElement: [.poison], championClass: [.alchemist], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        
        
        
        
        
        // MARK: ------ SHADOW -----
        
        
        
        // MARK: MALZAHAR
        malzahar = Champion(name: "malzahar", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "shadow swarm", description: "Malzahar creates a portal that spawns minions. More star levels, more minions."), championElement: [.shadow], championClass: [.summoner], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // kindred also inferno, currently in inferno section
   
        
        // MARK: SION
        sion = Champion(name: "sion", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "decimating smash", description: "Sion smashes an area in front of him after a delay, knocking up and damaging enemies."), championElement: [.shadow], championClass: [.berserker], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: VEIGAR
        veigar = Champion(name: "veigar", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "primordial burst", description: "Veigar blasts an enemy with magical energy, dealing damage. Instantly kills enemies at lower star levels than Veigar."), championElement: [.shadow], championClass: [.mage], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: MASTER YI
        masterYi = Champion(name: "master yi", nickname: "", tier: .five, cost: 5, rating: .A, ultimate: Ultimate(name: "meditate", description: "Master Yi becomes untargetable and significantly heals himself over a few seconds. After channeling, his attacks temporarily deal bonus magic damage on hit."), championElement: [.shadow], championClass: [.mystic, .blademaster], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        
        
        
        
        // MARK: ------ STEEL -----
        
        
        
        // MARK: REK'SAI
        reksai = Champion(name: "rek'Sai", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "furious bite", description: "Rek’Sai bites her target, dealing true damage."), championElement: [.steel], championClass: [.predator], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: NOCTURNE
        nocturne = Champion(name: "nocturne", nickname: "", tier: .three, cost: 3, rating: .A, ultimate: Ultimate(name: "steel blades", description: "Every three hits, Nocturne’s next attack is enhanced, damaging all adjacent enemies and healing him for a portion of damage dealt."), championElement: [.steel], championClass: [.assassin], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        
        
        
        
        
        // MARK: ------ CLOUD -----
        
        
        
        // MARK: YASUO
        yasuo = Champion(name: "yasuo", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "last breath", description: "Yasuo instantly appears next to the enemy with the most items, attacking them multiple times in rapid succession and knocking them up for the duration."), championElement: [.cloud], championClass: [.blademaster], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: JANNA
        janna = Champion(name: "janna", nickname: "", tier: .four, cost: 4, rating: .A, ultimate: Ultimate(name: "monsoon", description: "Janna knocks back enemies in a large area and channels for a few seconds, continuously healing nearby allies."), championElement: [.cloud], championClass: [.mystic], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        
        
        
        
        
        // MARK: ------ WOODLAND -----
        
        
        
        // MARK: IVERN
        ivern = Champion(name: "ivern", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "triggerseed", description: "Ivern shields the lowest-health ally for a few seconds."), championElement: [.woodland], championClass: [.druid], bestItems: [], stats: Stats(health: 0, armor: 0, magicResist: 0, attackDamage: 0, attackSpeed: 0, attackRange: 0))
        
        
        // MARK: MAOKAI
        maokai = Champion(name: "maokai", nickname: "", tier: .one, cost: 1, rating: .A, ultimate: Ultimate(name: "sap magic", description: "Whenever Maokai is damaged by an enemy spell, his next attack heals him."), championElement: [.woodland], championClass: [.druid], bestItems: [], stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 55, attackSpeed: 0.7, attackRange: 2))
        
        
        // MARK: LEBLANC
        leBlanc = Champion(name: "leblanc", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "ethereal chains", description: "Leblanc launches an ethereal chain towards a random enemy, deals damage and stuns them after a short delay."), championElement: [.woodland], championClass: [.assassin,.mage], bestItems: [], stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 55, attackSpeed: 0.7, attackRange: 2))
        
        
        // MARK: NEEKO
        neeko = Champion(name: "neeko", nickname: "", tier: .two, cost: 2, rating: .A, ultimate: Ultimate(name: "blooming burst", description: "Neeko throws a seed at a random enemy that explodes three times in a larger and larger radius."), championElement: [.woodland], championClass: [.druid], bestItems: [], stats: Stats(health: 550, armor: 20, magicResist: 20, attackDamage: 55, attackSpeed: 0.7, attackRange: 2))
        
        setChampionRatings()
        
    }
    
    
    
}
