# Reset game scoreboards

## CONSTRAINTS
#   should be called after activeplayers are assigned

#=============================================================================================================

# Reset DialogueTracker GAME scores
scoreboard players set #Supplier game.dialogue 0
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/match_bookshelf=false}] run scoreboard players set #Scientist game.dialogue 0
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/match_bookshelf=true}] run scoreboard players set #Scientist game.dialogue 6
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/light_altars=false}] run scoreboard players set #Petitioner game.dialogue 0
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/light_altars=true}] run scoreboard players set #Petitioner game.dialogue 4

## GAME TIME
scoreboard players set game.ticks tick_counter 0

# Cooldowns
scoreboard players set card.draw.cooldown tick_counter 0
scoreboard players set card.play.cooldown tick_counter 0
scoreboard players set @e[type=minecraft:ravager] game.entity.glow_remaining 0
scoreboard players set @e[type=minecraft:warden] game.entity.glow_remaining 0
scoreboard players set @e[type=minecraft:enderman] game.entity.glow_remaining 0
scoreboard players set FloatingFlameCooldown tick_counter 0

# Reset DungeonRun scoreboard
scoreboard players set MinMenace DungeonRun 0
scoreboard players set Menace DungeonRun 0
scoreboard players set Hazard DungeonRun 0
scoreboard players set MenaceBlock DungeonRun 0
scoreboard players set HazardBlock DungeonRun 0
scoreboard players set MenaceQueue DungeonRun 0
scoreboard players set HazardQueue DungeonRun 0
scoreboard players set TreasureQueue DungeonRun 0
scoreboard players set EmberQueue DungeonRun 0
scoreboard players set Cards DungeonRun 0
scoreboard players set Fatigue DungeonRun 0
scoreboard players set CardQueue DungeonRun 0
scoreboard players set ActiveLevel DungeonRun 1
scoreboard players set AscendLevel DungeonRun 1
scoreboard players set DifficultyMod DungeonRun 0
scoreboard players set EchoDifficulty DungeonRun 0
scoreboard players set EchosRequired DungeonRun 0
scoreboard players set BeaconsLit DungeonRun 0
scoreboard players set LBAL DungeonRun 0
scoreboard players set MaxDragonBreath DungeonRun 0
scoreboard players set VoidCache DungeonRun 0



scoreboard players set Level1Echos DungeonRun 0
scoreboard players set Level2Echos DungeonRun 0
scoreboard players set Level3Echos DungeonRun 0
scoreboard players set Level4Echos DungeonRun 0

# Level doors
scoreboard players set 1.keys_to_drop game.level_doors 1
scoreboard players set 2.keys_to_drop game.level_doors 1
scoreboard players set 3.keys_to_drop game.level_doors 1
scoreboard players set 1.got_key game.level_doors 0
scoreboard players set 2.got_key game.level_doors 0
scoreboard players set 3.got_key game.level_doors 0
scoreboard players set 1.opened game.level_doors 0
scoreboard players set 2.opened game.level_doors 0
scoreboard players set 3.opened game.level_doors 0
scoreboard players set 1.keys_dropped game.level_doors 0
scoreboard players set 2.keys_dropped game.level_doors 0
scoreboard players set 3.keys_dropped game.level_doors 0

# Reset resources
scoreboard players set Current.Red game.resources 0
scoreboard players set Current.Aqua game.resources 0
scoreboard players set Current.Green game.resources 0

# Reset default max resources, just to be sure
scoreboard players set Max.Red game.resources 2
scoreboard players set Max.Aqua game.resources 2
scoreboard players set Max.Green game.resources 2
#execute if data storage exigence:dungeon {is_coop:1} run scoreboard players set Max.Red game.resources 2
#execute if data storage exigence:dungeon {is_coop:1} run scoreboard players set Max.Aqua game.resources 2
#execute if data storage exigence:dungeon {is_coop:1} run scoreboard players set Max.Green game.resources 2
scoreboard players set DeckModifier Modifiers 0
scoreboard players set VoidDeckModifier Modifiers 0

# Global Modifiers
scoreboard players set BonusCards Modifiers 0
scoreboard players set Evergrowth Modifiers 0
scoreboard players set EchoCake Modifiers 0
scoreboard players set GoldIdol Modifiers 0
scoreboard players set VoidShopSlots Modifiers 3
scoreboard players set VoidMerchants Modifiers 1
scoreboard players set LuckyFeather Modifiers 0
scoreboard players set Brush Modifiers 0
scoreboard players set Claustrophobia Modifiers 0
scoreboard players set Exigence Modifiers 0
scoreboard players set Tranquility Modifiers 0
scoreboard players set BackupPlan Modifiers 0
scoreboard players set FinalHarvest Modifiers 0
scoreboard players set Ambrosia Modifiers 0
scoreboard players set Concordance Modifiers 0
scoreboard players set Resonance Modifiers 0
scoreboard players set RevealedMirrors Modifiers 0
scoreboard players set Patience Modifiers 0
scoreboard players set Voidscent Modifiers 0
scoreboard players set Chrysopoeia Modifiers 0
scoreboard players set Mending Modifiers 0
scoreboard players set Oblivion Modifiers 0
scoreboard players set Spellbook Modifiers 0
scoreboard players set Metabolism Modifiers 0
scoreboard players set FinalAscension Modifiers 0
scoreboard players set InnerFire Modifiers 0

scoreboard players set #current game.item.clock_marker.id 0

# Dev modififers
scoreboard players set VaultRain DevModifiers 0

# Cards played display
scoreboard players reset * game.cards_played
scoreboard players reset * game.cards_played.times_played
scoreboard players reset * game.cards_played.times_processed
scoreboard players reset * game.cards_played.times_recycled

# Triumph
scoreboard players set tri.Elation game.triumph 0
scoreboard players set tri.Joy game.triumph 0
scoreboard players set tri.Gratification game.triumph 0
scoreboard players set tri.TrueAscension game.triumph 0

scoreboard players set exit.portal.countdown tick_counter 0
