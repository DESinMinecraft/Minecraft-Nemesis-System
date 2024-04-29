![Snag_1f8ab195](https://github.com/DESinMinecraft/Minecraft-Nemesis-System/assets/158676456/3e73b15c-2346-497d-801c-4f7ff9fa847f)

In the following few weeks (probably sooner), 1.20.6 support will be added. And Ologs are highly likely to come too in 1.21 thanks to new developer tools 😮

# About the Project
Welcome to the Github Minecraft Nemesis System (also called **Dynamic Enemy System**) repository! This was made by an individual programmer highly passionate about the Nemesis System in the Shadow of Mordor/Shadow of War games. I studied it a lot by playing the games, watching YouTube videos, and searching up wikis online. If you don't know what the Nemesis System is, it is a system that randomly generates enemies with unique names, weapons, armor, classes, abilities, fighting styles, personalities, physical characteristics, and voices. The more a Nemesis kills you or other Nemeses, the stronger that Nemesis will get, rising through the ranks of society. The Nemesis will remember you from previous encounters. 

Sadly, due to Warner Bros patenting the Nemesis System, I can't go in-depth with them remembering previous encounters with you. But I spent lots of time on giving them abilities, custom armor (aesthetically and with enchantments), custom weapons (custom enchantments), and a smart AI. They will also have unique names and combat personalities. 


From here on out, the Minecraft Nemesis System will be referred to as the **Dynamic Enemy System.**

This project was made with the Denizen scripting language in Minecraft. It would not be possible to create such a system otherwise (especially one that focuses a lot on NPCs). A huge thank you to the Denizen team for all their help and for all the work they've put into maintaining this scripting language. Anyone can learn Denizen (it is free!). It is very, very easy to learn. You can download it at https://denizenscript.com/. You can join their Discord for help (highly recommended) at discord.gg/Q6pZGSR.

# Installation & Setup

Here, I will show you how to install the Dynamic Enemy System on your own server (it's very easy, mostly drag-and-drop), NO MODS NEEDED (NOT COMPATIBLE WITH FABRIC/FORGE SERVERS. YOU CAN JOIN WITH A VANILLA CLIENT)

THE DYNAMIC ENEMY SYSTEM IS CURRENTLY IN ALPHA! THERE ARE BOUND TO BE BUGS! IT STILL NEEDS LOTS OF POLISH! But I think it is ready for the public to see and use for feedback! You should be able to have 10s of hours of fun with this script, especially with friends!

## Server Softwares

You will need a Paper/Purpur server to be able to run the Dynamic Enemy System. Paper is very optimized for performance and has a helpful API for plugin developers to use. Most servers on Minecraft use Paper, although Purpur is catching up fairly fast in terms of popularity. Almost every plugin that works on Paper will work on Purpur, although Paper is more stable. Purpur has everything Paper has, as well as an INSANE amount of customizable options (by default, everything that is customizable is off for stability reasons and to allow you the option to change what YOU want). If you want "drakes" and "caragors", Purpur is the way to go. It also has slightly better performance than Paper due to including Pufferfish, another server implementation in it.

Never setup a server? It's easy! Click on https://docs.papermc.io/paper/getting-started or watch a video tutorial like https://www.youtube.com/watch?v=S1ErOaywc2A
You can also use free server hosts like ~~Server.pro~~ or Aternos to be able to easily play with your friends

You can download **Paper** at: https://papermc.io/software/paper

You can download **Purpur** at: https://purpurmc.org/
Purpur documentation: https://purpurmc.org/docs/purpur/configuration/

If you choose Purpur and you want drakes, scroll down to phantoms (or type ctrl + f) and enable mounting and controlling them. You will need another plugin to ride them (will be listed).

Currently (4/29/2024), the Dynamic Enemy System supports 1.20.4. 1.20.6 should be the final minor version for 1.20, and eventually 1.20.4 support will be dropped for 1.20.6. Previous major/minor versions (e.g. 1.19, 1.18.2) *may* work, but will NOT be supported by me. Future major versions will be supported. The Dynamic Enemy System will probably just work out of the box on these newer versions thanks to Denizen's backwards compatibility. Otherwise, very little code maintenance will be needed by me.

## Server Plugins

### Required

These plugins are REQUIRED for the Dynamic Enemy System to work. Upload these files to the plugins folder of your server. You can download them here:

**Denizen** (what the Dynamic Enemy System runs on): https://ci.citizensnpcs.co/job/Denizen/

**Citizens** (NPCs, which is what the Nemeses are): https://ci.citizensnpcs.co/job/Citizens2/

**Sentinel** (NPC combat and AI): https://ci.citizensnpcs.co/job/Sentinel/

### Optional (but recommended)

These plugins are RECOMMENDED but NOT REQUIRED:

**Coreprotect** (logging tool to revert and inspect griefing. Yes, Nemeses can grief): https://www.patreon.com/posts/89830486

**EssentialsX** (plugin that adds many useful commands and quality of life features): https://essentialsx.net/downloads.html


If you decided to use Purpur and want to ride mobs, this plugin is REQUIRED. Even if you don't use Purpur/don't want to ride mobs, it is still HIGHLY RECOMMEND since this plugin is a permissions plugin!

**Luckperms** (Probably the best and easiest permissions plugin to use. Can be used to set permissions that players can use for any plugin): https://luckperms.net/


### ***After you have installed these plugins, restart your server.***


Once you have restarted your server, download the .dsc files at the top of this page (click the green button and click download zip). 

Go into your server file manager, then go to the following folders: **plugins --> Denizen --> scripts**

Upload the .dsc files in the scripts folder
![Snag_1f493d5b](https://github.com/DESinMinecraft/Minecraft-Nemesis-System/assets/158676456/6d7f0f8c-c308-4a75-b371-fc5476d5b67f)


Once you have uploaded the files in the scripts folder, restart the server. The Dynamic Enemy System should work then! 

# Commands for NPCs

Default zombies and skeletons won't spawn. This is intended.

Husks/strays/pigman/piglin type mobs will have weapons, armor, and classes associated to them. They may even have unique armor trims. Dying to these mob types will generate a Nemesis in the server database. The Nemesis has a 50/50 chance of spawning at the location where you died or be despawned (for now... they'll come to harass you later).

To view all Nemeses on the server, do **/npc list** (make sure you gave yourself /op). When starting a new world, die to 5 monsters (more if you have friends on) to generate new Nemeses. Once you have done so, you can run the command **/ex despawn <server.npcs>** and get started on surviving.

If you need to select a Nemesis for whatever reason, look at them and do **/npc sel** or type out their ID in **/npc list** and do **/npc sel (id)**. With a Nemesis selected, you can despawn them (**/npc despawn**), teleport them to you (**/npc tphere**), teleport yourself to them (**/npc tp**), permanently kill them (**/sentinel kill**), etc. 

For commands to use and modify on NPCs like Nemeses, you can check the following webpages out:

https://wiki.citizensnpcs.co/Citizens_Wiki

https://github.com/mcmonkeyprojects/Sentinel/blob/master/README.md

# Server Difficulty

Modify the server difficulty with /difficulty if you think it is too easy. By default, Minecraft sets it to Easy. With this script installed, it certainly won't be Easy, I'll tell you that.

1. Easy - Actually is a bit difficult. You will likely die every now and then

2. Normal - Think of it as Hard++ difficulty. You will highly, highly likely die at least once in your playthrough. Death is nothing to be upset about

3. Hard - You are insane if you play on this gamemode. Your life will be brutal. You WILL die. Constantly. Death is just a daily habit to you.

4. Hardcore - I don't even think it's possible to beat the Ender Dragon on Hardcore. I seriously don't think it's possible. Show me a video if you do it. Make sure to generate 5 Nemeses before you do it. (set the difficulty to easy first, then hardcore once you start)

# Enemy Classes

There are 5 enemy class types:
1. Swordsman (Warrior): Just a regular random sword, nothing else. Mobs will have Speed 1 if they are a Swordsman.
2. Spearman (Hunter): Equipped with a trident. May shoot tridents at you when afar. Will melee when up-close.
3. Axeman (Savage): Dual-axe wielder. Counter attacks all frontal melee attacks. **Stun (right click) them to do safely attack them.** You can also melee attack them from behind without stunning.
4. Shieldsman (Defender): Holds a sword in their main hand, a shield in their off hand. Mobs will have Slowness 1 if they are a Shieldsman. Blocks ALL frontal melee attacks. **Frontal stuns will not work**. Attack from behind, use ranged attacks, or whatever else at your disposal to hurt them.
5. Archer (Marksman): Just your typical skeleton/piglin equipped with a bow/crossbow. Nothing special.

I would love to add Ologs from Shadow of War, but they would be a pain to make (it is possible though).

# Player Abilities

You, the player, have the following abilities:
1. Double jump: Double jump spacebar to jump higher.
2. Stuns: Right click a monster to stun them. Stunned monsters can't move or attack.
3. Daggers: Hold an item in your hand and right click it. A dagger will shoot out. It is a weak but quick ranged attack.
4. Stealth Attack: Sneak + damage an enemy from behind to do 2x damage.
5. Combo: Whenever you damage an entity, your combo will build up. Higher combo = more damage. If you get damaged, your combo will reset to 0.
6. Might: By default, hit entities to gain +1 Might. If you get hit, you lose -1 Might. Might can be used to do AOE attacks (so far). When your Might is full, right click with a sword/axe on the ground to do an AOE attack, or left click a bow/crossbow/trident, then shoot to do an AOE ranged attack.
7. The Ring: Allows you to convert certain monsters to your side. **So far, a Nemesis CAN NOT be converted.** By default, this is not given to you. You need to get an ***Amethyst Shard*** to be able to convert certain monsters. **If you want The Ring, you can /op yourself and then type the following command: /ex give convertitem**. With it, right click monsters that you want to fight for you.

**If you added the SkillTree file, you can do /skilltree to upgrade your abilities! Every 10 xp levels = 1 new skill point**

# Enemy Abilities

There are over 40 abilities a Nemesis can learn! Some of these apply to any target they are fighting, others only apply to you, the player.
The abilities are:

      - ImmuneFire (Immune to fire)
      - ImmuneDrowning (Immune to drowning)
      - ImmunePoison (Immune to poison)
      - ImmuneWither (Immune to wither damage)
      - NoFallDamage (Immune to fall damage)
      - Totem (Holds a totem in their offhand)
      - Sneaky (Their nameplate is hidden, making it harder to track them. Expect surprise attacks)
      - NoKnockback (Immune to knockback)
      - AntiBoatMount (Won't be mounted on boats like most other mobs)
      - ArrowProof (Immune to arrows)
      - ExplosiveShot (May shoot explosive projectiles)
      - ExplodeOnDie (Spawns a bunch of explosives upon dying)
      - FastLearner (Adapts to your Stun, Stealth, and Dagger attacks faster than usual. If a Nemesis adapts to an attack, they become immune to it for the remainder of the battle)
      - ReinforcementMelee (Summons melee reinforcements)
      - ReinforcementRanged (Summons ranged reinforcements)
      - ReinforcementWolves (Summons wolf reinforcements)
      - HeavyHitter (If you're a casual player, this that they hit so hard, they rotate your camera/head around. If you're a technical player, this means your pitch and yaw get rotated randomly)
      - HighJumper (Jumps higher than usual)
      - Trapper (Lays down traps that pin you in place if you pick them up)
      - LifeSteal (Heals from the damage they deal)
      - BlindDamage (Gives you blindness upon hitting you)
      - PoisonDamage (Gives you poison upon hitting you)
      - PoisonBomb (Spawns an AOE cloud that will give you poison if you don't move out of the way. The cloud stays for a while)
      - WitherDamage (Gives you wither upon hitting you)
      - WitherBomb (Spawns an AOE cloud that will give you wither if you don't move out of the way. The cloud stays for a while)
      - HungerDamage (Gives you hunger/starvation upon hitting you)
      - HungerBomb (Spawns an AOE cloud that will give you hunger/starvation if you don't move out of the way. The cloud stays for a while)
      - ShieldBreaker (Deals massive damage to your shield if you block)
      - CheatsDeath (The Nemesis doesn't actually die! They will come back from the dead one day to try to kill you! They will keep coming back to life until they no longer have this ability!)
      - MiningFatigue (Gives you mining fatigue/slow digging upon hitting you)
      - FastMiner (The Nemesis mines blocks faster than usual)
      - OverwhelmingWill (Unleashes a small AOE attack that damages nearby mobs, and sends pushes any entities away with an overwhelming force. Due to the amount of overwhelming will the Nemesis has, they can actually unstun themselves!)
      - Terrorize (Causes all nearby monsters to become aggressive towards you. The Nemesis doesn't need to even see you to use this ability)
      - BlockAttack (Will block all melee attack/stuns for a short while. Even applies to other entities trying to harm it!)
      - Combo (The higher the combo the Nemesis has, the more damage it will deal)
      - LassoTarget (If their target is far away, will try to throw a lasso at them to bring them in close)
      - ThrowEnderPearl (May throw ender pearls, teleporting wherever the pearls land)
      - SmokeBombs (May throw smoke bombs, causing all nearby victims to be giving Blindness)
      - ThrowingDaggers (Short ranged attack where they throw daggers at their target)
      - FrontalRoar (Lets out a strong roar in front of them, damaging, giving slowness, nausea, and blindness to all victims)
      - GroundPound (Jumps in the air and comes crashing down, damaging all entities and may send them flying away for even more damage! You may get launched far up in the air! If you're not on the ground, you can't get damaged!)
      - LandMines (Lays down land mines that will explode if you pick them up)
      - Mounted (May spawn mounted on a horse, skeleton horse, zombie horse, spider, or chicken. If dismounted, may try to find and ride said mobs)
      - BadOmen (Gives Bad Omen to whoever kills them)
      - GolemToss (Tosses you up like an Iron Golem when they hit you)
      - DashStrike (Quickly launches towards you from a long distance, and delievers multi-hit damage. Unstunable when doing this ability, but can still take fall damage)

### Shaming

If a Nemesis has 18% HP or lower, with your Ring/Amethyst Shard, left click them to shame them. It will show up on your sidebar when battling them when they can finally be shamed. The Nemesis will lose abilities and despawn. The amount of abilities they lose is random. The mechanic is still buggy and the Nemesis may not properly lose some of their abilities. Expect it to not work all the time.

Some reasons why you may want to shame instead of killing a Nemesis:

- Get rid of the ExplodeOnDie ability so when you kill them, the area around you isn't destroyed

- Get rid of the CheatsDeath ability so when you kill them next time, they stay dead.

- Farm Nemeses for gear. If a Nemesis maxed out on the amount of abilities they can learn and the abilities don't apply to the weapons that they will drop when killed (e.g. the Totem ability will not get equipped on their weapon, but PoisonDamage will, allowing you to do PoisonDamage on enemies if you get their weapon), shame them and let them kill you again to learn better abilities that can get equipped on weapons. You may get very overpowered weapons like this with trial and error.


# Other Info

Nemeses are smarter than other mobs! They have better pathfinding, are more persistent in tracking you down, will mine blocks, place blocks, keep their distance from enemies, lunge at you, throw daggers, etc! DO NOT underestimate their intelligence. I have put a lot of time and effort into their AI. It isn't perfect, but it will certainly scare and amaze you.


Keep in mind, all generated Nemeses will also have randomized speed, reach, attack rates, different combat personalities, and may even attack other Nemeses!

If a Nemesis dies, they will either drop all of their loot, a piece of their armor, or their weapon.

If a Nemesis doesn't have armor when they kill you, then there is a chance those slots will be equipped with armor. If they don't have a helmet, there is also a chance for their head gear to be equipped with cosmetic armor, like a dragon head, or a wither skeleton skull, or even a carved pumpkin.

The Nemesis can get pretty OP enchants, like Thorns 5 or Protection 5. You may get these if you kill them.

If you get their weapon, and they learned an elemental attack (PoisonDamage, WitherDamage, HungerDamage) or other abilities (BlindDamage, Lifesteal, HeavyHitter, MiningFatigue) then that weapon will also have that ability! Whenever you hit other enemies with your weapon, it afflicts that effect on the victim.
