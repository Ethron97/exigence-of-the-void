# Reset game scoreboards

## CONSTRAINTS
#   should be called after activeplayers are assigned

#=============================================================================================================

# Reset DialogueTracker GAME scores
scoreboard players set Supplier DialogueGame 0
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/match_bookshelf=false}] run scoreboard players set Scientist DialogueGame 0
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/match_bookshelf=true}] run scoreboard players set Scientist DialogueGame 6
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/light_altars=false}] run scoreboard players set Petitioner DialogueGame 0
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/light_altars=true}] run scoreboard players set Petitioner DialogueGame 4

## GAME TIME
scoreboard players set cr_gameTicks TickCounter 0

# Cooldowns
scoreboard players set CardDrawCooldown TickCounter 0
scoreboard players set CardPlayCooldown TickCounter 0
scoreboard players set @e[scores={RavagerAttractCooldown=1..}] RavagerAttractCooldown 0
scoreboard players set @e[type=minecraft:ravager] GlowRemaining 0
scoreboard players set @e[type=minecraft:warden] GlowRemaining 0
scoreboard players set @e[type=minecraft:enderman] GlowRemaining 0
scoreboard players set FloatingFlameCooldown TickCounter 0

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

scoreboard players set MirrorMineKeys DungeonRun 1
scoreboard players set TempleOfFervorKeys DungeonRun 1
scoreboard players set ArdorsBaneKeys DungeonRun 1

scoreboard players set GotMirrorMineKey DungeonRun 0
scoreboard players set GotTempleOfFervorKey DungeonRun 0
scoreboard players set GotArdorsBaneKey DungeonRun 0

scoreboard players set Level1Echos DungeonRun 0
scoreboard players set Level2Echos DungeonRun 0
scoreboard players set Level3Echos DungeonRun 0
scoreboard players set Level4Echos DungeonRun 0


# Reset resources
scoreboard players set Red Resources 0
scoreboard players set Aqua Resources 0
scoreboard players set Green Resources 0
scoreboard players set RedNeeded Resources 0
scoreboard players set AquaNeeded Resources 0
scoreboard players set GreenNeeded Resources 0

# Reset default max resources, just to be sure
scoreboard players set MaxRed Resources 2
scoreboard players set MaxAqua Resources 2
scoreboard players set MaxGreen Resources 2
#execute if data storage exigence:dungeon {is_coop:1} run scoreboard players set MaxRed Resources 2
#execute if data storage exigence:dungeon {is_coop:1} run scoreboard players set MaxAqua Resources 2
#execute if data storage exigence:dungeon {is_coop:1} run scoreboard players set MaxGreen Resources 2
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

scoreboard players set #current ClockID 0

# Dev modififers
scoreboard players set VaultRain DevModifiers 0

# Key hover cooldowns
scoreboard players set LevelKeyHover TickCounter 0

# Cards played display
scoreboard players reset * CardsPlayed
scoreboard players reset * TimesPlayed
scoreboard players reset * TimesProcessed
scoreboard players reset * TimesRecycled

# Triumph
scoreboard players set Elation Triumph 0
scoreboard players set Joy Triumph 0
scoreboard players set Gratification Triumph 0
scoreboard players set TrueAscension Triumph 0


scoreboard players set Portal TickCounter 0

