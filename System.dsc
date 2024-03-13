OrcGruntEquip:
    debug: false
    type: world
    events:
        on husk||stray||ZOMBIFIED_PIGLIN||PIGLIN||WITHER_SKELETON||PIGLIN_BRUTE||DROWNED|ZOMBIE_VILLAGER spawns:
        - define headgear <list[leather_helmet|chainmail_helmet|golden_helmet|iron_helmet|diamond_helmet|netherite_helmet|air].random>
        - if <[headgear]> !matches air:

            - define material <script[AllEnchants].data_key[Trims].get[Material].random>
            - define pattern <script[AllEnchants].data_key[Trims].get[Pattern].random>
            - if <util.random_chance[50]>:
                - equip <context.entity> head:<[headgear]>
            - else:
                - equip <context.entity> head:<item[<[headgear]>].with[trim=<map[material=<[Material]>;pattern=<[Pattern]>]>]>
                - if <util.random_chance[4]>:
                    - define modifier <util.random.int[1].to[5]>
                    - equip <context.entity> head:<[headgear]>[enchantments=<script[AllEnchants].data_key[Enchants].get[Armor].random>,<[modifier]>]

        - define chestgear <list[leather_chestplate|chainmail_chestplate|golden_chestplate|iron_chestplate|diamond_chestplate|netherite_chestplate|AIR].random>
        - if <[chestgear]> !matches air:

            - define material <script[AllEnchants].data_key[Trims].get[Material].random>
            - define pattern <script[AllEnchants].data_key[Trims].get[Pattern].random>
            - if <util.random_chance[50]>:
                - equip <context.entity> chest:<[chestgear]>
            - else:
                - equip <context.entity> chest:<item[<[chestgear]>].with[trim=<map[material=<[Material]>;pattern=<[Pattern]>]>]>
                - if <util.random_chance[4]>:
                    - define modifier <util.random.int[1].to[5]>
                    - equip <context.entity> chest:<[chestgear]>[enchantments=<script[AllEnchants].data_key[Enchants].get[Armor].random>,<[modifier]>]


        - define leggear <list[leather_leggings|chainmail_leggings|golden_leggings|iron_leggings|diamond_leggings|netherite_leggings|AIR].random>
        - if <[leggear]> !matches air:

            - define material <script[AllEnchants].data_key[Trims].get[Material].random>
            - define pattern <script[AllEnchants].data_key[Trims].get[Pattern].random>
            - if <util.random_chance[50]>:
                - equip <context.entity> legs:<[leggear]>
            - else:
                - equip <context.entity> legs:<item[<[leggear]>].with[trim=<map[material=<[Material]>;pattern=<[Pattern]>]>]>
                - if <util.random_chance[4]>:
                    - define modifier <util.random.int[1].to[5]>
                    - equip <context.entity> legs:<[leggear]>[enchantments=<script[AllEnchants].data_key[Enchants].get[Armor].random>,<[modifier]>]


        - define bootgear <list[leather_boots|chainmail_boots|golden_boots|iron_boots|diamond_boots|netherite_boots|AIR].random>
        - if <[bootgear]> !matches air:

            - define material <script[AllEnchants].data_key[Trims].get[Material].random>
            - define pattern <script[AllEnchants].data_key[Trims].get[Pattern].random>
            - if <util.random_chance[50]>:
                - equip <context.entity> boots:<[bootgear]>
            - else:
                - equip <context.entity> boots:<item[<[bootgear]>].with[trim=<map[material=<[Material]>;pattern=<[Pattern]>]>]>
                - if <util.random_chance[4]>:
                    - define modifier <util.random.int[1].to[5]>
                    - equip <context.entity> boots:<[bootgear]>[enchantments=<script[AllEnchants].data_key[Enchants].get[Armor].random>,<[modifier]>]

        - if <context.entity> matches husk|piglin|ZOMBIFIED_PIGLIN|piglin_brute|ZOMBIE_VILLAGER:
            - if <util.random_chance[10]>:
                - random:
                    - mount <context.entity>|chicken <context.location>
                    - mount <context.entity>|spider <context.location>


        - if <context.entity> matches stray:
            - if <util.random_chance[10]>:
                - random:
                    - mount stray|phantom <context.location>
                    - mount stray|chicken <context.location>
                    - mount stray|spider <context.location>
            - if <util.random_chance[8]>:
                - define modifier <util.random.int[1].to[5]>
                - equip <context.entity> hand:bow[enchantments=<script[AllEnchants].data_key[Enchants].get[bow].random>,<[modifier]>]
            - stop
        - if <context.entity> matches wither_skeleton:
            - if <util.random_chance[15]>:
                - random:
                    - mount wither_skeleton|phantom <context.location>
                    - mount wither_skeleton|chicken <context.location>
                    - mount wither_skeleton|spider <context.location>
                    - mount wither_skeleton|wither_skeleton <context.location>
            - if <util.random_chance[20]>:
                - define modifier <util.random.int[1].to[5]>
                - equip <context.entity> hand:bow[enchantments=<script[AllEnchants].data_key[Enchants].get[bow].random>,<[modifier]>]
                - stop
        - if <context.entity> matches Piglin && <util.random_chance[17]>:
            - equip <context.entity> hand:crossbow
            - if <util.random_chance[20]>:
                - define modifier <util.random.int[1].to[5]>
                - equip <context.entity> hand:crossbow[enchantments=<script[AllEnchants].data_key[Enchants].get[crossbow].random>,<[modifier]>]
            - stop

        - random:
            - random:
                - repeat 1:
                    - define sword <list[wooden_sword|stone_sword|golden_sword|iron_sword|diamond_sword|netherite_sword].random>
                    - equip <context.entity> hand:<[sword]>
                    - if <util.random_chance[18]>:
                        - equip <context.entity> offhand:shield
                        - cast slow <context.entity> duration:infinite amplifier:0
                    - else:
                        - cast speed <context.entity> duration:infinite amplifier:0
                    - if <util.random_chance[8]>:
                        - define modifier <util.random.int[1].to[5]>
                        - equip <context.entity> hand:<[sword]>[enchantments=<script[AllEnchants].data_key[Enchants].get[NormalMelee].random>,<[modifier]>]
            - random:
                - repeat 1:
                    - define Axe <list[wooden_axe|stone_axe|golden_axe|iron_axe|diamond_axe|netherite_axe].random>
                    - equip <context.entity> hand:<[Axe]>
                    - equip <context.entity> offhand:<[Axe]>
                    - if <util.random_chance[8]>:
                        - define modifier <util.random.int[1].to[5]>
                        - equip <context.entity> hand:<[Axe]>[enchantments=<script[AllEnchants].data_key[Enchants].get[NormalMelee].random>,<[modifier]>]
            - repeat 1:
                - equip <context.entity> hand:trident
                - if <util.random_chance[8]>:
                    - define modifier <util.random.int[1].to[5]>
                    - if <util.random_chance[75]>:
                        - equip <context.entity> hand:trident[enchantments=<script[AllEnchants].data_key[Enchants].get[Trident].random>,<[modifier]>]
                    - else:
                        - equip <context.entity> hand:trident[enchantments=<script[AllEnchants].data_key[Enchants].get[NormalMelee].random>,<[modifier]>]



OrcGruntSpearThrow:
    debug: false
    type: world
    events:
        on husk||ZOMBIFIED_PIGLIN||PIGLIN||WITHER_SKELETON||STRAY||PIGLIN_BRUTE|ZOMBIE_VILLAGER targets entity:
#        - if <context.target.is_player> && <context.entity.has_flag[Convert]>:
#            - determine passively cancelled
        - if <context.entity.item_in_hand> matches trident:
            - while <context.entity.location.distance[<context.target.location>]> >= 5 && <context.entity.location.distance[<context.target.location>]> <= 27 && <context.target.exists>:
                - wait 1s
                - if <context.entity.has_flag[Convert]> && <context.target.is_player>:
                    - determine cancelled
                - if <util.random_chance[15]> && <context.entity.can_see[<context.target>]>:
                    - shoot trident origin:<context.entity.eye_location> shooter:<context.entity> destination:<context.target.eye_location> speed:3 spread:5
                - else if <[loop_index]> <= 100:
                    - wait 3s
                - else:
                    - stop

ConvertAllyTarget:
    debug: false
    type: world
    events:
        on entity_flagged:Convert targets player:
        - determine passively cancelled
        - foreach <context.entity.location.find_entities[monster|npc].within[20]> as:entity:
            - if !<[entity].has_flag[Convert]> && <context.entity.location.find_entities[monster|npc].within[20].is_truthy>:
                - attack <context.entity> target:<[entity]>
                - determine <[entity]>
        - determine cancelled

ConvertAllyFriendly:
    debug: false
    type: world
    events:
        on entity_flagged:Convert targets entity:
        - ratelimit <context.entity> 2s
#            - if <context.target.has_flag[Convert]>:
#                - determine cancelled
#                - wait 1s
#            - wait 1s
#            - if <context.target.has_flag[Convert]> || <context.target.is_player>:
        - foreach <context.entity.location.find_entities[monster|npc].within[20]> as:entity:
            - if !<[entity].has_flag[Convert]> && !<[entity].is_player>:
                - determine <[entity]>

ConvertAllyHurtPlayer:
    debug: false
    type: world
    events:
        on entity_flagged:Convert damages player:
        - determine passively cancelled
        #- adjust <context.damager> last_hurt_by:<player>
        - define damagelocation <context.damager.location>
        - adjust <context.damager> invulnerable:true
        - teleport <context.damager> <context.damager.location.add[0,55,0]>
        - wait 3t
        - teleport <context.damager> <[damagelocation]>
        - wait 1t
        - adjust <context.damager> invulnerable:false
        - foreach <context.entity.location.find_entities[monster|npc].within[20]> as:entity:
            - if !<[entity].has_flag[Convert]> && <context.entity.location.find_entities[monster|npc].within[20].is_truthy>:
                - adjust <context.entity> last_hurt_by:<[entity]>
 #               - attack <context.entity> target:<[entity]>


ConvertAllyHurtAlly:
    debug: false
    type: world
    events:
        on entity_flagged:Convert damages monster:
        - if <context.entity.has_flag[Convert]>:
            - determine passively cancelled
            - define damagelocation <context.damager.location>
            - adjust <context.damager> invulnerable:true
            - teleport <context.damager> <context.damager.location.add[0,55,0]>
            - wait 3t
            - teleport <context.damager> <[damagelocation]>
            - adjust <context.damager> invulnerable:false
       # - hurt <context.damager> 0 source:<context.damager.location.find_players_within[20].random>
        #- adjust <context.damager> last_hurt_by:<player>
        - foreach <context.damager.location.find_entities[monster|npc].within[20]> as:entity:
            - if !<[entity].has_flag[Convert]> && !<[entity].is_player> && <context.entity.location.find_entities[monster|npc].within[20].is_truthy>:
                - adjust <context.damager> last_hurt_by:<[entity]>
            #    - attack <context.entity> target:<[entity]>
#OrcGruntAxeAttack:
#    type: world
#    events:
#        on husk||ZOMBIFIED_PIGLIN||PIGLIN damages entity with:*_axe:
#        - determine <context.damage.mul[1.1]>

PlayerStunAttack:
    debug: false
    type: world
    events:
        on player right clicks husk|stray|iron_golem|spider|creeper|ZOMBIFIED_PIGLIN|ZOMBIE_VILLAGER|PIGLIN|MAGMA_CUBE|WITHER_SKELETON|NPC|PIGLIN_BRUTE|DROWNED|ENDERMAN:
        - ratelimit <player> 2s
        - if <player.item_in_hand> matches iron_ingot || <player.item_in_offhand> matches iron_ingot:
            - stop
        - if ( <player.item_in_hand> matches AMETHYST_SHARD || <player.item_in_offhand> matches AMETHYST_SHARD || <player.item_in_hand> matches convertitem || <player.item_in_offhand> matches convertitem ) && ( !<context.entity.is_npc> ):
            - if <context.entity.has_flag[Convert]>:
                - hurt <util.random.int[1].to[6]> <context.entity>
                - heal <util.random.int[1].to[4]> <player>
                - wait 1t
                - if <context.entity.is_leashed>:
                    - leash cancel
                - else:
                    - leash <context.entity> holder:<player>
            - if <context.entity.is_inside_vehicle>:
                - flag <context.entity.vehicle> Convert
            - adjust <player> visible:false
            - adjust <context.entity> visible:false
            - flag <context.entity> Convert
            - narrate "<&9>Enemy converted!"
            - playsound sound:ITEM_TRIDENT_RETURN <player.location>
            - glow <context.entity> for:<player>
            - team name:blue add:<context.entity> color:blue
            - team name:blue add:<player>
            - follow followers:<context.entity> target:<player> speed:0.17 allow_wander no_teleport max:10
            - heal 1 <player>
           # - adjust <context.entity> glow_color:blue
            - foreach <context.entity.location.find_entities[monster|npc].within[35]> as:entity:
                - if !<[entity].has_flag[Convert]>:
                    - adjust <context.entity> last_hurt_by:<[entity]>
                    - adjust <context.entity> visible:true
                    - adjust <player> visible:true
                    - stop
            - adjust <player> visible:true
            - stop
        - if <context.entity.eye_location.facing[<player>]> && <context.entity.item_in_offhand> matches shield:
            - narrate "<&6>Stun failed! The enemy was facing the shield towards you!"
            - playsound sound:ITEM_SHIELD_BLOCK <context.entity.location>
            - stop
        - if <context.entity.has_flag[Blocking]>:
            - narrate "<&6>Stun failed! <context.entity.name> is currently blocking!"
            - flag <context.entity> Stun.Spam:++ expire:3m
            - stop
        - if <context.entity.is_inside_vehicle> && <context.entity.vehicle.is_living>:
            - narrate "<&6>Stun failed! The enemy is currently mounted!"
            - flag <context.entity> Stun.Spam:++ expire:3m
            - stop
        - if <context.entity.is_npc>:
            - if !<context.entity.has_trait[Sentinel]>:
                - stop
            - flag <context.entity> Stun.Spam:++ expire:3m
            - if <context.entity.flag[Stun.Spam]> > <context.entity.flag[Stun.Limit]>:
                - narrate "<&6>Stun failed! <context.entity.name> adapted to your stun! Use other <&9>diverse attacks!"
                - wait 0.3s
                - narrate "<&c><context.entity.name>: <script[allenchants].parsed_key[Quotes.Adapted].random>"
                - stop
        - narrate "<&b>Enemy Stunned!"
        - flag <context.entity> Stunned expire:8s
        - playsound sound:ENTITY_PLAYER_HURT_FREEZE <player.location> pitch:0.8
        - playeffect effect:BLOCK_DUST special_data:blue_ice <context.entity.location> offset:1 quantity:20
        - hurt 2 <context.entity> source:<player>
        - cast slow <context.entity> duration:8s amplifier:10
        - wait 1s
        - while <context.entity.is_spawned> && <context.entity.has_flag[Stunned]>:
            - playeffect effect:BLOCK_DUST special_data:blue_ice <context.entity.location> offset:1 quantity:20
            - wait 1s
 #       - flag <context.entity> Stunned:!
#        - cast jump <context.entity> duration:8s amplifier:128


PlayerShameNemesis:
    debug: false
    type: world
    events:
        on player damages npc_flagged:Stun.limit with:convertitem|AMETHYST_SHARD:
        - ratelimit <player> 2s
        - if <npc.health_percentage> <= 18:
            - narrate "<&b>You shamed <&4><npc.name><&b>!"
            - define Amount <util.random.int[1].to[3]>
            - repeat <[amount]>:
                - foreach <npc.list_flags> as:flags:
                    - if <[flags]> !matches Dagger|Stealth|Stun|Blocking|DashDamage|Stunned:
                        - flag <npc> <[flags]>:!
                        - foreach <npc.scripts.parse[name]> as:assignments:
                            - if <[flags]> matches <[assignments]>:
                                - assignment remove script:<[assignments]>
                        - narrate "<&4><npc.name> lost their <&e><[flags]> <&4>ability!" targets:<player>
                        - playsound sound:ENTITY_GHAST_HURT <npc.location> pitch:0.5
                        - foreach stop
            - flag <npc> Stun.Spam:0
            - flag <npc> Dagger.spam:0
            - flag <npc> Stealth.spam:0
            - playsound sound:ITEM_TOTEM_USE <npc.location> pitch:0.5
            - despawn <npc>
            - wait 1t
            - sidebar remove
        - else:
            - narrate "<&6>Unable to shame <&4><npc.name><&6>, their health is above 18%!"

StunStopTeleport:
    debug: false
    type: world
    events:
        on entity_flagged:Stunned teleports:
        - determine cancelled
        on ender_pearl hits entity:entity shooter:entity_flagged:Stunned:
        - determine cancelled

PlayerGetSkillPoint:
    debug: false
    type: world
    events:
        after player changes xp:
        - if <player.xp_level.mod[10]> == 0 && !<player.has_flag[XP]>:
            - flag <player> XP
            - flag <player> SkillPoints:++
            - narrate "<&b><&l>You just earned a Skill Point! Do /skilltree to spend it!"
        - else if <player.xp_level.mod[10]> != 0:
            - flag <player> XP:!


PlayerDoubleJump:
    debug: false
    type: world
    events:
        on player starts flying flagged:DoubleJump.enabled:
        - stop if:<player.gamemode.equals[survival].not>
        - determine passively cancelled
        - if <player.has_flag[Wraith.ShadowStrider.Attack.Impenetrable]>:
            - flag <player> Wraith.ShadowStrider.Attack.Impenetrable.Activated expire:0.3s
            - adjust <player> flying_fall_damage:true
        - else if <player.has_flag[Wraith.ShadowStrider.Attack.RightingReflex]>:
            - flag <player> Wraith.ShadowStrider.Attack.RightingReflex.Activated
            - adjust <player> flying_fall_damage:false

        - define potion_effect <player.effects_data.filter[starts_with[jump]]>
        - define potion_effect <[potion_effect].is_empty.if_true[0].if_false[<[potion_effect].after[jump,].before[,]>]>
        - define destination <player.location.add[<player.velocity.x>,<[potion_effect].mul[0.165].add[0.33]>,<player.velocity.z>]>

        - if <player.has_flag[Wraith.ShadowStrider.Attack.GreatHeights]>:
            - adjust <player> velocity:<player.location.direction.vector.div[1]>
            - flag <player> Wraith.ShadowStrider.Attack.RightingReflex.Activated:!
            - adjust <player> flying_fall_damage:true
        - else:
            - adjust <player> velocity:<player.location.direction.vector.div[1.5]>
        - playsound sound:ENTITY_ENDER_DRAGON_FLAP <player.location> pitch:1.1
        - playeffect effect:WHITE_ASH <player.location> quantity:300 offset:0.9
        - adjust <player> can_fly:false
        - waituntil <player.is_on_ground>
        - adjust <player> can_fly:true
        - adjust <player> flying_fall_damage:true
        after player starts flying flagged:Wraith.ShadowStrider.Attack.RightingReflex:
        - flag <player> Wraith.ShadowStrider.Attack.RightingReflex.Activated
        after player walks flagged:DoubleJump.enabled|!DoubleJump.can_fly:
        - ratelimit <player> 1t
        - stop if:<player.gamemode.equals[creative]>
        - stop if:<context.new_location.y.is_more_than_or_equal_to[<context.old_location.y>]>
        - flag <player> DoubleJump.can_fly
        - adjust <player> can_fly:false
        - waituntil <player.is_online.not.or[<player.is_spawned.and[<player.is_on_ground>]>]>
        - adjust <player> can_fly:<player.has_flag[DoubleJump]>
        - flag <player> DoubleJump.can_fly:!
        after player joins:
        - flag <player> DoubleJump.enabled
        - if !<player.has_flag[SkillPoints]>:
            - flag <player> SkillPoints:0
        - if !<player.has_flag[Combo]>:
            - flag <player> Combo:0
        - if !<player.has_flag[Might]>:
            - flag <player> Might:0
        after player equips elytra:
        - flag <player> DoubleJump.enabled:!
        - adjust <player> can_fly:false
        after player unequips elytra:
        - flag <player> DoubleJump.enabled
        - adjust <player> can_fly:true
        on player changes gamemode to spectator:
        - wait 2t
        - adjust <player> can_fly:true
        - adjust <player> flying:true
        on player flagged:Wraith.ShadowStrider.Attack.Impenetrable.Activated damaged:
        - playsound sound:ENTITY_ITEM_BREAK <player.location> pitch:1.5
        - narrate "<&1>Your Impenetrable ability blocked an attack!"
        - determine cancelled
        on player flagged:Wraith.ShadowStrider.Attack.RightingReflex.Activated damaged by FALL:
        - determine passively cancelled
        - narrate "<&3>Righting Reflex negated your fall damage!"
        - flag <player> Wraith.ShadowStrider.Attack.RightingReflex.Activated:!
        - adjust <player> can_fly:<player.has_flag[DoubleJump]>
 #           - adjust <player> can_fly:false


PlayerDaggerAttack:
    debug: false
    type: world
    events:
        after player right clicks block type:air with:!bow|trident|crossbow|*helmet|*chestplate|*leggings|*boots|*SHARD|convertitem|apple|*chicken|*steak|*porkchop|egg|snowball|enderpearl|*eye|*wood|*planks|*log|*block|*stone|ENDER_PEARL:
        - if <player.item_in_hand.material.is_edible>:
            - stop
        - if <player.has_flag[Wraith.BraceofDaggers.Attack.FleetingEdge]>:
            - ratelimit <player> 0.75s
        - else:
            - ratelimit <player> 1.5s
        - narrate "<&b>Dagger Shot!"
        - playsound sound:ITEM_TRIDENT_THROW <player.location> pitch:2
        - if <player.has_flag[Wraith.BraceofDaggers.Attack.TripleShot]>:
            - shoot spectral_arrow origin:<player.eye_location> shooter:<player> speed:1.1 spread:2 save:Dagger
            - flag <entry[Dagger].shot_entity> Dagger expire:25s
            - adjust <entry[Dagger].shot_entity> damage:1
            - adjust <entry[Dagger].shot_entity> pickup_status:DISALLOWED
            - playsound sound:ITEM_TRIDENT_THROW <player.location> pitch:2

            - wait 1t
            - shoot spectral_arrow origin:<player.eye_location.left> shooter:<player> speed:1.1 spread:2 save:Dagger
            - flag <entry[Dagger].shot_entity> Dagger expire:25s
            - adjust <entry[Dagger].shot_entity> damage:1
            - adjust <entry[Dagger].shot_entity> pickup_status:DISALLOWED
            - shoot spectral_arrow origin:<player.eye_location.right> shooter:<player> speed:1.1 spread:2 save:Dagger
            - flag <entry[Dagger].shot_entity> Dagger expire:25s
            - adjust <entry[Dagger].shot_entity> damage:1
            - adjust <entry[Dagger].shot_entity> pickup_status:DISALLOWED
            - adjust <entry[Dagger].shot_entity> pickup_status:DISALLOWED
            - playsound sound:ITEM_TRIDENT_THROW <player.location> pitch:2
            - playsound sound:ITEM_TRIDENT_THROW <player.location> pitch:2
        - else if <player.has_flag[Wraith.BraceofDaggers.Attack.Penetration]>:
            - shoot spectral_arrow origin:<player.eye_location> shooter:<player> speed:1.1 spread:2 save:Dagger script:DaggerPenetration
        - else:
            - ~shoot spectral_arrow origin:<player.eye_location> shooter:<player> speed:1.1 spread:2 save:Dagger
        - if <player.has_flag[Wraith.BraceofDaggers.Attack.Penetration]>:
            - adjust <entry[Dagger].shot_entity> pierce_level:5
        - flag <entry[Dagger].shot_entity> Dagger expire:25s
        - if <entry[Dagger].hit_entities.exists>:
            - flag <entry[Dagger].hit_entities> Dagger.Spam:++ expire:3m
        - adjust <entry[Dagger].shot_entity> damage:1
        - adjust <entry[Dagger].shot_entity> pickup_status:DISALLOWED

DaggerPenetration:
    type: task
    debug: false
    script:
    - adjust <[shot_entities]> pierce_level:5


BackStabAttack:
    debug: false
    type: world
    events:
        on player damages husk||ZOMBIFIED_PIGLIN||PIGLIN||WITHER_SKELETON||PIGLIN_BRUTE||NPC||DROWNED|ZOMBIE_VILLAGER:
        - if <context.entity.is_npc>:
            - if <npc.health_percentage> <= 18:
                - sidebar set title:<&e><&sp><context.entity.name><&sq>s<&sp>Abilities "values:<&a>HP: <&a><&o><npc.health.round>/<npc.health_max.round><&sp><&3><&n><&l>CAN<&sp>BE<&sp>SHAMED|<&b><&n>Abilities:" players:<player>
            - else:
                - sidebar set title:<&e><&sp><context.entity.name><&sq>s<&sp>Abilities "values:<&a>HP: <&a><&o><npc.health.round>/<npc.health_max.round>|<&b><&n>Abilities:" players:<player>
            - foreach <npc.list_flags> as:flags:
                - sidebar add "values:<&4><&l><[flags]>" players:<player>
            - foreach <npc.scripts> as:assignments:
                - if <npc.scripts.exists>:
                    - sidebar add "values:<&6><&l><[assignments]>" players:<player>
            - if <player.location.distance[<context.entity.location>]> >= 5:
                - wait 10s
                - sidebar remove
            - if <npc.owner.exists> && <npc.owner> == <player>:
                - determine cancelled
        - if <player.item_in_hand> matches bow:
            - stop
        - if <player.location.distance[<context.entity.location>]> >= 3.2:
            - stop
        - if <context.entity.item_in_hand> matches *_axe || <context.entity.item_in_offhand> matches shield:
            - if <context.entity.eye_location.facing[<player>]>:
                - if !<context.entity.has_flag[Stunned]>:
                    - narrate "Stun an <&a>axe-wielding/shield-bearing enemy <&c><&l>(right click) <&f>or <&c><&l>attack from behind <&f>to damage them!"
                    - flag <player> DamageAxeShieldFail:++ expire:3s
                    - if <player.flag[DamageAxeShieldFail]> >= 3:
                        - title "title:<&4>Right click them to stun." fade_in:0.7s fade_out:0.7s stay:1s
                    - if <util.random_chance[25]>:
                        - hurt 2 <player>
                    - if <context.entity.item_in_offhand> matches shield:
                        - animate <context.entity> animation:SHIELD_BLOCK
                        - playsound sound:ITEM_SHIELD_BLOCK <context.entity.location>
                        - determine cancelled
                    - if <context.entity.item_in_offhand> matches *_axe:
                        - playsound sound:BLOCK_ANVIL_PLACE <context.entity.location> pitch:1.5
                        - hurt 1 <player>



NemesisMake:
    debug: false
    type: world
    events:
        on player dies by:husk||stray||ZOMBIFIED_PIGLIN||PIGLIN||WITHER_SKELETON||DROWNED||PIGLIN_BRUTE|ZOMBIE_VILLAGER:
        - sidebar remove
        - flag <player> combo:0
        - announce "Death at <player.location.simple>"
        - create <context.damager.entity_type> <script[AllEnchants].data_key[Names].get[First].random><&sp><script[AllEnchants].data_key[Names].get[Last].random> <player.location> traits:Sentinel save:NCreate
        - flag server NemesisList:->:<entry[NCreate].created_npc>
        - if <context.damager.is_baby>:
            - adjust <entry[NCreate].created_npc> age:baby

        - equip <entry[NCreate].created_npc> head:<context.damager.equipment.get[4]>
        - equip <entry[NCreate].created_npc> legs:<context.damager.equipment.get[2]>
        - equip <entry[NCreate].created_npc> chest:<context.damager.equipment.get[3]>
        - equip <entry[NCreate].created_npc> boots:<context.damager.equipment.get[1]>



        - equip <entry[NCreate].created_npc> hand:<context.damager.item_in_hand>
        - equip <entry[NCreate].created_npc> offhand:<context.damager.item_in_offhand>
        - execute as_server "npc sel <entry[NCreate].created_npc.id>"
        - execute as_server "sentinel addtarget PLAYER"
        - execute as_server "sentinel respawntime 0"
        - execute as_server "sentinel enemydrops"
        - define health <util.random.decimal[20].to[40.5]>
        - execute as_server "sentinel health <[health]>"
        - define reach <util.random.decimal[2].to[4.5]>
        - execute as_server "sentinel reach <[reach]>"
        - execute as_server "sentinel range 55"
        - define attackrate <util.random.decimal[0.4].to[7.6]>
        - execute as_server "sentinel attackrate <[attackrate]> 'ranged'"
        - define attackrate <util.random.decimal[0.4].to[7.6]>
        - execute as_server "sentinel attackrate <[attackrate]>"
        - define speed <util.random.decimal[1].to[1.45]>
        - execute as_server "sentinel speed <[speed]>"

        - define accuracy <util.random.decimal[0].to[0.20]>
        - execute as_server "sentinel accuracy <[accuracy]>"

        #- execute as_server "sentinel addtarget NPC:Spawn_Protector"
        - execute as_server "sentinel chaseranged"
        - execute as_server "sentinel addtarget sbteam:blue"
        - if <util.random_chance[50]>:
            - despawn <entry[NCreate].created_npc>
        - if <util.random_chance[50]>:
            - execute as_server "sentinel addtarget NPC"
        - if ( <context.damager.item_in_hand> matches bow || <context.damager.item_in_hand> matches trident ) && ( <util.random_chance[75]> ):
            - define avoidrange <util.random.decimal[4].to[11]>
            - execute as_server "sentinel addavoid PLAYER"
            - execute as_server "sentinel avoidrange <[avoidrange]>"
            - execute as_server "sentinel runaway"

        - flag <entry[NCreate].created_npc> Stun.Limit:<util.random.int[2].to[10]>
        - flag <entry[NCreate].created_npc> Dagger.Limit:<util.random.int[2].to[10]>
        - flag <entry[NCreate].created_npc> Stealth.Limit:<util.random.int[2].to[10]>


        - flag server <entry[NCreate].created_npc>Hand:<context.damager.item_in_hand>
        - flag server <entry[NCreate].created_npc>OffHand:<context.damager.item_in_offhand>
        - flag server <entry[NCreate].created_npc>Helmet:<context.damager.equipment.get[4]>
        - flag server <entry[NCreate].created_npc>Leggings:<context.damager.equipment.get[2]>
        - flag server <entry[NCreate].created_npc>Chestplate:<context.damager.equipment.get[3]>
        - flag server <entry[NCreate].created_npc>Boots:<context.damager.equipment.get[1]>
        - assignment add BREAKBLOCKASSIGNMENT to:<entry[NCreate].created_npc>
        - assignment add PLAYERHIGHUPASSIGNMENT to:<entry[NCreate].created_npc>
        - assignment add PlaceBlockAssignment to:<entry[NCreate].created_npc>
        - if <context.damager.item_in_hand> matches bow || <context.damager.item_in_hand> matches trident:
            - assignment remove PLAYERHIGHUPASSIGNMENT to:<entry[NCreate].created_npc>
            - if <util.random_chance[20]>:
                - define weapon <list[wooden_sword|stone_sword|golden_sword|iron_sword|diamond_sword|netherite_sword|wooden_axe|stone_axe|golden_axe|iron_axe|diamond_axe|netherite_axe].random>
                - inventory set o:<[weapon]> slot:12 destination:<entry[NCreate].created_npc>
                - execute as_server "sentinel autoswitch"



        - define reroll <util.random.int[1].to[5]>
        - repeat <[reroll]>:
            - if <util.random_chance[60]>:
                - define Ability <script[AllEnchants].data_key[Abilities].get[Passive].random>
                - if <[Ability]> matches Totem && <context.damager.item_in_offhand> matches air:
                    - equip <entry[NCreate].created_npc> offhand:totem_of_undying
                - else if <[Ability]> matches Mounted && <entry[NCreate].created_npc.eye_location.find_blocks[air].within[2.5].size> >= 8 && <entry[NCreate].created_npc.eye_location.find_spawnable_blocks_within[2.5].size> >= 4:
                    - mount <entry[NCreate].created_npc>|<list[spider|chicken|ZOMBIE_HORSE|SKELETON_HORSE|HORSE].random> <entry[NCreate].created_npc.location>
                - else if <[Ability]> matches Sneaky:
                    - sneak <entry[NCreate].created_npc> fake
                - else if <[Ability]> matches NoKnockback:
                    - execute as_server "npc sel <entry[NCreate].created_npc>"
                    - execute as_server "sentinel knockback 'false'"
                - else if ( <[Ability]> matches ExplosiveShot ) && ( <context.damager.item_in_hand> matches bow || <context.damager.item_in_hand> matches trident ):
                    - flag <entry[NCreate].created_npc> <[Ability]>
                - else if <[Ability]> matches FastLearner:
                    - flag <entry[NCreate].created_npc> Stun.Limit:<entry[NCreate].created_npc.flag[Stun.Limit].div[2].round_down>
                    - flag <entry[NCreate].created_npc> Dagger.Limit:<entry[NCreate].created_npc.flag[Dagger.Limit].div[2].round_down>
                    - flag <entry[NCreate].created_npc> Stealth.Limit:<entry[NCreate].created_npc.flag[Stealth.Limit].div[2].round_down>

                - else if <[Ability]> matches BlindDamage || <[Ability]> matches HeavyHitter || <[Ability]> matches LifeSteal || <[Ability]> matches MiningFatigue || <[Ability]> matches GolemToss || <[Ability]> matches ShieldBreaker:
                    - equip <entry[NCreate].created_npc> hand:<entry[NCreate].created_npc.item_in_hand.with_flag[<[Ability]>]>
                    - equip <entry[NCreate].created_npc> hand:<entry[NCreate].created_npc.item_in_hand.with[lore=<[Ability]> on enemies]>
                    - flag server <entry[NCreate].created_npc>Hand:<entry[NCreate].created_npc.item_in_hand>
                - else if <[Ability]> matches ReinforcementMelee:
                    - assignment add ReinforcementMelee to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches ReinforcementRanged:
                    - assignment add ReinforcementRanged to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches ReinforcementWolves:
                    - assignment add ReinforcementWolves to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches Trapper:
                    - assignment add TrapperAssignment to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches OverwhelmingWill:
                    - assignment add OverwhelmingWill to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches Terrorize:
                    - assignment add Terrorize to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches BlockAttack:
                    - assignment add BlockAttack to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches LassoTarget:
                    - assignment add LassoTarget to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches ThrowEnderPearl:
                    - assignment add ThrowEnderPearl to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches SmokeBombs:
                    - assignment add SmokeBombs to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches ThrowingDaggers:
                    - assignment add ThrowingDaggers to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches FrontalRoar:
                    - assignment add FrontalRoar to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches GroundPound:
                    - assignment add GroundPound to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches LandMines:
                    - assignment add LandMineAssignment to:<entry[NCreate].created_npc>
                - else if <[Ability]> matches DashStrike:
                    - assignment add DashStrike to:<entry[NCreate].created_npc>
                - narrate "<&4> <entry[NCreate].created_npc.name> learned <&e><[Ability]>" targets:<player>
                - flag <entry[NCreate].created_npc> <[Ability]>


NemesisBuff:
    type: world
    debug: false
    events:
        on player|NPC dies by:NPC:
        - if <context.damager.has_flag[DontDelete]>:
            - stop
        - flag server NemesisList:->:<context.damager>

        - assignment add BREAKBLOCKASSIGNMENT to:<context.damager>
        - assignment add PlaceBlockAssignment to:<context.damager>
        - sidebar remove
        - flag <player> combo:0
        - flag <player> Might:0

        - if <context.damager.item_in_hand> matches *_sword||*_axe && <util.random_chance[50]> && <npc.item_in_hand.enchantment_map.is_truthy.not>:
            - define modifier <util.random.int[1].to[5]>
            - define RNGEnchant <script[AllEnchants].data_key[Enchants].get[NormalMelee].random>
            - equip <context.damager> hand:<context.damager.item_in_hand>[enchantments=<[RNGEnchant]>,<[modifier]>]
            - narrate "<&4><context.damager.name> got the enchant of <&e><[RNGEnchant]> <&4>with a level of <&e><[modifier]><&4> on their main hand!"
            - flag server <context.damager>Hand:<context.damager.item_in_hand>
        - if <context.damager.item_in_hand> matches bow && <util.random_chance[50]> && <npc.item_in_hand.enchantment_types.is_truthy.not>:
            - define modifier <util.random.int[1].to[5]>
            - define RNGEnchant <script[AllEnchants].data_key[Enchants].get[bow].random>
            - equip <context.damager> hand:<context.damager.item_in_hand>[enchantments=<[RNGEnchant]>,<[modifier]>]
            - narrate "<&4><context.damager.name> got the enchant of <&e><[RNGEnchant]> <&4>with a level of <&e><[modifier]><&4> on their main hand!"
            - flag server <context.damager>Hand:<context.damager.item_in_hand>
        - if <util.random_chance[50]> && <context.damager.equipment.get[3].enchantment_types.is_truthy.not>:
                - if <context.damager.equipment.get[3]> matches air:
                    - equip <context.damager> chest:<list[leather_chestplate|chainmail_chestplate|golden_chestplate|iron_chestplate|diamond_chestplate|netherite_chestplate|AIR].random>
                - define modifier <util.random.int[1].to[5]>
                - define RNGEnchant <script[AllEnchants].data_key[Enchants].get[Armor].random>
                - equip <context.damager> chest:<context.damager.equipment.get[3]>[enchantments=<[RNGEnchant]>,<[modifier]>]
                - narrate "<&4><context.damager.name> got the enchant of <&e><[RNGEnchant]> <&4>with a level of <&e><[modifier]><&4> on their chestplate!"
                - flag server <context.damager>Chestplate:<context.damager.equipment.get[3]>
        - if <util.random_chance[50]> && <context.damager.equipment.get[2].enchantment_types.is_truthy.not>:
                - if <context.damager.equipment.get[2]> matches air:
                    - equip <context.damager> legs:<list[leather_leggings|chainmail_leggings|golden_leggings|iron_leggings|diamond_leggings|netherite_leggings|AIR].random>
                - define modifier <util.random.int[1].to[5]>
                - define RNGEnchant <script[AllEnchants].data_key[Enchants].get[Armor].random>
                - equip <context.damager> legs:<context.damager.equipment.get[2]>[enchantments=<[RNGEnchant]>,<[modifier]>]
                - narrate "<&4><context.damager.name> got the enchant of <&e><[RNGEnchant]> <&4>with a level of <&e><[modifier]><&4> on their leggings!"
                - flag server <context.damager>Leggings:<context.damager.equipment.get[2]>
        - if <util.random_chance[50]> && <context.damager.equipment.get[4].enchantment_types.is_truthy.not>:
                - if <context.damager.equipment.get[4]> matches air:
                    - equip <context.damager> head:<list[leather_helmet|chainmail_helmet|golden_helmet|iron_helmet|diamond_helmet|netherite_helmet|creeper_head|zombie_head|piglin_head|dragon_head|skeleton_skull|wither_skeleton_skull|carved_pumpkin|player_head|air].random>
                - define modifier <util.random.int[1].to[5]>
                - define RNGEnchant <script[AllEnchants].data_key[Enchants].get[Armor].random>
                - equip <context.damager> head:<context.damager.equipment.get[4]>[enchantments=<[RNGEnchant]>,<[modifier]>]
                - narrate "<&4><context.damager.name> got the enchant of <&e><[RNGEnchant]> <&4>with a level of <&e><[modifier]><&4> on their helmet!"
                - flag server <context.damager>Helmet:<context.damager.equipment.get[4]>
        - if <util.random_chance[50]> && <context.damager.equipment.get[1].enchantment_types.is_truthy.not>:
                - if <context.damager.equipment.get[1]> matches air:
                     - equip <context.damager> boots:<list[leather_boots|chainmail_boots|golden_boots|iron_boots|diamond_boots|netherite_boots|AIR].random>
                - define modifier <util.random.int[1].to[5]>
                - define RNGEnchant <script[AllEnchants].data_key[Enchants].get[Armor].random>
                - equip <context.damager> boots:<context.damager.equipment.get[1]>[enchantments=<[RNGEnchant]>,<[modifier]>]
                - narrate "<&4><context.damager.name> got the enchant of <&e><[RNGEnchant]> <&4>with a level of <&e><[modifier]><&4> on their boots!"
                - flag server <context.damager>Boots:<context.damager.equipment.get[1]>

        - flag <context.damager> Blocking:!
        - flag <context.damager> DashDamage:!
        - define reroll <util.random.int[1].to[5]>
        - if <context.damager.list_flags.size> >= 10:
            - stop
        - repeat <[reroll]>:
            - if <util.random_chance[25]>:
                - define Ability <script[AllEnchants].data_key[Abilities].get[Passive].random>
                - if <[Ability]> matches Totem && <context.damager.item_in_offhand> matches air:
                    - equip <context.damager> offhand:totem_of_undying
                    - flag <context.damager> <[Ability]>
                - else if <[Ability]> matches Mounted && <context.damager.eye_location.find_blocks[air].within[2.5].size> >= 8 && <context.damager.eye_location.find_spawnable_blocks_within[2.5].size> >= 4:
                    - mount <context.damager>|<list[spider|chicken|ZOMBIE_HORSE|SKELETON_HORSE|HORSE].random> <context.damager.location>
                - else if <[Ability]> matches Sneaky:
                    - sneak <context.damager> fake
                    - flag <context.damager> <[Ability]>
                - else if <[Ability]> matches NoKnockback:
                    - execute as_server "npc sel <context.damager.id>"
                    - execute as_server "sentinel knockback 'false'"
                - else if ( <[Ability]> matches ExplosiveShot ) && ( <context.damager.item_in_hand> matches bow || <context.damager.item_in_hand> matches trident ):
                    - flag <context.damager> <[Ability]>
                - else if <[Ability]> matches FastLearner && !<context.damager.has_flag[FastLearner]>:
                    - flag <context.damager> Stun.Limit:<context.damager.flag[Stun.Limit].div[2].round_down>
                    - flag <context.damager> Dagger.Limit:<context.damager.flag[Dagger.Limit].div[2].round_down>
                    - flag <context.damager> Stealth.Limit:<context.damager.flag[Stealth.Limit].div[2].round_down>
                - else if <[Ability]> matches BlindDamage || <[Ability]> matches HeavyHitter || <[Ability]> matches LifeSteal || <[Ability]> matches MiningFatigue || <[Ability]> matches GolemToss || <[Ability]> matches ShieldBreaker:
                    - equip <context.damager> hand:<context.damager.item_in_hand.with_flag[<[Ability]>]>
                    - equip <context.damager> hand:<context.damager.item_in_hand.with[lore=<[Ability]> on enemies]>
                    - flag server <context.damager>Hand:<context.damager.item_in_hand>
                - else if <[Ability]> matches HighJumper:
                    - cast <npc> JUMP amplifier:1 duration:infinite
                - else if <[Ability]> matches FastMiner:
                    - cast <npc> FAST_DIGGING amplifier:2 duration:infinite
                - else if <[Ability]> matches ReinforcementMelee:
                    - assignment add ReinforcementMelee to:<context.damager>
                - else if <[Ability]> matches ReinforcementRanged:
                    - assignment add ReinforcementRanged to:<context.damager>
                - else if <[Ability]> matches ReinforcementWolves:
                    - assignment add ReinforcementWolves to:<context.damager>
                - else if <[Ability]> matches Trapper:
                    - assignment add TrapperAssignment to:<context.damager>
                - else if <[Ability]> matches OverwhelmingWill:
                    - assignment add OverwhelmingWill to:<context.damager>
                - else if <[Ability]> matches Terrorize:
                    - assignment add Terrorize to:<context.damager>
                - else if <[Ability]> matches BlockAttack:
                    - assignment add BlockAttack to:<context.damager>
                - else if <[Ability]> matches LassoTarget:
                    - assignment add LassoTarget to:<context.damager>
                - else if <[Ability]> matches ThrowEnderPearl:
                    - assignment add ThrowEnderPearl to:<context.damager>
                - else if <[Ability]> matches SmokeBombs:
                    - assignment add SmokeBombs to:<context.damager>
                - else if <[Ability]> matches ThrowingDaggers:
                    - assignment add ThrowingDaggers to:<context.damager>
                - else if <[Ability]> matches FrontalRoar:
                    - assignment add FrontalRoar to:<context.damager>
                - else if <[Ability]> matches GroundPound:
                    - assignment add GroundPound to:<context.damager>
                - else if <[Ability]> matches LandMines:
                    - assignment add LandMineAssignment to:<context.damager>
                - else if <[Ability]> matches DashStrike:
                    - assignment add DashStrike to:<context.damager>
                - flag <context.damager> <[Ability]>
                - narrate "<&4><context.damager.name> learned <&e><[Ability]>" targets:<player>
#            - if <context.damager.has_flag[PoisonDamage]> || <context.damager.has_flag[WitherDamage]> || <context.damager.has_flag[HungerDamage]> :
#                - stop
            - if <util.random_chance[20]>:
                - define Ability <list[PoisonDamage|WitherDamage|HungerDamage].random>
                - flag <context.damager> <[Ability]>
                - equip <context.damager> hand:<context.damager.item_in_hand.with_flag[<[Ability]>]>
                - equip <context.damager> hand:<context.damager.item_in_hand.with[lore=<[Ability]> on enemies]>
                - flag server <context.damager>Hand:<context.damager.item_in_hand>
                - narrate "<&4><context.damager.name> Learned <&e><[Ability]>!"
                - if <util.random_chance[30]> && <context.damager.has_flag[PoisonDamage]> && <context.damager.list_flags.size> < 10:
                    - assignment add PoisonBombAssignment to:<context.damager>
                    - narrate "<&4><context.damager.name> Learned <&e>Poison Bomb!"
                    - flag <context.damager> PoisonBomb
                - else if <util.random_chance[30]> && <context.damager.has_flag[WitherDamage]> && <context.damager.list_flags.size> <= 10:
                    - assignment add WitherBombAssignment to:<context.damager>
                    - narrate "<&4><context.damager.name> Learned <&e>Wither Bomb!"
                    - flag <context.damager> WitherBomb
                - else if <util.random_chance[30]> && <context.damager.has_flag[HungerDamage]> && <context.damager.list_flags.size> <= 10:
                    - assignment add HungerBombAssignment to:<context.damager>
                    - narrate "<&4><context.damager.name> Learned <&e>Hunger Bomb!"
                    - flag <context.damager> HungerBomb


PlayerCombo:
    debug: false
    type: world
    events:
        on player damages entity:
        - if <context.entity.is_player>:
            - stop
        - if <context.entity.has_flag[NoKnockback]>:
            - narrate "<&c><context.entity.name> Can't take knockback!"
        - if <context.entity.item_in_hand> matches *_axe || <context.entity.item_in_offhand> matches shield:
            - if <context.entity.eye_location.facing[<player>]> && <player.location.distance[<context.entity.location>]> <= 3.2:
                - if !<context.entity.has_flag[Stunned]>:
                    - determine cancelled
        - if <context.entity.is_npc> && <context.entity.has_trait[Sentinel]> && <context.entity.has_flag[Stealth.Limit]> && <context.entity.eye_location.facing[<player>].not> && <player.location.distance[<context.entity.location>]> <= 3.2 && <player.is_sneaking>:
            - flag <context.entity> Stealth.Spam:++ expire:3m
            - if <context.entity.flag[Stealth.Spam]> > <context.entity.flag[Stealth.Limit]> && <context.entity.eye_location.facing[<player>].not> && <player.location.distance[<context.entity.location>]> <= 3.2 && <player.is_sneaking>:
                - narrate "<&6>Stealth attack failed! <context.entity.name> adapted to your stealth attacks! Use other <&9>diverse attacks!"
                - look <context.entity> <player.eye_location> duration:0.5s
                - determine passively cancelled
                - wait 0.3s
                - narrate "<&c><context.entity.name>: <script[allenchants].parsed_key[Quotes.Adapted].random>"
                - determine cancelled
        - if <context.entity.eye_location.facing[<player>].not> && <player.location.distance[<context.entity.location>]> <= 3.2 && <player.is_sneaking>:
            - define StealthDamage <context.damage.mul[2]>
            - narrate "<&b>Enemy took 2x damage from stealth attack!"
        - flag <player> combo:++ expire:45s
        - if <player.flag[Might]> <= 24 || !<player.flag[Might].exists>:
            - flag <player> Might:++
        - if <player.has_flag[Combat.BetterMight.Attack.FlawlessCombo]> && <player.flag[Might]> <= 24:
            - flag <player> Might:++ expire:5m
        - bossbar Might players:<player> title:<&6><&l>Might color:yellow progress:<player.flag[Might].div[25]>
        - if <player.flag[Might]> == 25:
            - bossbar Might players:<player> "title:<&6><&l>Might Ready (right click ground with sword/axe or left click bow)" color:red progress:<player.flag[Might].div[25]>
        - actionbar "<&2>Combo damage: <&9><&l><player.flag[combo]> <&0><&l>| <&6>Might: <&l><player.flag[Might]><&c>/<&4><&l>25"
        - if <[StealthDamage].exists>:
            - determine <context.damage.add[<player.flag[combo]>].mul[0.45].add[<[StealthDamage]>]>
        - else:
            - determine <context.damage.add[<player.flag[combo]>].mul[0.45]>

PlayerComboLost:
    debug: false
    type: world
    events:
        on player flagged:combo damaged:
        - if <context.damager.exists> && ( <context.damager.has_flag[Stunned]> || <context.damager.has_flag[Blocking]> ):
            - stop
        - if <player.flag[Might]> >= 1 || <player.has_flag[Combat.BetterMight.Attack.GrimResolve]>:
            - if <player.has_flag[Combat.BetterMight.Attack.GrimResolve]> && <player.flag[Might]> <= 24:
                - flag <player> Might:++
            - else if <player.has_flag[Combat.BetterMight.Attack.FlawlessCombo]> || !<player.flag[Might].exists>:
                - flag <player> Might:0
            - else if <player.has_flag[Combat.BetterMight.Attack.GreatDefence]> && <context.damage_type_map.values.get[3].is_truthy> && <player.flag[Might]> <= 24:
                - flag <player> Might:++
            - else if <context.damage_type_map.values.get[3].is_truthy>:
                - stop
            - else if !<player.has_flag[Combat.BetterMight.Attack.GrimResolve]>:
                - flag <player> Might:--
        - if <player.flag[Might]> == 0:
            - bossbar Might players:<player> title:<&6><&l>Might color:yellow progress:0
        - else if <player.flag[Might]> == 25:
            - bossbar Might players:<player> "title:<&6><&l>Might Ready (right click ground with sword/axe or left click bow)" color:red progress:<player.flag[Might].div[25]>
        - else:
            - bossbar Might players:<player> title:<&6><&l>Might color:yellow progress:<player.flag[Might].div[25]>
        - flag <player> combo:0
        - actionbar "<&2>Combo damage: <&9><&l><player.flag[combo]> <&0><&l>| <&6>Might: <&l><player.flag[Might]><&c>/<&4><&l>25"
#PlayerGreatDefenceAbility:
#    debug: false
#    type: world
#    events:
#        on player flagged:Combat.BetterMight.Attack.GreatDefence damaged:
#        - if <context.damage_type_map.values.get[3].is_truthy> && <player.flag[Might]> <= 24:
#            - flag <player> Might:+:2
#            - if <player.flag[Might]> >= 26:
#                - flag <player> Might:--
#            - actionbar "<&2>Combo damage: <&9><&l><player.flag[combo]> <&0><&l>| <&6>Might: <&l><player.flag[Might]><&c>/<&4><&l>25"



PlayerAOEAttack:
    debug: false
    type: world
    events:
        after player right clicks block flagged:Might type:!air with:*sword|*axe:
        - if <player.flag[Might]> >= 25:
            - flag <player> Might:0
            - narrate "<&6>Used Might to hurt enemies around you!"
            - if <player.flag[Might]> == 0:
                - bossbar Might players:<player> title:<&6><&l>Might color:yellow progress:0
            - else:
                - bossbar Might players:<player> title:<&6><&l>Might color:yellow progress:<player.flag[Might].div[25]>

            - foreach <player.location.find_entities[!player].within[7]> as:entity:
                - playeffect effect:ANGRY_VILLAGER <[entity].location> quantity:8 offset:0.6
                - playsound sound:ENTITY_EVOKER_PREPARE_SUMMON <player.location> pitch:2
                - if <player.has_flag[Wraith.AOEAttack.Attack.AOEAttackFire]>:
                    - burn <[entity]> 6s
                - else if <player.has_flag[Wraith.AOEAttack.Attack.AOEAttackWither]>:
                    - cast Wither duration:12 amplifier:0 <[entity]>
                - else if <player.has_flag[Wraith.AOEAttack.Attack.AOEAttackFreeze]>:
                    - flag <[entity]> Stunned expire:8s
                    - cast slow duration:8s amplifier:10 <[entity]>
                    - playsound sound:ENTITY_PLAYER_HURT_FREEZE <[entity].location> pitch:0.8
                    - playeffect effect:BLOCK_DUST special_data:blue_ice <[entity].eye_location> offset:1 quantity:20
                - hurt 6 <[entity]> source:<player>
                - if <player.has_flag[Wraith.AOEAttack.Attack.AOEAttackPoison]>:
                    - if <[entity].is_monster> && <[entity].monster_type> matches undead:
                        - repeat 6:
                            - hurt 1 <[entity]> cause:magic
                            - wait 1s
                    - else:
                        - cast poison duration:8s amplifier:0 <[entity]>
        on player flagged:Might left clicks block with:bow|crossbow|trident:
        - if <player.flag[Might]> >= 25:
            - if !<player.has_flag[ExplosiveShot]>:
                - flag <player> ExplosiveShot
                - narrate "<&b>Explosive Shot enabled"
            - else:
                - flag <player> ExplosiveShot:!
                - narrate "<&b>Explosive Shot disabled"
        after arrow|trident hits shooter:PLAYER:
        - ratelimit <context.projectile> 5s
        - if !<context.shooter.has_flag[ExplosiveShot]>:
            - stop
        - flag <context.shooter> ExplosiveShot:!
        - flag <context.shooter> Might:0
        - narrate "<&b>Used Explosive Shot!" targets:<context.shooter>
        - bossbar Might players:<player> title:<&6><&l>Might color:yellow progress:<player.flag[Might].div[25]>
        - if <context.hit_entity.exists>:
            - foreach <context.hit_entity.location.find_entities[!player].within[8]> as:entity:
                - hurt 6 <[entity]> source:<context.shooter>
                - playeffect effect:ANGRY_VILLAGER <[entity].location> quantity:8 offset:0.6
                - playsound sound:ENTITY_EVOKER_PREPARE_SUMMON <[entity].location> pitch:2
                - if <player.has_flag[Ranged.ExplosiveShot.Attack.AOEAttackFire]>:
                    - burn <[entity]> 6s
                - else if <player.has_flag[Ranged.ExplosiveShot.Attack.AOEAttackWither]>:
                    - cast Wither duration:12 amplifier:0 <[entity]>
                - else if <player.has_flag[Ranged.ExplosiveShot.Attack.AOEAttackFreeze]>:
                    - flag <[entity]> Stunned expire:8s
                    - cast slow duration:8s amplifier:10 <[entity]>
                    - playsound sound:ENTITY_PLAYER_HURT_FREEZE <[entity].location> pitch:0.8
                    - playeffect effect:BLOCK_DUST special_data:blue_ice <[entity].eye_location> offset:1 quantity:20
                - if <player.has_flag[Ranged.ExplosiveShot.Attack.AOEAttackPoison]>:
                    - if <[entity].is_monster> && <[entity].monster_type> matches undead:
                        - repeat 6:
                            - hurt 1 <[entity]> cause:magic
                            - wait 1s
                    - else:
                        - cast poison duration:8s amplifier:0 <[entity]>
        - else:
            - foreach <context.hit_block.find_entities[!player].within[8]> as:entity:
                - hurt 6 <[entity]> source:<context.shooter>
                - playeffect effect:ANGRY_VILLAGER <[entity].location> quantity:8 offset:0.6
                - playsound sound:ENTITY_EVOKER_PREPARE_SUMMON <[entity].location> pitch:2
                - if <player.has_flag[Ranged.ExplosiveShot.Attack.AOEAttackFire]>:
                    - burn <[entity]> 6s
                - else if <player.has_flag[Ranged.ExplosiveShot.Attack.AOEAttackWither]>:
                    - cast Wither duration:12 amplifier:0 <[entity]>
                - else if <player.has_flag[Ranged.ExplosiveShot.Attack.AOEAttackFreeze]>:
                    - flag <[entity]> Stunned expire:8s
                    - cast slow duration:8s amplifier:10 <[entity]>
                    - playsound sound:ENTITY_PLAYER_HURT_FREEZE <[entity].location> pitch:0.8
                    - playeffect effect:BLOCK_DUST special_data:blue_ice <[entity].eye_location> offset:1 quantity:20
                - if <player.has_flag[Ranged.ExplosiveShot.Attack.AOEAttackPoison]>:
                    - if <[entity].is_monster> && <[entity].monster_type> matches undead:
                        - repeat 6:
                            - hurt 1 <[entity]> cause:magic
                            - wait 1s
                    - else:
                        - cast poison duration:8s amplifier:0 <[entity]>


PlayerElementAttacks:
    debug: false
    type: world
    events:
        on player damages entity with:item_flagged:PoisonDamage:
        - cast poison duration:8s <context.entity> amplifier:0
        on player damages entity with:item_flagged:WitherDamage:
        - cast wither duration:8s <context.entity> amplifier:0
        on player damages entity with:item_flagged:HungerDamage:
        - cast hunger duration:8s <context.entity> amplifier:0
        on player damages entity with:item_flagged:BlindDamage:
        - cast blindness duration:8s <context.entity> amplifier:0
        on player damages entity with:item_flagged:MiningFatigue:
        - cast SLOW_DIGGING duration:8s <context.entity> amplifier:0
        on player damages entity with:item_flagged:LifeSteal:
        - heal <context.final_damage> <player>
        on player damages entity with:item_flagged:HeavyHitter:
        - define yaw <util.random.decimal[-65].to[65]>
        - define pitch <util.random.decimal[-36].to[36]>
        - rotate <context.entity> yaw:<[yaw]> pitch:<[pitch]> duration:0.3s frequency:10t
        on player damages player with:item_flagged:ShieldBreaker:
        - if <context.damage_type_map.values.get[3]> <= 0.1 && <context.damage_type_map.values.get[3].is_truthy>:
            - define ShieldDamage <util.random.int[8].to[50]>
            - if <context.entity.item_in_hand> matches shield:
                - inventory adjust slot:hand durability:<context.entity.item_in_hand.durability.add[<[ShieldDamage]>]>
            - else:
                - inventory adjust slot:offhand durability:<context.entity.item_in_offhand.durability.add[<[ShieldDamage]>]>
            - ratelimit <context.entity> 2s
            - narrate "<&c><context.damager.name> is doing massive damage to your shield!" targets:<context.damager>|<context.entity>
        after player damages entity with:item_flagged:GolemToss:
        - adjust <context.entity> velocity:0,1.0,0
        - playsound sound:ENTITY_IRON_GOLEM_ATTACK <context.entity.location> pitch:1

NemesisHealthBar:
    debug: false
    type: world
    events:
        after NPC_flagged:!Sneaky damaged:
        - if <npc.exists> && <npc.has_trait[Sentinel]>:
            - adjust <npc> hologram_lines:<&4><&l>❤<&sp><&6><&l><npc.health.round>/<npc.health_max.round>
#        - ratelimit <npc> 8s
#        - while <npc.health> <= <npc.health_max>:
#            - if <[loop_index]> >= 25:
#                - stop
#            - adjust <npc> hologram_lines:<&6><&l>❤<&sp><npc.health.round>/<npc.health_max.round>
#            - wait 1.1s
        after NPC_flagged:!Sneaky heals:
        - if <npc.exists> && <npc.has_trait[Sentinel]>:
            - adjust <npc> hologram_lines:<&4><&l>❤<&sp><&6><&l><npc.health.round>/<npc.health_max.round>

NemesisRangedDamageWithMelee:
    debug: false
    type: world
    events:
        on NPC_flagged:Stun.Limit damages entity with:*axe|*sword:
        - if <npc.inventory.contains_item[trident]>:
            - determine <context.final_damage.div[1.5]>
        - else if <npc.inventory.contains_item[bow|crossbow]>:
            - determine <context.final_damage.div[2]>



NemesisLassoEntity:
  type: entity
  entity_type: arrow

NemesisLassoHit:
    debug: false
    type: world
    events:
        on NemesisLassoEntity hits entity:entity:
        - narrate "<&c><context.shooter.name>'s lasso is reeling you in!"
        - push <context.hit_entity> origin:<context.hit_entity> destination:<context.shooter.location> speed:0.6 duration:1.3s
        - playsound sound:ENTITY_MINECART_RIDING <context.shooter.location> pitch:1 volume:2
        - if <context.hit_entity.has_flag[rope]> && <context.hit_entity.flag[rope].is_truthy>:
            - remove <context.hit_entity.flag[rope]>
        on NemesisLassoEntity spawns:
        - glow <context.entity>
        on NemesisLassoEntity damages entity:
        - determine <context.final_damage.div[3]>



NemesisCombo:
    debug: false
    type: world
    events:
        on NPC_flagged:Combo damages entity:
        - if <npc.has_flag[Stunned]>:
            - stop
        - flag <npc> Combo:++ expire:45s
        - foreach <npc.location.find_players_within[25]> as:p:
            - narrate "<&c><npc.name> combo damage multiplier is: <&4><&l><npc.flag[Combo]>" targets:<[p]>
        - determine <context.damage.add[<npc.flag[Combo]>].mul[0.5]>
        on NPC_flagged:Combo damaged:
        - flag <context.entity> Combo:0
        - foreach <context.entity.location.find_players_within[25]> as:p:
            - ratelimit <[p]> 4s
            - narrate "<&c><context.entity.name> lost their combo!"


NemesisPoisonAttack:
    debug: false
    type: world
    events:
        on NPC_flagged:PoisonDamage damages entity:
        - if <npc.has_flag[Stunned]> || ( <context.entity.is_player> && <context.damage_type_map.values.get[3]> <= 0.1 && <context.damage_type_map.values.get[3].is_truthy> ):
            - stop
        - cast poison <context.entity> amplifier:0 duration:8s

NemesisBlindAttack:
    debug: false
    type: world
    events:
        on NPC_flagged:BlindDamage damages entity:
        - if <npc.has_flag[Stunned]> || ( <context.entity.is_player> && <context.damage_type_map.values.get[3]> <= 0.1 && <context.damage_type_map.values.get[3].is_truthy> ):
            - stop
        - cast blindness <context.entity> amplifier:0 duration:8s

NemesisMiningFatigueAttack:
    debug: false
    type: world
    events:
        on NPC_flagged:MiningFatigue damages entity:
        - if <npc.has_flag[Stunned]> || ( <context.entity.is_player> && <context.damage_type_map.values.get[3]> <= 0.1 && <context.damage_type_map.values.get[3].is_truthy> ):
            - stop
        - cast SLOW_DIGGING <context.entity> amplifier:0 duration:8s

NemesisBlocking:
    debug: false
    type: world
    events:
        on NPC_flagged:Blocking damages entity:
        - determine cancelled
        on entity damages NPC_flagged:Blocking:
        - if <context.entity.eye_location.facing[<context.damager>]> && <context.entity.location.distance[<context.damager.location>]> <= 3:
            - determine passively cancelled
            - narrate "<&c><context.entity.name> is blocking and can't be damaged!"


NemesisAntiBoatMount:
    debug: false
    type: world
    events:
        on NPC_flagged:AntiBoatMount enters boat:
        - determine passively cancelled
        - foreach <npc.location.find_players_within[15]> as:p:
            - ratelimit <[p]> 15s
            - narrate "<&c><npc.name> won't mount boats!" targets:<[p]>

NemesisShieldBreaker:
    debug: false
    type: world
    events:
        on player damaged by NPC_flagged:ShieldBreaker:
        - if <context.damager.has_flag[Stunned]>:
            - stop
        - if <context.damage_type_map.values.get[3]> <= 0.1 && <context.damage_type_map.values.get[3].is_truthy>:
            - define ShieldDamage <util.random.int[8].to[50]>
            - if <player.item_in_hand> matches shield:
                - inventory adjust slot:hand durability:<player.item_in_hand.durability.add[<[ShieldDamage]>]>
            - else:
                - inventory adjust slot:offhand durability:<player.item_in_offhand.durability.add[<[ShieldDamage]>]>
            - ratelimit <player> 2s
            - narrate "<&c><context.damager.name> is doing massive damage to your shield!"


NemesisArrowProof:
    debug: false
    type: world
    events:
        on NPC_flagged:ArrowProof damaged by *arrow|arrow*:
        - determine passively cancelled
        - foreach <npc.location.find_players_within[25]> as:p:
            - ratelimit <[p]> 2s
            - narrate "<&c><npc.name> is immune to arrows!" targets:<[p]>

NemesisDaggerAdapt:
    debug: false
    type: world
    events:
        on spectral_arrow hits entity:NPC:
#        - if !<context.projectile.has_flag[Dagger]>:
#            - stop
#        - announce test
#        - flag <context.hit_entity> DaggerSpam:++ expire:3m
        - if <context.shooter.exists> && <context.shooter.has_flag[Wraith.BraceofDaggers.Attack.Penetration]>:
            - flag <context.hit_entity> Dagger.Spam:++ expire:3m
        - if <context.hit_entity.flag[Dagger.Spam]> > <context.hit_entity.flag[Dagger.Limit]>:
            - determine passively cancelled
            - foreach <context.hit_entity.location.find_players_within[25]> as:__player:
                - ratelimit <player> 2s
                - narrate "<&6>Dagger attack failed! <context.hit_entity.name> adapted to your daggers! Use other <&9>diverse attacks!" targets:<player>
                - wait 0.3s
                - narrate "<&c><context.hit_entity.name>: <script[allenchants].parsed_key[Quotes.Adapted].random>" targets:<player>

NemesisExplosiveShot:
    debug: false
    type: world
    events:
        after arrow*|*arrow|trident hits shooter:NPC_flagged:ExplosiveShot:
        - ratelimit <context.projectile> 5s
        - if <context.shooter.has_flag[Stunned]>:
            - determine cancelled
        - if <util.random_chance[33]>:
            - stop
        - if <context.hit_entity.exists>:
            - explode <context.hit_entity.location> power:1 breakblocks source:<context.shooter>
        - else:
            - explode <context.hit_block> power:1 breakblocks source:<context.shooter>


NemesisWitherAttack:
    debug: false
    type: world
    events:
        on NPC_flagged:WitherDamage damages entity:
        - if <npc.has_flag[Stunned]> || ( <context.entity.is_player> && <context.damage_type_map.values.get[3]> <= 0.1 && <context.damage_type_map.values.get[3].is_truthy> ):
            - stop
        - cast wither <context.entity> amplifier:0 duration:8s

NemesisHungerAttack:
    debug: false
    type: world
    events:
        on NPC_flagged:HungerDamage damages entity:
        - if <npc.has_flag[Stunned]> || ( <context.entity.is_player> && <context.damage_type_map.values.get[3]> <= 0.1 && <context.damage_type_map.values.get[3].is_truthy> ):
            - stop
        - cast hunger <context.entity> amplifier:0 duration:8s

NemesisLifeSteal:
    debug: false
    type: world
    events:
        on NPC_flagged:LifeSteal damages entity:
        - if <npc.has_flag[Stunned]> || ( <context.entity.is_player> && <context.damage_type_map.values.get[3]> <= 0.1 && <context.damage_type_map.values.get[3].is_truthy> ):
            - stop
        - heal <context.final_damage> <npc>
        - foreach <npc.location.find_players_within[15]> as:p:
            - ratelimit <[p]> 15s
            - narrate "<&c><npc.name> is healing from the damage it deals!" targets:<[p]>


NemesisHeavyHitter:
    debug: false
    type: world
    events:
        on NPC_flagged:HeavyHitter damages entity:
        - if <npc.has_flag[Stunned]>:
            - stop
        - define yaw <util.random.decimal[-65].to[65]>
        - define pitch <util.random.decimal[-36].to[36]>
        - rotate <context.entity> yaw:<[yaw]> pitch:<[pitch]> duration:0.3s frequency:10t

NemesisGolemToss:
    debug: false
    type: world
    events:
        after NPC_flagged:GolemToss damages entity:
        - if <npc.has_flag[Stunned]>:
            - stop
        - adjust <context.entity> velocity:0,1.0,0
        - playsound sound:ENTITY_IRON_GOLEM_ATTACK <context.entity.location> pitch:1

NemesisFireImmune:
    debug: false
    type: world
    events:
        on NPC_flagged:ImmuneFire damaged by FIRE||FIRE_TICK:
        - determine passively cancelled
        - foreach <npc.location.find_players_within[15]> as:p:
            - ratelimit <[p]> 15s
            - narrate "<&c><npc.name> is immune to fire damage!" targets:<[p]>

NemesisDrowningImmune:
    debug: false
    type: world
    events:
        on NPC_flagged:ImmuneDrowning damaged by DROWNING:
        - determine passively cancelled
        - foreach <npc.location.find_players_within[15]> as:p:
            - ratelimit <[p]> 15s
            - narrate "<&c><npc.name> can't drown!" targets:<[p]>

NemesisAvoidDrowning:
    debug: false
    type: world
    events:
        on NPC_flagged:!ImmuneDrowning damaged by DROWNING chance:90:
        - ratelimit <npc> 3s
        - if <npc.location.find_spawnable_blocks_within[17].size> >= 1:
            - ~walk <npc> <npc.location.find_spawnable_blocks_within[17].random>



NemesisFireExtinguish:
    debug: false
    type: world
    events:
        after NPC_flagged:!ImmuneFire damaged by FIRE|FIRE_TICK|LAVA chance:80:
        #- ratelimit <npc> 8s
        - if <npc.health_percentage> <= 78:
            - foreach <npc.location.find_blocks[water].within[16]> as:b:
                - if <[b].is_truthy> && <npc.location.find_path[<[b]>].is_truthy>:
                    - ~walk <npc> <[b]>
                    - stop
            - foreach <npc.location.find_blocks[!air|water|lava].within[16]> as:b:
                - if <[b].is_truthy> && <npc.location.find_path[<[b]>].is_truthy> && <[b].above> matches air:
                    - ~walk <npc> <[b]>
                    - stop

NemesisFreezingInSnow:
    debug: false
    type: world
    events:
        after NPC_flagged:!Stunned damaged by FREEZE chance:90:
        - if <npc.eye_location> matches powder_snow:
            - ~break <npc.eye_location>
        - if <npc.location> matches powder_snow:
            - ~break <npc.location>

NemesisRunAwayCreeper:
    debug: false
    type: world
    events:
        on creeper explosion primes chance:90:
        - foreach <context.entity.location.find_npcs_within[8]> as:__npc:
            - ratelimit <npc> 6s
            - execute as_server "sentinel addavoid creeper --id <npc.id>"
            - wait 6s
            - execute as_server "sentinel removeavoid creeper --id <npc.id>"


NemesisNoFallDamage:
    debug: false
    type: world
    events:
        on NPC_flagged:NoFallDamage damaged by FALL:
        - determine passively cancelled
        - foreach <npc.location.find_players_within[15]> as:p:
            - ratelimit <[p]> 15s
            - narrate "<&c><npc.name> is immune to fall damage!" targets:<[p]>

NemesisSneaky:
    type: world
    debug: false
    events:
        on NPC spawns:
        - if <npc.item_in_hand> matches *sword:
            - cast SPEED amplifier:0 duration:infinite <npc>
        - else if <npc.item_in_offhand> matches shield:
            - cast slow amplifier:0 duration:infinite <npc>
        - if <npc.has_flag[Sneaky]>:
            - wait 0.1s
            - if <util.random_chance[90]>:
                - sneak <npc> fake
        - wait 1t
        - if <npc.has_flag[HighJumper]>:
            - cast JUMP amplifier:1 duration:infinite <npc>
        - if <npc.has_flag[FastMiner]>:
            - cast FAST_DIGGING amplifier:2 duration:infinite <npc>
        - if <npc.has_flag[Totem]> && <npc.item_in_offhand> matches air:
            - equip <npc> offhand:totem_of_undying
        - if <npc.has_flag[Mounted]> && <util.random_chance[90]> && <context.location.find_spawnable_blocks_within[2.5].size> >= 4 && <context.location.above[1].find_blocks[air].within[2.5].size> >= 8:
            - mount <npc>|<list[spider|chicken|ZOMBIE_HORSE|SKELETON_HORSE|HORSE].random> <context.location> save:Mount
            - adjust <npc.vehicle> owner:<npc>
            - if <npc.vehicle.entity_type> != chicken && <npc.vehicle.entity_type> != spider:
                - cast SPEED amplifier:<util.random.int[1].to[4]> duration:1000000s <npc.vehicle>
                - run NemesisMounted def:<npc>

NemesisMounted:
    type: task
    debug: false
    definitions: <npc>
    script:
        - while <npc.is_spawned>:
            - if <util.random_chance[14]> && !<npc.has_flag[Stunned]> && !<npc.is_inside_vehicle>:
                - foreach <npc.location.find_entities[spider|chicken|ZOMBIE_HORSE|SKELETON_HORSE|HORSE].within[3.5]> as:Mount:
                    - if <npc.can_see[<[Mount]>]> && <[Mount].eye_location.above.find_blocks[air].within[1].size> >= 2:
                        - mount <npc>|<[Mount]>
                        - foreach stop
            - wait 1s

NemesisDashStrike:
    type: task
    debug: false
    definitions: <npc>
    script:
        - while <npc.has_flag[DashStrike.Attack]>:
            - foreach <npc.location.find.living_entities.within[6]> as:entity:
                - if <[entity]> != <npc>:
                    - flag <[entity]> DashDamage expire:8s
                    - playeffect effect:FIREWORKS_SPARK <[entity].location> quantity:20
                    - foreach next
            - wait 0.007s



NemesisNoSuffocate:
    type: world
    debug: false
    events:
        on NPC damaged by SUFFOCATION chance:90:
        - ratelimit <npc> 4s
        - ~break <npc.eye_location>

NemesisFightingQuote:
    type: world
    debug: false
    events:
        after Sentinel npc attacks entity:player chance:1:
        - if <npc.entity_type> != PLAYER:
            - narrate "<&c><npc.name>: <script[allenchants].parsed_key[Quotes.Fighting].random>"

NemesisGenericAttack:
    type: world
    debug: false
    events:
        on sentinel npc attacks:
        - ratelimit <npc> 4t
        - if <npc.has_flag[Stun]>:
            - flag server <npc>target:<npc.sentinel.chasing> expire:5s
        on sentinel npc has no more targets:
        - if <npc.has_flag[Stun]>:
            - flag server <npc>target:!


NemesisDie:
    type: world
    debug: true
    events:
        on NPC dies:
        - if <npc.has_flag[DontDelete]>:
            - stop
        - if <context.damager.exists>:
            - announce "<npc.name> died by <context.damager.name>"
        - else:
            - announce "<npc.name> died by <context.cause>"
        - if <npc.has_flag[CheatsDeath]>:
            - random:
                - drop <server.flag[<npc>Hand]>|<server.flag[<npc>Offhand]>|<server.flag[<npc>Helmet]>|<server.flag[<npc>Chestplate]>|<server.flag[<npc>Leggings]>|<server.flag[<npc>Boots]> <npc.location>
                - drop <server.flag[<npc>Hand]> <NPC.location>
                - drop <list[<server.flag[<npc>Hand]>|<server.flag[<npc>Offhand]>|<server.flag[<npc>Helmet]>|<server.flag[<npc>Chestplate]>|<server.flag[<npc>Leggings]>|<server.flag[<npc>Boots]>].random> <npc.location>
            - despawn <npc>
            - if <util.random_chance[50]>:
                - flag <npc> CheatsDeath:!
            - stop
#        - flag server NemesisList:<-:<npc>
        - flag server NemesisList:<server.flag[NemesisList].exclude[<npc>]>
#        - foreach <server.flag[NemesisList]> as:NPC:
#            - if !<[NPC].exists>:
#                - flag server NemesisList:<server.flag[NemesisList].exclude[<[NPC]>]>

        - if <context.damager.is_player>:
            - sidebar remove players:<context.damager>
        - drop <npc.item_in_hand>
        - random:
            - drop <server.flag[<npc>Hand]>|<server.flag[<npc>Offhand]>|<server.flag[<npc>Helmet]>|<server.flag[<npc>Chestplate]>|<server.flag[<npc>Leggings]>|<server.flag[<npc>Boots]> <npc.location>
            - drop <server.flag[<npc>Hand]> <NPC.location>
            - drop <list[<server.flag[<npc>Hand]>|<server.flag[<npc>Offhand]>|<server.flag[<npc>Helmet]>|<server.flag[<npc>Chestplate]>|<server.flag[<npc>Leggings]>|<server.flag[<npc>Boots]>].random> <npc.location>
#            - announce <context.drops>
        - wait 1t
        - flag server <npc>Hand:!
        - flag server <npc>OffHand:!
        - flag server <npc>Helmet:!
        - flag server <npc>Leggings:!
        - flag server <npc>Chestplate:!
        - flag server <npc>Boots:!
        - flag server <npc>target:!
        - foreach <npc.list_flags> as:removeflags:
            - flag <npc> <[removeflags]>:!
        - determine passively <npc.inventory.list_contents>
        - remove <npc>
#        - flag server OffHand<npc.id>:!
#        - flag server Helmet<npc.id>:!
#        - flag server Leggings<npc.id>:!
#        - flag server Chestplate<npc.id>:!
#        - flag server Boots<npc.id>:!


NemesisExplodeOnDie:
    type: world
    events:
        on NPC_flagged:ExplodeOnDie dies:
        - define loc <npc.location>
        - define tntammount <util.random.int[1].to[5]>
        - repeat <[tntammount]>:
            - spawn primed_tnt <[loc]>
            - wait 0.15s

NemesisBadOmenOnDie:
    type: world
    events:
        on NPC_flagged:BadOmen dies:
        - if <context.damager.exists>:
            - cast bad_omen amplifier:0 duration:infinite <context.damager>
            - narrate "<&c><context.damager.name> got Bad Omen from killing <npc.name>!"


PlayerBlockPlace:
    type: world
    debug: false
    events:
        on player places block:
        - flag <context.location> BlockPlaced expire:70s

PlayerBlockBreak:
    type: world
    debug: false
    events:
        on player breaks block:
        - flag <context.location> BlockPlaced:!


NemesisTarget:
    debug: false
    type: world
    events:
        after NPC pathfinds:
        - if <context.entity.has_flag[Stunned]>:
            - stop
        - ratelimit <context.entity> 5s
        - wait 1s
        - if <context.entity.item_in_hand> matches *_axe:
            - define rchance 66
        - if <context.entity.item_in_offhand> matches shield:
            - define rchance 33
        - else:
            - define rchance 50
        - if <util.random_chance[<[rchance]>]>:
            - random:
                - adjust <context.entity> velocity:0,0.55,0
                - adjust <context.entity> velocity:<context.entity.location.direction.vector>
            - wait 4s
        - else:
            - stop

NemesisSpawn:
    type: world
    debug: false
    events:
        on system time secondly every:1:
        - foreach <server.online_players> as:p:
            - if <util.random_chance[0.2]> && <[p].gamemode> == SURVIVAL && !<[p].has_flag[NemesisNear]>:
                - define px <util.random.int[-25].to[25]>
                - define py <util.random.int[-12].to[12]>
                - define pz <util.random.int[-25].to[25]>
                - while !<[p].location.add[<[px]>,<[py]>,<[pz]>].is_spawnable> && <[p].location.add[<[px]>,<[py].add[1]>,<[pz]>]> !matches air:
                    - define px <util.random.int[-25].to[25]>
                    - define py <util.random.int[-12].to[12]>
                    - define pz <util.random.int[-25].to[25]>
                - if <server.flag[NemesisList].exists> && <server.flag[NemesisList].size> >= 1:
                    - define RandomNemesis:<server.flag[NemesisList].random>
                    - despawn <[RandomNemesis]>
                    - wait 1t
                    - spawn <[RandomNemesis]> <[p].location.add[<[px]>,<[py]>,<[pz]>]>
                    - narrate "<&c>Careful <[p].name>! A Nemesis has spawned near you!" targets:<[p]>
                - else:
                    - narrate "<&4>There are no Nemeses in the database. Die to husk/stray/drowned/wither skeleton/piglin/pigman type mobs to generate a Nemesis!" targets:<[p]>
            - ratelimit <[p]> 10s
            - if <[p].location.find_npcs_within[22].size> == 0:
                - sidebar remove
#                - flag <player> NemesisNear expire:2m

ConvertItem:
    type: item
    material: AMETHYST_SHARD
    display name: <&9><&l>The Ring
    lore:
     - <&9>Right click monsters with this
     - <&9>To convert them to your side
     - <&1>Left click Nemeses when they have
     - <&1>less than 18% HP to shame them
     - <&1>Shamed Nemeses lose abilities

TrapItem:
    type: item
    material: POINTED_DRIPSTONE
    display name: <&4><&l>TRAP
    lore:
     - <&4>PICKING THIS ITEM UP GIVES
     - <&4>YOU SLOWNESS

LandMineItem:
    type: item
    material: HEART_OF_THE_SEA
    display name: <&8><&l>LANDMINE
    lore:
     - <&8>PICKING THIS ITEM UP
     - <&8>WILL EXPLODE YOU


PlayerPickupTrap:
    debug: false
    type: world
    events:
        after player picks up TrapItem:
        - narrate "<&4>You picked up a TRAP! <&8><&l>SLOWNESS CASTED"
        - if <context.entity.has_flag[source]>:
            - hurt 1 <player> source:<context.entity.flag[source]>
        - else:
            - hurt 1 <player>
        - cast SLOW duration:8s amplifier:20 <player>
        - cast JUMP duration:8s amplifier:-10 <player>
        - take item:TrapItem quantity:64
        on TrapItem merges:
        - determine cancelled



PlayerPickupLandMine:
    debug: false
    type: world
    events:
        after player picks up LandMineItem:
        - narrate "<&4>You walked over a LANDMINE! <&7><&l>YOU EXPLODED!"
        - if <context.entity.has_flag[source]>:
            - explode <player.location> power:1 source:<context.entity.flag[source]> breakblocks
        - else:
            - explode <player.location> power:1 breakblocks
        - take item:LandMineItem quantity:64
        on LandMineItem merges:
        - determine cancelled


SmokeBombItem:
    type: item
    material: Firework_star
    display name: <&8><&l>Smoke Bomb
    lore:
     - <&8>When a Nemesis drops this
     - <&8>nearby entities get blinded


SmokeBombSmoke:
    debug: false
    type: world
    events:
        on SmokeBombItem merges:
        - determine cancelled
        on entity picks up SmokeBombItem:
        - determine cancelled


HuskStopTransformingInWater:
    debug: false
    type: world
    events:
        on husk|NPC transforms because:DROWNED:
        - determine passively cancelled
        - hurt 4 <context.entity> cause:drowning
        - if <context.entity.is_npc>:
            - equip <context.entity> Hand:<server.flag[<context.entity>Hand]>
            - equip <context.entity> Offhand:<server.flag[<context.entity>Offhand]>
            - equip <context.entity> Helmet:<server.flag[<context.entity>Helmet]>
            - equip <context.entity> Legs:<server.flag[<context.entity>Leggings]>
            - equip <context.entity> chest:<server.flag[<context.entity>Chestplate]>
            - equip <context.entity> boots:<server.flag[<context.entity>Boots]>
        - else:
            - kill <context.entity>


AttackWhileStunnedCancel:
    debug: false
    type: world
    events:
        on entity_flagged:Stunned damages entity:
        - determine cancelled


SpawnHusk:
    debug: false
    type: world
    events:
        on zombie spawns:
        - determine passively cancelled
        - spawn husk <context.location>


SpawnStray:
    debug: false
    type: world
    events:
        on skeleton spawns:
        - determine passively cancelled
        - spawn stray <context.location>

PoisonBombAssignment:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:20 cooldown:12s
        on move proximity:
        - ratelimit <player> 12s
        - determine passively cancelled
        - attack
        on attack:
        - determine passively cancelled
        - if <server.flag[<npc>target].location.line_of_sight[<npc.eye_location>]> && !<npc.has_flag[Stunned]>:
            - define Poison <server.flag[<npc>target].location>
            - spawn AREA_EFFECT_CLOUD <[Poison]> save:ColorCloud
            - adjust <entry[ColorCloud].spawned_entity> particle_color:green
            - wait 3s
            - repeat 26:
                - foreach <[Poison].find.living_entities.within[3]> as:entity:
                    - if <[entity]> != <npc> && <[entity].exists>:
                        - cast POISON <[entity]> amplifier:0 duration:8s
                - wait 1s
        on damaged:
        - trigger name:proximity state:true radius:20


WitherBombAssignment:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:20 cooldown:12s
        on move proximity:
        - ratelimit <player> 12s
        - determine passively cancelled
        - attack
        on attack:
        - determine passively cancelled
        - if <server.flag[<npc>target].location.line_of_sight[<npc.eye_location>]> && !<npc.has_flag[Stunned]>:
            - define Wither <server.flag[<npc>target].location>
            - spawn AREA_EFFECT_CLOUD <[Wither]> save:ColorCloud
            - adjust <entry[ColorCloud].spawned_entity> particle_color:black
            - wait 3s
            - repeat 26:
                - foreach <[Wither].find.living_entities.within[3]> as:entity:
                    - if <[entity]> != <npc> && <[entity].exists>:
                        - cast WITHER <[entity]> amplifier:0 duration:8s
                - wait 1s
        on damaged:
        - trigger name:proximity state:true radius:20

HungerBombAssignment:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:20 cooldown:12s
        on move proximity:
        - ratelimit <player> 12s
        - determine passively cancelled
        - attack
        on attack:
        - determine passively cancelled
        - if <server.flag[<npc>target].location.line_of_sight[<npc.eye_location>]> && !<npc.has_flag[Stunned]>:
            - define Hunger <server.flag[<npc>target].location>
            - spawn AREA_EFFECT_CLOUD <[Hunger]> save:ColorCloud
            - adjust <entry[ColorCloud].spawned_entity> particle_color:lime
            - wait 3s
            - repeat 26:
                - foreach <[Hunger].find.living_entities.within[3]> as:entity:
                    - if <[entity]> != <npc> && <[entity].exists>:
                        - cast HUNGER <[entity]> amplifier:0 duration:8s
                - wait 1s
        on damaged:
        - trigger name:proximity state:true radius:20




BreakBlockAssignment:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:8.5 cooldown:4s
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 4s
        - if !<player.location.line_of_sight[<npc.eye_location>]> && <player.gamemode> == Survival && <npc.location.find_blocks_flagged[BlockPlaced].within[5].size> > 0:
 #           - if <player.location.add[0,-1,0].material> !matches obsidian || <player.location.add[0,-1,0].material> !matches bedrock:
            - if <util.random_chance[80]>:
                - narrate "<&c><npc.name>: <script[AllEnchants].parsed_key[Quotes.Digging].random>"
            - ~break <npc.location.find_blocks_flagged[BlockPlaced].within[5].random>
        - else if ( !<player.location.line_of_sight[<npc.eye_location>]> || !<player.eye_location.line_of_sight[<npc.eye_location>]> ) && <player.gamemode> == Survival && !<player.location.find_path[<npc.location>].is_truthy> && <player.location.y.sub[<npc.location.y>]> >= -1 && <player.location.y.sub[<npc.location.y>]> <= 1:
            - if !<player.location.line_of_sight[<npc.location>]> && <npc.cursor_on_solid.exists>:
                - ~walk <npc> <player.location>
                - look <npc> <npc.location.forward.above> duration:0.2s
                - if <util.random_chance[25]>:
                    - narrate "<&c><npc.name>: <script[AllEnchants].parsed_key[Quotes.Digging].random>"
                - ~break <npc.cursor_on_solid>
            - if <npc.cursor_on_solid.exists> && !<player.location.line_of_sight[<npc.eye_location>]>:
                - ~walk <npc> <player.location>
                - look <npc> <player.eye_location> duration:0.2s
                - if <util.random_chance[25]>:
                    - narrate "<&c><npc.name>: <script[AllEnchants].parsed_key[Quotes.Digging].random>"
                - ~break <npc.cursor_on_solid>
        - else:
            - ~walk <npc> <player.location>
            - look <npc> <player.eye_location> duration:1s
        on damaged:
        - trigger name:proximity state:true radius:8.5
        on dig:
        - flag <context.location> BlockPlaced:!
        - adjust <context.location> coreprotect_log_removal:[user=<npc.name>;material=<context.material>]


PlayerHighUpAssignment:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:16 cooldown:8s
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 8s
        - if <player.location.line_of_sight[<npc.eye_location>]> && <player.gamemode> == Survival && <player.location.y.sub[<npc.location.y>]> >= 3 && <util.random_chance[80]>:
 #           - if <player.location.add[0,-1,0].material> !matches obsidian || <player.location.add[0,-1,0].material> !matches bedrock:
           - ~walk <npc> <npc.location.find_spawnable_blocks_within[4].random> auto_range
           - look <npc> <player.location> duration:1s
           - wait 0.4s
           - if <util.random_chance[80]>:
                - narrate "<&c><npc.name>: <script[AllEnchants].parsed_key[Quotes.HighUp].random>"
           - ~shoot spectral_arrow origin:<npc.eye_location> shooter:<npc> destination:<player.eye_location> speed:1 spread:<npc.sentinel.accuracy.mul[100]>
        - else if <util.random_chance[80]> && <player.gamemode> == Survival && <player.location.y.sub[<npc.location.y>]> >= 3 && !<player.location.find_path[<npc.location>].is_truthy>:
#           - if <npc.location.find_spawnable_blocks_within[8].size> > 0:
                - define loc <npc.eye_location.find_spawnable_blocks_within[5].random>
                - while !<player.eye_location.line_of_sight[<[loc]>]>:
                    - if <[loop_index]> >= 20 && !<player.location.find_path[<[loc]>].is_truthy>:
                        - stop
                    - define loc <npc.eye_location.find_spawnable_blocks_within[5].random>
                - ~walk <npc> <[loc]> lookat:<player.eye_location>
                #- look <npc> <player.location> duration:1s
                - if <util.random_chance[80]>:
                    - narrate "<&c><npc.name>: <script[AllEnchants].parsed_key[Quotes.HighUp].random>"
                - ~shoot spectral_arrow origin:<npc.eye_location> shooter:<npc> destination:<player.eye_location> speed:1 spread:<npc.sentinel.accuracy.mul[100]>
                - stop
        - else if ( <player.location.y.sub[<npc.location.y>]> >= -1 && <player.location.y.sub[<npc.location.y>]> <= 1 ) && <player.gamemode> == Survival && <util.random_chance[80]> && !<player.location.find_path[<npc.location>].is_truthy> && <player.location.line_of_sight[<npc.eye_location>]>:
                - look <npc> <player.eye_location.add[0,1,0]> duration:0.5s
                - adjust <npc> velocity:0,0.42,0
                - wait 2t
                - look <npc> <player.eye_location.add[0,1,0]> duration:0.5s
                #velocity:<player.location.direction.vector.add[0.0,0.5,0.0]>
                - adjust <npc> velocity:<npc.location.direction.vector.add[0.0,0.5,0.0]>
                - wait 13t
                - ~walk <npc> <player.location>
        on damaged:
        - trigger name:proximity state:true radius:16


PlaceBlockAssignment:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:11 cooldown:2s
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 2s
        - if <util.random_chance[25]> && <player.gamemode> == Survival && <npc.has_flag[ThrowEnderPearl]> && ( <player.location.y.sub[<npc.location.y>]> <= -3 || <player.location.y.sub[<npc.location.y>]> >= 3 ) && !<player.location.find_path[<npc.location>].is_truthy> && <npc.can_see[<player>]>:
            - look <npc> <server.flag[<npc>target].eye_location> duration:0.2s
            - ~shoot ender_pearl speed:1 spread:<npc.sentinel.accuracy.mul[50]> origin:<npc.eye_location> shooter:<npc>
        - if <util.random_chance[99]> && <player.gamemode> == Survival && <player.location.y.sub[<npc.location.y>]> <= -2 && !<player.location.find_path[<npc.location>].is_truthy> && <npc.location.below> !matches air|water|lava:
           - ~break <npc.location.below>
        - if <player.gamemode> == Survival && <npc.eye_location.center.find_blocks[!air].within[1.1].size> == 4:
           - if <util.random_chance[25]>:
               - teleport <npc> <npc.location.center>
           - adjust <npc> velocity:0,0.5,0
           - wait 1t
           - if <npc.age.exists> && <npc.is_baby>:
               - wait 3t
               - modifyblock <npc.location.below> dirt
               - adjust <npc.location.below> coreprotect_log_placement:[user=<npc.name>;material=dirt]
           - else:
               - modifyblock <npc.location> dirt
               - adjust <npc.location> coreprotect_log_placement:[user=<npc.name>;material=dirt]
        - else if <util.random_chance[66]> && <player.gamemode> == Survival && <player.location.y.sub[<npc.location.y>]> >= 5 && <npc.eye_location.above> matches air && !<player.location.find_path[<npc.location>].is_truthy> && <npc.location.find_blocks[!air|water|lava].within[1].is_truthy>:
           - adjust <npc> velocity:0,0.53,0
           - wait 1t
           - if <npc.age.exists> && <npc.is_baby>:
               - wait 3t
               - modifyblock <npc.location.below> dirt
               - adjust <npc.location.below> coreprotect_log_placement:[user=<npc.name>;material=dirt]
           - else:
               - modifyblock <npc.location> dirt
               - adjust <npc.location> coreprotect_log_placement:[user=<npc.name>;material=dirt]
        - else if <util.random_chance[85]> && <npc.eye_location.above> !matches air|water|lava && !<player.location.find_path[<npc.location>].is_truthy> &&  <player.gamemode> == Survival:
            - ~break <npc.eye_location.above>
        - else if <npc.location> !matches air|water|lava:
           - adjust <npc> velocity:0,0.53,0
        on damaged:
        - trigger name:proximity state:true radius:11

ReinforcementMelee:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:22
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 12s
        - if <player.gamemode> == Survival && <util.random_chance[24]> && <player.eye_location.line_of_sight[<npc.eye_location>]>:
           - define Amount <util.random.int[1].to[3]>
           - repeat <[Amount]>:
                - spawn husk <npc.location> target:<server.flag[<npc>target]>
           - narrate "<&c><npc.name> called in melee reinforcements!"
           - playsound sound:item_goat_horn_sound_5 <npc.location>
        on damaged:
        - trigger name:proximity state:true radius:22

ReinforcementRanged:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:22
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 12s
        - if <player.gamemode> == Survival && <util.random_chance[24]> && <player.eye_location.line_of_sight[<npc.eye_location>]>:
           - define Amount <util.random.int[1].to[3]>
           - repeat <[Amount]>:
                - spawn stray <npc.location> target:<server.flag[<npc>target]>
           - narrate "<&c><npc.name> called in ranged reinforcements!"
           - playsound sound:item_goat_horn_sound_5 <npc.location>
        on damaged:
        - trigger name:proximity state:true radius:22

ReinforcementWolves:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:22
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 12s
        - if <player.gamemode> == Survival && <util.random_chance[24]> && <player.eye_location.line_of_sight[<npc.eye_location>]>:
           - define Amount <util.random.int[1].to[4]>
           - repeat <[Amount]>:
                - spawn wolf <npc.location> target:<server.flag[<npc>target]>
           - narrate "<&c><npc.name> called in wolves for reinforcements!"
           - playsound sound:item_goat_horn_sound_6 <npc.location>
        on damaged:
        - trigger name:proximity state:true radius:22


TrapperAssignment:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:20
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 10s
        - if <player.gamemode> == Survival && <util.random_chance[23]>:
           - define Amount <util.random.int[1].to[4]>
           - repeat <[Amount]>:
                - cast SLOW duration:0.2s amplifier:20 <npc>
                - playsound sound:ENTITY_ARMOR_STAND_HIT <npc.location>
                - random:
                    - drop trapitem <npc.location> speed:4 save:Trap
                    - drop trapitem <npc.location> save:Trap
                - flag <entry[Trap].dropped_entity> source:<npc>
                - wait 0.3s
           - narrate "<&c><npc.name> Placed down traps!"
        on damaged:
        - trigger name:proximity state:true radius:20


LandMineAssignment:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:20
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 10s
        - if <player.gamemode> == Survival && <util.random_chance[23]>:
           - define Amount <util.random.int[1].to[4]>
           - repeat <[Amount]>:
                - cast SLOW duration:0.2s amplifier:20 <npc>
                - playsound sound:ENTITY_CREEPER_HURT <npc.location> pitch:0.1
                - random:
                    - drop LandMineItem <npc.location> speed:4 save:Mine
                    - drop LandMineItem <npc.location> save:Mine
                - flag <entry[Mine].dropped_entity> source:<npc>
                - wait 0.3s
           - narrate "<&c><npc.name> Placed down Land Mines!"
        on damaged:
        - trigger name:proximity state:true radius:20


OverwhelmingWill:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:8
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 4s
        - if <npc.location.find_entities.within[3.5].size> == 1 || <npc.location.find_entities.within[3].size> == 0:
           - define chance 10
        - else if <npc.location.find_entities.within[3.5].size> == 2:
            - define chance 16
        - else if <npc.location.find_entities.within[3.5].size> == 3:
            - define chance 22
        - else if <npc.location.find_entities.within[3.5].size> >= 4:
            - define chance 28
        - if <util.random_chance[<[chance]>]>:
           - cast slow <npc> amplifier:5 duration:1s
           - playsound sound:ENTITY_RAVAGER_ATTACK <player.location> pitch:0.01
           - repeat 5:
              - playeffect effect:MAGIC_CRIT at:<npc.location> visibility:20 quantity:40 offset:1
              - wait 0.2s
           - cast slow <npc> remove
           - foreach <npc.location.find_entities.within[3.5]> as:entity:
              - if <[entity]> != <npc>:
                 - hurt 4 <[entity]> source:<npc> cause:ENTITYATTACK
                 - push <[entity]> origin:<[entity]> speed:-1 duration:2t
           - if <npc.has_flag[Stunned]>:
              - flag <npc> Stunned:!
              - narrate "<&c><npc.name> used Overwhelming Will! They are no longer Stunned!"
           - else:
              - narrate "<&c><npc.name> used Overwhelming Will!"
        on damaged:
        - trigger name:proximity state:true radius:8


Terrorize:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:22
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 7s
        - if <util.random_chance[17]> && <npc.location.find_entities[monster|hostile].within[22].size> >= 1 && !<npc.has_flag[Stunned]>:
            - playsound sound:BLOCK_SCULK_SHRIEKER_SHRIEK <npc.location> volume:2.5 pitch:0.9
            - cast slow <npc> amplifier:5 duration:1s
            - wait 1s
            - narrate "<&c><npc.name> used Terrorize! A horde of monsters approaches!"
            - foreach <npc.location.find_entities[monster].within[22]> as:entity:
                 - adjust <[entity]> last_hurt_by:<server.flag[<npc>target]>
                 - attack <[entity]> target:<server.flag[<npc>target]>
                 - if <[loop_index]> >= 10:
                     - stop
        on damaged:
        - trigger name:proximity state:true radius:22


BlockAttack:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:6.5
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 4.5s
        - define chance 20
        - if <player.flag[Combo]> >= 1:
            - define chance:+:<player.flag[Combo]>
        - if <util.random_chance[<[chance]>]> && !<npc.has_flag[Stunned]> && <player.eye_location.line_of_sight[<npc.eye_location>]>:
            - define time <util.random.decimal[0.5].to[4.5]>
            - playsound sound:BLOCK_ANVIL_PLACE <npc.location> pitch:1.5
            - cast slow <npc> amplifier:5 duration:<[time]>s
            - flag <npc> Blocking expire:<[time]>s
            - playeffect effect:SWEEP_ATTACK <npc.location> quantity:5
            - narrate "<&c><npc.name> is now blocking melee attacks/stuns!"
            - waituntil !<npc.has_flag[Blocking]> rate:1t
            - playsound sound:BLOCK_ANVIL_PLACE <npc.location> pitch:1.2
            - playeffect effect:FLASH <npc.location> quantity:1
            - narrate "<&c><npc.name> is no longer blocking melee attacks/stuns!"
        on damaged:
        - trigger name:proximity state:true radius:6.5


LassoTarget:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:25
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 5s
        - if <util.random_chance[25]> && <npc.location.distance[<server.flag[<npc>target].location>]> >= 7 && ( <server.flag[<npc>target].eye_location.line_of_sight[<npc.eye_location>]> || <server.flag[<npc>target].location.line_of_sight[<npc.location>]> ):
            - narrate "<&c><npc.name> is preparing their lasso!"
            - cast slow <npc> duration:1s amplifier:6
            - repeat 10:
                - playsound sound:ENTITY_IRON_GOLEM_ATTACK <npc.location> pitch:1.3
                - wait 0.1s
            - wait 0.5s
            - playsound sound:ENTITY_IRON_GOLEM_ATTACK <npc.location> pitch:0.8
            - look <npc> <server.flag[<npc>target].eye_location> duration:0.2s
            - shoot nemesislassoentity speed:2.2 spread:<npc.sentinel.accuracy.mul[50]> destination:<server.flag[<npc>target].eye_location> save:grapple
            - narrate "<&c><npc.name> threw their lasso!"
            - spawn slime[size=1;no_damage_duration=100;has_ai=false] <player.location.forward[15]> save:rope
            - while <entry[rope].spawned_entity.exists> && <entry[rope].spawned_entity.is_spawned>:
                - leash <entry[rope].spawned_entity> holder:<npc>
                - invisible <entry[rope].spawned_entity>
                - if <entry[rope].spawned_entity.exists>:
                    - flag player rope:<entry[rope].spawned_entity>
                - if <entry[grapple].shot_entity.exists>:
                    - flag player arrow:<entry[grapple].shot_entity>
                - teleport <player.flag[rope]> <player.flag[arrow].location>
                - wait 1t
                - if <[loop_index]> >= 100 && <player.flag[rope].exists>:
                    - remove <player.flag[rope]>
        on damaged:
        - trigger name:proximity state:true radius:25

ThrowEnderPearl:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:27
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 6s
        - if <npc.health_percentage> >= 80:
            - define chance 16
        - else if <npc.health_percentage> >= 60 && <npc.health_percentage> < 80:
            - define chance 21
        - else if <npc.health_percentage> >= 40 && <npc.health_percentage> < 60:
            - define chance 26
        - else if <npc.health_percentage> >= 20 && <npc.health_percentage> < 40:
            - define chance 31
        - else:
            - define chance 36
        - if <util.random_chance[<[chance]>]> && <npc.location.distance[<player.location>]> >= 1 && <player.eye_location.line_of_sight[<npc.eye_location>]> && !<npc.has_flag[Stunned]>:
            - define Amount <util.random.int[1].to[4]>
            - repeat <[Amount]>:
                - cast SLOW duration:0.15s amplifier:2 <npc>
                - if <util.random_chance[50]>:
                    - look <npc> <server.flag[<npc>target].eye_location> duration:0.5s
                    - wait 1t
                - define yaw <util.random.decimal[-25].to[25]>
                - define pitch <util.random.decimal[-16].to[16]>
                - look <npc> pitch:<[pitch]> yaw:<[yaw]> duration:0.3s
                - wait 2t
                - playsound sound:ENTITY_SNOW_GOLEM_SHOOT <npc.location> pitch:0.1
                - shoot ender_pearl speed:1 spread:<npc.sentinel.accuracy.mul[50]> origin:<npc.eye_location> shooter:<npc>
                - wait 0.4s
        on damaged:
        - trigger name:proximity state:true radius:27

SmokeBombs:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:12
        on move proximity:
        - determine passively cancelled
        - ratelimit <npc> 3s
        - if <util.random_chance[18]> && !<npc.has_flag[Stunned]> && ( <player.eye_location.line_of_sight[<npc.eye_location>]> || <player.location.line_of_sight[<npc.location>]> ):
            - drop smokebombitem <npc.eye_location> save:SmokeBomb
            - if <util.random_chance[50]>:
                - foreach <entry[SmokeBomb].dropped_entity.location.find.living_entities.within[12]> as:entity:
                    - if <[entity]> == <npc>:
                        - foreach next
                    - push <entry[SmokeBomb].dropped_entity> origin:<entry[SmokeBomb].dropped_entity.location> destination:<[entity].location> duration:0.5s speed:1.2
                    - if <[loop_index]> >= 2:
                        - foreach stop
            - wait 0.2s
            - repeat 30:
                - foreach <entry[SmokeBomb].dropped_entity.location.find.living_entities.within[4.2]> as:entity:
                    - if <[entity]> == <npc>:
                        - foreach next
                    - cast Blindness duration:2.5s amplifier:0 <[entity]>
                    - playeffect effect:EXTINGUISH at:<entry[SmokeBomb].dropped_entity.location> quantity:1
                    - playeffect effect:SMOKE quantity:280 at:<entry[SmokeBomb].dropped_entity.location> offset:3.1
                - wait 2t
            - remove <entry[SmokeBomb].dropped_entity>
        on damaged:
        - trigger name:proximity state:true radius:12

ThrowingDaggers:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:16
        on move proximity:
        - ratelimit <npc> 5s
        - if <util.random_chance[25]> && ( <server.flag[<npc>target].eye_location.line_of_sight[<npc.eye_location>]> || <server.flag[<npc>target].location.line_of_sight[<npc.eye_location>]> ) && !<npc.has_flag[Stunned]> && <player.gamemode> == Survival:
            - define Amount <util.random.int[1].to[5]>
            - if <util.random_chance[33]>:
                - cast slow duration:0.3s amplifier:5 <npc>
            - repeat <[Amount]>:
                 - ~shoot spectral_arrow origin:<npc.eye_location> shooter:<npc> destination:<server.flag[<npc>target].eye_location> speed:1 spread:<npc.sentinel.accuracy.mul[100]>
                 - playsound sound:ITEM_TRIDENT_THROW <npc.location> pitch:2
                 - wait 0.15s
            - narrate "<&c><npc.name> shot some daggers!"
        on damaged:
        - trigger name:proximity state:true radius:16


FrontalRoar:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:8.5
        on move proximity:
        - ratelimit <npc> 6s
        - if <util.random_chance[20]> && ( <server.flag[<npc>target].eye_location.line_of_sight[<npc.eye_location>]> || <server.flag[<npc>target].location.line_of_sight[<npc.eye_location>]> ) && !<npc.has_flag[Stunned]> && <player.gamemode> == Survival:
            - narrate "<&c><npc.name> is preparing Frontal Roar!"
            - cast slow duration:1s amplifier:5 <npc>
            - repeat 3:
                - foreach <npc.location.forward[5].find_spawnable_blocks_within[5]> as:block:
                    - playeffect effect:INSTANT_SPELL <[block]> quantity:2
                - wait 0.4s
            - if !<npc.has_flag[Stunned]>:
                - playsound sound:ENTITY_POLAR_BEAR_WARNING <npc.location> pitch:0.8
                - foreach <npc.location.forward[5].find.living_entities.within[5]> as:entity:
                    - playeffect effect:WET_SPONGE_VAPORIZES_IN_NETHER <[entity].location> quantity:1
                    - if <[entity]> != <npc> && ( <[entity].eye_location.line_of_sight[<npc.eye_location>]> || <[entity].location.line_of_sight[<npc.eye_location>]> ):
                        - hurt 6 <[entity]> source:<npc>
                        - cast BLINDNESS amplifier:0 duration:2s <[entity]>
                        - cast CONFUSION amplifier:0 duration:11s <[entity]>
                        - cast SLOW amplifier:2 duration:4s <[entity]>
                        - if <[entity].is_player>:
                            - narrate "<&c><npc.name> Used Frontal Roar! You got dazed and confused!"
        on damaged:
        - trigger name:proximity state:true radius:8.5

GroundPound:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:10
        on move proximity:
        - ratelimit <npc> 7.5s
        - if <util.random_chance[20]> && ( <server.flag[<npc>target].eye_location.line_of_sight[<npc.eye_location>]> || <server.flag[<npc>target].location.line_of_sight[<npc.eye_location>]> ) && !<npc.has_flag[Stunned]> && <npc.eye_location.above> matches air && <npc.is_on_ground> && <player.gamemode> == Survival:
            - narrate "<&c><npc.name> is about to Ground Pound!"
            - playsound sound:ENTITY_WITHER_SHOOT <npc.location> pitch:1.5
            - adjust <npc> velocity:0,0.65,0
            - wait 2t
            - waituntil <npc.is_on_ground> rate:2t max:10s
            - if !<npc.has_flag[Stunned]>:
                - playsound sound:ENTITY_PLAYER_SMALL_FALL <npc.location>
                - foreach <npc.location.find_entities.within[7]> as:entity:
                    - if <[entity]> != <npc> && <[entity].is_on_ground> && <[entity].location.y.sub[<npc.location.y>]> >= -1 && <[entity].location.y.sub[<npc.location.y>]> <= 1:
                        - if <[entity].is_living>:
                            - hurt 5 <[entity]> source:<npc>
                            - cast SLOW amplifier:2 duration:3s <[entity]>
                        - push <[entity]> origin:<[entity].location> destination:<[entity].location.above[2].find_blocks[!water|lava].within[5].random> speed:<util.random.decimal[0.8].to[2.1]> duration:0.1s no_rotate
                        - if <[entity].is_player>:
                            - narrate "<&c><npc.name> used Ground Pound and you got hurt!"
                - foreach <npc.location.find_blocks[!air|water|lava].within[6]> as:block:
                    - playeffect effect:BLOCK_DUST at:<[block]> special_data:<[block].material> quantity:20
                    - blockcrack <[block]> progress:<util.random.int[0].to[10]>
                    - wait 0.001s
        on damaged:
        - trigger name:proximity state:true radius:10


DashStrike:
    type: assignment
    debug: false
    actions:
        on spawn:
        - trigger name:proximity state:true radius:15
        on move proximity:
        - ratelimit <npc> 5s
        - if <util.random_chance[20]> && ( <server.flag[<npc>target].eye_location.line_of_sight[<npc.eye_location>]> && <server.flag[<npc>target].location.line_of_sight[<npc.eye_location>]> ) && !<npc.has_flag[Stunned]>:
            - narrate "<&c><npc.name> is about to Dash Strike!"
            - playsound sound:ENTITY_FIREWORK_ROCKET_LAUNCH <npc.location> pitch:0.5
            - look <npc> <server.flag[<npc>target].eye_location> duration:0.7s
            - wait 0.5s
            - playsound sound:ENTITY_ENDERMAN_TELEPORT <npc.location> pitch:0.6
            - flag <npc> DashStrike.Attack expire:1s
            - foreach <npc.location.find.living_entities.within[3]> as:entity:
                - if <[entity]> != <npc>:
                    - flag <[entity]> DashDamage expire:8s
                    - playeffect effect:FIREWORKS_SPARK <[entity].location> quantity:20
                    - foreach next
            - if <player> == <server.flag[<npc>target]> && <player.location.distance[<npc.location>]> <= 6:
                - flag <player> DashDamage expire:8s
            - ~push <npc> origin:<npc> speed:1.55 duration:0.75s no_damage script:NemesisDashStrike
            - narrate "<&c><npc.name> has Dash Striked!"
            - foreach <npc.location.find.living_entities.within[40]> as:entity:
                - if <[entity].has_flag[DashDamage]> && <[entity]> != <npc>:
                    - adjust <[entity]> max_no_damage_duration:0s
                    - repeat 3:
                        - hurt 0.3 <[entity]> source:<npc>
                        - playsound sound:entity_player_hurt <[entity].location>
                        - if <[entity].is_player>:
                            - animate <[entity]> animation:HURT
                        - wait 2t
                - adjust <[entity]> max_no_damage_duration:1s
                - flag <[Entity]> DashDamage:!
        on push:
        - if <npc.has_flag[DashStrike.Attack]>:
            - flag <player> DashDamage expire:8s
        on damaged:
        - trigger name:proximity state:true radius:15
