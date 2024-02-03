Welcome to the Github Minecraft Nemesis System repository! This was made by an individual programmer highly passionate about the Nemesis System in the Shadow of Mordor/Shadow of War games. I studied it a lot by playing the games, watching YouTube videos, and searching up wikis online. If you don't know what the Nemesis System is, it is a system that randomly generates enemies with unique names, weapons, armor, classes, abilities, fighting styles, personalities, physical characteristics, and voices. The more a Nemesis kills you or other Nemeses, the stronger that Nemesis will get, rising through the ranks of society. The Nemesis will remember you from previous encounters. 

Sadly, due to Warner Bros patenting the Nemesis System, I can't go in-depth with them remembering previous encounters with you. But I spent lots of time on giving them abilities, custom armor (aesthetically and with enchantments), custom weapons (custom enchantments), and a smart AI. They will also have unique names and combat personalities.

This project was made with the Denizen scripting language in Minecraft. It would not be possible to create such a system otherwise (especially one that focuses a lot on NPCs). A huge thank you to the Denizen team for all their help and for all the work they've put into maintaining this scripting language. Anyone can learn Denizen (it is free!). It is very, very easy to learn. You can download it at https://denizenscript.com/. You can join their Discord for help (highly recommended) at discord.gg/Q6pZGSR.


Here, I will show you how to install my own Nemesis System on your own server (it's very easy, mostly drag-and-drop), NO MODS NEEDED (NOT COMPATIBLE WITH FABRIC/FORGE SERVERS. YOU CAN JOIN WITH A VANILLA CLIENT)

MY NEMESIS SYSTEM IS CURRENTLY IN ALPHA! THERE ARE BOUND TO BE BUGS! IT STILL NEEDS LOTS OF POLISH! BUT I THINK IT IS READY FOR THE PUBLIC TO SEE AND USE!


You will need a Paper/Purpur server to be able to run the Minecraft Nemesis System. Paper is very optimized for performance and has a helpful API for plugin developers to use. Most servers on Minecraft use Paper, although Purpur is catching up fairly fast in terms of popularity. Almost every plugin that works on Paper will work on Purpur. Purpur has everything Paper has, as well as an INSANE amount of customizable options. If you want "drakes" and "caragors", Purpur is the way to go. It also has slightly better performance than Paper due to including Pufferfish, another server implementation in it.

Never setup a server? It's easy! Click on https://docs.papermc.io/paper/getting-started or watch a video tutorial like https://www.youtube.com/watch?v=S1ErOaywc2A
You can also use free server hosts like Server.pro or Aternos to be able to easily play with your friends

You can download **Paper** at: https://papermc.io/software/paper

You can download **Purpur** at: https://purpurmc.org/
Purpur documentation: https://purpurmc.org/docs/purpur/configuration/

If you choose Purpur and you want drakes, scroll down to phantoms (or type ctrl + f) and enable mounting and controlling them. You will need another plugin to ride them (will be listed).

Currently (2/3/2024), the Minecraft Nemesis System supports 1.20.4. 1.20.5 should be the final minor version for 1.20, and eventually 1.20.4 support will be dropped for 1.20.5. Previous versions major/minor versions (e.g. 1.19, 1.18.2) *may* work, but will NOT be supported by me. Future major versions will be supported. The Minecraft Nemesis System will probably just work out of the box on these newer versions thanks to Denizen's backwards compatibility. Otherwise, very little code maintainence will be needed.

These plugins are REQUIRED for the Minecraft Nemesis System to work. Upload these files to the plugins folder of your server. You can download them here:
**Denizen** (what the Minecraft Nemesis System runs on): https://ci.citizensnpcs.co/job/Denizen/
**Citizens** (NPCs, which is what the Nemeses are): https://ci.citizensnpcs.co/job/Citizens2/
**Sentinel** (NPC combat and AI): https://ci.citizensnpcs.co/job/Sentinel/

These plugins are RECOMMENDED but NOT REQUIRED:
**Coreprotect** (logging tool to revert and inspect griefing. Yes, Nemeses can grief): https://www.patreon.com/posts/89830486
**EssentialsX** (plugin that adds many useful commands and quality of life features): https://essentialsx.net/downloads.html

If you decided to use Purpur and want to ride mobs, this plugin is REQUIRED. Even if you don't use Purpur/don't want to ride mobs still HIGHLY RECOMMEND this plugin since it is a permissions plugin!
**Luckperms** (Probably the best and easiest permissions plugin to use. Can be used to set permissions that players can use for any plugin): https://luckperms.net/

After you have installed these plugins, restart your server.


Once you have restarted your server, download the .dsc files at the top of this page (click the green button and click download as zip). 
Go into your server file manager, go to the following folders: plugins --> Denizen --> scripts
Upload the .dsc files in the scripts folder
![image](https://github.com/MCNemesisSystem/Minecraft-Nemesis-System/assets/158676456/fe17ae0f-1ad3-453d-b5eb-ad738781fa03)


Once you have uploaded the files in the scripts folder, in game, type /ex reload (make sure you /op yourself from console 1st) OR restart the server. The Minecraft Nemesis System should work then! 

Husks/strays/pigman/piglin type mobs will have weapons, armor, and classes associated to them. Dying to these mob types will generate a Nemesis in the server database. The Nemesis has a 50/50 chance of spawning at the location where you died, or be despawned (for now... they'll come to harass you later).

To view all Nemeses on the server, do **/npc list** (make sure you gave yourself /op). When starting a new world, die to 5 monsters to generate new Nemeses. Once you have done so, you can run the command **/ex despawn 	<server.npcs>** and get started on surviving.

If you need to select a Nemesis for whatever reason, look at them and do **/npc sel**. With a Nemesis selected, you can despawn them (**/npc despawn**), teleport them to you (**/npc tphere**), permanently kill them (**/sentinel kill**), etc. For commands to use on NPCs like Nemeses, you can check the following webpages out:
https://wiki.citizensnpcs.co/Citizens_Wiki
https://github.com/mcmonkeyprojects/Sentinel/blob/master/README.md


There are 5 enemy class types:
1. Swordsman (Warrior): Just a regular random sword, nothing else. Mobs will have Speed 1 if they are a Swordsman.
2. Spearman (Hunter): Equipped with a trident. May shoot tridents at you when afar. Will melee when upclose.
3. Axeman (Savage): Dual-axe wielder. Counter attacks all frontal melee attacks. **Stun (right click) them to do safely attack them.** You can also melee attack them from behind without stunning.
4. Shieldsman (Defender): Holds a sword in their main hand, a shield in their off hand. Mobs will have Slowness 1 if they are a Shieldsman. Blocks ALL frontal melee attacks. **Frontal stuns will not work**. Attack from behind, use ranged attacks, or whatever else at your disposal to hurt them.
5. Archer (Marksman): Just your typical skeleton/piglin equipped with a bow/crossbow. Nothing special.

I would love to add Ologs from Shadow of War, but they would be a pain to make (it is possible though).

You, the player, have the following abilities:
1. Double jump: Double jump spacebar to jump higher.
2. Stuns: Right click a monster to stun them. Stunned monsters can't move or attack.
3. Daggers: Hold an item in your hand and right click it. A dagger will shoot out. It's a weak but quick ranged attack.
4. Stealth Attack: Sneak + damage an enemy from behind to do 2x damage.
5. Combo: Whenever you damage an entity, your combo will build up. Higher combo = more damage. If you get damaged, your combo will reset to 0.
6. Might: By default, hit entities to gain +1 Might. If you get hit, you lose -1 Might. Might can be used to do AOE attacks (so far). When your Might is full, right click with a sword/axe on the ground to do an AOE attack, or left click a bow/crossbow/trident, then shoot to do an AOE ranged attack.
7. The Ring: Allows you to convert certain monsters to your side. **So far, a Nemesis CAN NOT be converted.** By default, this is not given to you. You need to get an ***Amethyst Shard*** to be able to convert certain monsters. **If you want The Ring, you can /op yourself and then type the following command: /ex give convertitem**. Right click monsters that you want to fight for you.

**If you added the SkillTree file, you can do /skilltree to upgrade your abilities! Every 10 xp levels = 1 new skill point**

There are over 40 abilities a Nemesis can learn! Some of these apply to any target they are fighting, others only apply to you, the player.
The abilities are:

      - ImmuneFire (Immune to fire)
      - ImmuneDrowning (Immune to drowning)
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
      - SmokeBombs (May throw smokebombs, causing all nearby victims to be giving Blindness)
      - ThrowingDaggers (Short ranged attack where they throw daggers at their target)
      - FrontalRoar (Lets out a strong roar infront of them, damaging, giving slowness, nausea, and blindness to all victims)
      - GroundPound (Jumps in the air and comes crashing down, damaging all entities and may send them flying away for even more damage! You may get launched far up in the air! If you're not on the ground, you can't get damaged!)
      - LandMines (Lays down land mines that will explode if you pick them up)
      - Mounted (May spawn mounted on a horse, skeleton horse, zombie horse, spider, or chicken. If dismounted, may try to find and ride said mobs)
      - BadOmen (Gives Bad Omen to whoever kills them)

Nemeses are smarter than other mobs! They have better pathfinding, are more persistent in tracking you down, will mine blocks, place blocks, keep their distance from enemies, lunge at you, throw daggers, etc! DO NOT underestimate their intelligence. I have put a lot of time and effort into their AI. It isn't perfect, but it will certainly scare and amaze you.


Keep in mind, all generated Nemeses will also have randomized speed, reach, attack rates, different combat personalities, and may even attack other Nemeses!

If a Nemesis dies, they will either drop all of their loot, a piece of their armor, or their weapon.

The Nemesis can get pretty OP enchants, like Thorns 5 or Protection 5. You may get these if you kill them.

If you get their weapon, and they learned an elemental attack (PoisonDamage, WitherDamage, HungerDamage) or other abilities (BlindDamage, Lifesteal, HeavyHitter, MiningFatigue) then that weapon will also have that ability! Whenever you hit other enemies with your weapon, it afflicts that effect on the victim.
