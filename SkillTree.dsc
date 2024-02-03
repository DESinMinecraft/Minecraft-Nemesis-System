SkillTreeWorld:
    debug: false
    type: world
    events:
        on player clicks item in SkillTreeInventory|WraithSkillTree|RangedSkillTree|CombatSkillTree:
        - if <context.item.script.name> !matches SkillPoints && <context.item.script.name> !matches Stealth && <context.item.script.name.is_truthy>:
            - inventory open d:<context.item.script.name>SkillTree
            - playsound sound:BLOCK_NOTE_BLOCK_CHIME <player.location> pitch:1


        on player clicks item in AOEAttackSkillTree:
        - if !<player.has_flag[Wraith.AOEAttack.Bought<context.item.script.name>]> && <player.flag[SkillPoints]> >= 1:
            - narrate "<&e>Bought <context.item.display> for 1 Skill Point! <&l>Click again to equip ability!"
            - flag <player> Wraith.AOEAttack.Bought<context.item.script.name>
            - flag <player> SkillPoints:--
            - playsound sound:ENTITY_EVOKER_PREPARE_SUMMON <player.location> pitch:1.75
        - else if <player.has_flag[Wraith.AOEAttack.Bought<context.item.script.name>]>:
            - flag <player> Wraith.AOEAttack.Attack:!
            - flag <player> Wraith.AOEAttack.Attack.<context.item.script.name>
            - playsound sound:ITEM_TRIDENT_THUNDER <player.location> pitch:1.75
            - narrate "<&e>Equipped <context.item.display>"
        - else:
            - narrate "<&e>You need a Skill Point to buy this ability! Skill points are earned every 10 XP levels!"
            - playsound sound:ENTITY_VILLAGER_NO <player.location>
            - inventory close


        on player clicks item in ExplosiveShotSkillTree:
        - if !<player.has_flag[Ranged.ExplosiveShot.Bought<context.item.script.name>]> && <player.flag[SkillPoints]> >= 1:
            - narrate "<&e>Bought <context.item.display> for 1 Skill Point! <&l>Click again to equip ability!"
            - flag <player> Ranged.ExplosiveShot.Bought<context.item.script.name>
            - flag <player> SkillPoints:--
            - playsound sound:ENTITY_EVOKER_PREPARE_SUMMON <player.location> pitch:1.75
        - else if <player.has_flag[Ranged.ExplosiveShot.Bought<context.item.script.name>]>:
            - flag <player> Ranged.ExplosiveShot.Attack:!
            - flag <player> Ranged.ExplosiveShot.Attack.<context.item.script.name>
            - playsound sound:ITEM_TRIDENT_THUNDER <player.location> pitch:1.75
            - narrate "<&e>Equipped <context.item.display>"
        - else:
            - narrate "<&e>You need a Skill Point to buy this ability! Skill points are earned every 10 XP levels!"
            - playsound sound:ENTITY_VILLAGER_NO <player.location>
            - inventory close


        on player clicks item in BetterMightSkillTree:
        - if !<player.has_flag[Combat.BetterMight.Bought<context.item.script.name>]> && <player.flag[SkillPoints]> >= 1:
            - narrate "<&e>Bought <context.item.display> for 1 Skill Point! <&l>Click again to equip ability!"
            - flag <player> Combat.BetterMight.Bought<context.item.script.name>
            - flag <player> SkillPoints:--
            - playsound sound:ENTITY_EVOKER_PREPARE_SUMMON <player.location> pitch:1.75
        - else if <player.has_flag[Combat.BetterMight.Bought<context.item.script.name>]>:
            - flag <player> Combat.BetterMight.Attack:!
            - flag <player> Combat.BetterMight.Attack.<context.item.script.name>
            - playsound sound:ITEM_TRIDENT_THUNDER <player.location> pitch:1.75
            - narrate "<&e>Equipped <context.item.display>"
        - else:
            - narrate "<&e>You need a Skill Point to buy this ability! Skill points are earned every 10 XP levels!"
            - playsound sound:ENTITY_VILLAGER_NO <player.location>
            - inventory close

        on player clicks item in ShadowStriderSkillTree:
        - if !<player.has_flag[Wraith.ShadowStrider.Bought<context.item.script.name>]> && <player.flag[SkillPoints]> >= 1:
            - narrate "<&e>Bought <context.item.display> for 1 Skill Point! <&l>Click again to equip ability!"
            - flag <player> Wraith.ShadowStrider.Bought<context.item.script.name>
            - flag <player> SkillPoints:--
            - playsound sound:ENTITY_EVOKER_PREPARE_SUMMON <player.location> pitch:1.75
        - else if <player.has_flag[Wraith.ShadowStrider.Bought<context.item.script.name>]>:
            - flag <player> Wraith.ShadowStrider.Attack:!
            - flag <player> Wraith.ShadowStrider.Attack.<context.item.script.name>
            - playsound sound:ITEM_TRIDENT_THUNDER <player.location> pitch:1.75
            - narrate "<&e>Equipped <context.item.display>"
        - else:
            - narrate "<&e>You need a Skill Point to buy this ability! Skill points are earned every 10 XP levels!"
            - playsound sound:ENTITY_VILLAGER_NO <player.location>
            - inventory close

        on player clicks item in BraceofDaggersSkillTree:
        - if !<player.has_flag[Wraith.BraceofDaggers.Bought<context.item.script.name>]> && <player.flag[SkillPoints]> >= 1:
            - narrate "<&e>Bought <context.item.display> for 1 Skill Point! <&l>Click again to equip ability!"
            - flag <player> Wraith.BraceofDaggers.Bought<context.item.script.name>
            - flag <player> SkillPoints:--
            - playsound sound:ENTITY_EVOKER_PREPARE_SUMMON <player.location> pitch:1.75
        - else if <player.has_flag[Wraith.BraceofDaggers.Bought<context.item.script.name>]>:
            - flag <player> Wraith.BraceofDaggers.Attack:!
            - flag <player> Wraith.BraceofDaggers.Attack.<context.item.script.name>
            - playsound sound:ITEM_TRIDENT_THUNDER <player.location> pitch:1.75
            - narrate "<&e>Equipped <context.item.display>"
        - else:
            - narrate "<&e>You need a Skill Point to buy this ability! Skill points are earned every 10 XP levels!"
            - playsound sound:ENTITY_VILLAGER_NO <player.location>
            - inventory close


SkillTreeInventory:
    type: inventory
    inventory: chest
    title: <&0><&l>What shall you upgrade?
    gui: true
    slots:
    - [Wraith] [Combat] [Ranged] [Stealth] [] [] [] [SkillPoints] []

CancelItem:
    type: item
    material: barrier
    display name: <&c>Cancel
    lore:
    - <&7>Exits the skill tree.


WraithSkillTree:
    type: inventory
    inventory: chest
    title: <&color[#FF7D69]><&l>What shall you upgrade?
    gui: true
    procedural items:
    - define list <list>
    - foreach <server.flag[WraithAbilities]>:
        - define item <[value]>
        - define list:->:<[item]>
    - determine <[list]>
    slots:
    - [] [] [] [] [] [] [] [] []

CombatSkillTree:
    type: inventory
    inventory: chest
    title: <&color[#FF7D69]><&l>What shall you upgrade?
    gui: true
    procedural items:
    - define list <list>
    - foreach <server.flag[CombatAbilities]>:
        - define item <[value]>
        - define list:->:<[item]>
    - determine <[list]>
    slots:
    - [] [] [] [] [] [] [] [] []

RangedSkillTree:
    type: inventory
    inventory: chest
    title: <&color[#FF7D69]><&l>What shall you upgrade?
    gui: true
    procedural items:
    - define list <list>
    - foreach <server.flag[RangedAbilities]>:
        - define item <[value]>
        - define list:->:<[item]>
    - determine <[list]>
    slots:
    - [] [] [] [] [] [] [] [] []


Wraith:
    type: item
    material: nether_star
    display name: <&color[#3E99F4]><&l>Wraith Abilities
    lore:
     - <&color[#45FFE8]>Upgrade the special powers
     - <&color[#45FFE8]>that you have

Combat:
    type: item
    material: iron_sword
    display name: <&color[#D13B0C]><&l>Combat Abilities
    lore:
     - <&color[#E51D58]>Upgrade the your skills
     - <&color[#E51D58]>for combat

Ranged:
    type: item
    material: bow
    display name: <&color[#759576]><&l>Ranged
    lore:
     - <&color[#52A229]>Upgrade your ranged
     - <&color[#52A229]>attacks

Stealth:
    type: item
    material: potion[potion_effects=invisibility,false,false]
    display name: <&color[#726E6E]><&l>Stealth
    lore:
     - <&color[#5F5F5F]>Skilltree coming soon!
     - <&color[#5F5F5F]>For now, Sneak + Damage enemies
     - <&color[#5F5F5F]>from behind to do 2x
     - <&color[#5F5F5F]>damage!


SkillPoints:
    type: item
    material: paper
    display name: <&color[#F5919C]><&l>Skill points
    lore:
     - <&r>You have <&l><player.flag[SkillPoints]>
     - <&r>skill points

AOEAttack:
    type: item
    material: EXPERIENCE_BOTTLE
    display name: <&color[#F5919C]><&l>AOE Attack
    lore:
     - <&color[#45FFE8]>Upgrade your AOE Attack
     - <&color[#45FFE8]>after filling up your Might.
     - <&color[#45FFE8]>Right click ground with sword/axe
     - <&color[#45FFE8]>to activate.

ShadowStrider:
    type: item
    material: feather
    display name: <&color[#F5919C]><&l>Shadow Strider
    lore:
     - <&color[#45FFE8]>Upgrade your Double Jump.
     - <&color[#45FFE8]>Double Jump by quickly double
     - <&color[#45FFE8]>tapping spacebar for additional
     - <&color[#45FFE8]>movement.


ExplosiveShot:
    type: item
    material: tnt
    display name: <&color[#F5919C]><&l>Explosive Shot
    lore:
     - <&color[#45FFE8]>Upgrade your Explosive Shot after
     - <&color[#45FFE8]>shooting an arrow/trident and
     - <&color[#45FFE8]>filling up your Might. Left click
     - <&color[#45FFE8]>bow/crossbow/trident and shoot to activate

BetterMight:
    type: item
    material: red_dye
    display name: <&color[#F5919C]><&l>Better Might
    lore:
     - <&color[#45FFE8]>Separate abilities for how you
     - <&color[#45FFE8]>gain Might. Might is how you
     - <&color[#45FFE8]>use special abilities. Gain Might
     - <&color[#45FFE8]>by damaging mobs.

BraceofDaggers:
    type: item
    material: Spectral_arrow
    display name: <&color[#F5919C]><&l>Brace of Daggers
    lore:
     - <&color[#45FFE8]>Upgrade your dagger attacks.
     - <&color[#45FFE8]>When holding an item, right
     - <&color[#45FFE8]>click to throw a dagger.


AOEAttackSkillTree:
    type: inventory
    inventory: chest
    title: <&color[#FF7D69]><&l>What shall you select?
    gui: true
    procedural items:
    - define list <list>
    - foreach <server.flag[AOEAttack]>:
        - define item <[value]>
        - define list:->:<[item]>
    - determine <[list]>
    slots:
    - [] [] [] []

AOEAttackFire:
    type: item
    material: Fire_Charge
    display name: <&4><&l>Fire Damage
    lore:
     - <&4>Enemies nearby you will be set on fire

AOEAttackPoison:
    type: item
    material: Poisonous_Potato
    display name: <&2><&l>Poison Damage
    lore:
     - <&2>Enemies nearby you will be poisoned

AOEAttackWither:
    type: item
    material: Wither_Skeleton_Skull
    display name: <&5><&l>Wither Damage
    lore:
     - <&5>Enemies nearby you will get wither

AOEAttackFreeze:
    type: item
    material: Snowball
    display name: <&b><&l>Frozen Damage
    lore:
     - <&b>Enemies nearby you will be frozen and stunned

GrimResolve:
    type: item
    material: redstone
    display name: <&c><&l>Grim Resolve
    lore:
     - <&c>Gain Might each time you are damaged.

FlawlessCombo:
    type: item
    material: golden_apple
    display name: <&e><&l>Flawless Combo
    lore:
     - <&e>Gain double Might when damaging entities,
     - <&e>but lose it all when hit.

GreatDefence:
    type: item
    material: shield
    display name: <&9><&l>Great Defence
    lore:
     - <&9>Gain Might for each time you
     - <&9>successfully block an attack with
     - <&9>a shield

GreatHeights:
    type: item
    material: phantom_membrane
    display name: <&r><&l>Great Heights
    lore:
     - <&f>Double Jump with additional
     - <&f>power to reach greater distances

RightingReflex:
    type: item
    material: enchanted_book[enchantments=[feather_falling=100]]
    display name: <&3><&l>Righting Reflex
    lore:
     - <&3>Double Jumping will make you
     - <&3>take no fall damage


Impenetrable:
    type: item
    material: shield
    display name: <&1><&l>Impenetrable
    lore:
     - <&1>The start of your double jump
     - <&1>gives you invincibility frames

TripleShot:
    type: item
    material: trident
    display name: <&b><&l>Triple Shot
    lore:
     - <&b>3 daggers are thrown at
     - <&b>once to hit multiple foes

Penetration:
    type: item
    material: enchanted_book[enchantments=[piercing=5]]
    display name: <&4><&l>Penetration
    lore:
     - <&4>Your dagger will penetrate
     - <&4>through several enemies
     - <&4>like the piercing enchantment

FleetingEdge:
    type: item
    material: arrow
    display name: <&7><&l>Fleeting Edge
    lore:
     - <&7>The cooldown for shooting
     - <&7>daggers is lower


ExplosiveShotSkillTree:
    type: inventory
    inventory: chest
    title: <&color[#FF7D69]><&l>What shall you select?
    gui: true
    procedural items:
    - define list <list>
    - foreach <server.flag[AOEAttack]>:
        - define item <[value]>
        - define list:->:<[item]>
    - determine <[list]>
    slots:
    - [] [] [] []

BetterMightSkillTree:
    type: inventory
    inventory: chest
    title: <&color[#FF7D69]><&l>What shall you select?
    gui: true
    procedural items:
    - define list <list>
    - foreach <server.flag[MightPassives]>:
        - define item <[value]>
        - define list:->:<[item]>
    - determine <[list]>
    slots:
    - [] [] [] []

ShadowStriderSkillTree:
    type: inventory
    inventory: chest
    title: <&color[#FF7D69]><&l>What shall you select?
    gui: true
    procedural items:
    - define list <list>
    - foreach <server.flag[ShadowStrider]>:
        - define item <[value]>
        - define list:->:<[item]>
    - determine <[list]>
    slots:
    - [] [] [] []

BraceofDaggersSkillTree:
    type: inventory
    inventory: chest
    title: <&color[#FF7D69]><&l>What shall you select?
    gui: true
    procedural items:
    - define list <list>
    - foreach <server.flag[BraceofDaggers]>:
        - define item <[value]>
        - define list:->:<[item]>
    - determine <[list]>
    slots:
    - [] [] [] []


SkillTreeCommand:
    type: command
    name: SkillTree
    description: Opens up the menu for your Skill Tree
    usage: /SkillTree
    aliases:
    - st
    - skill
    permission: dscript.SkillTree
    script:
    - inventory open d:SkillTreeInventory


SkillSet:
    debug: false
    type: world
    events:
        after server start:
        - flag server WraithAbilities:<list[AOEAttack|ShadowStrider|BraceofDaggers]>
        - flag server RangedAbilities:<list[ExplosiveShot]>
        - flag server CombatAbilities:<list[BetterMight]>
        - flag server AOEAttack:<list[AOEAttackFire|AOEAttackPoison|AOEAttackWither|AOEAttackFreeze]>
        - flag server MightPassives:<list[GrimResolve|FlawlessCombo|GreatDefence]>
        - flag server ShadowStrider:<list[GreatHeights|RightingReflex|Impenetrable]>
        - flag server BraceofDaggers:<list[TripleShot|Penetration|FleetingEdge]>
