# Reset player scoreboards

## CONSTRAINTS
#   AS Player

#=============================================================================================================

## ALTARS
scoreboard players set @s cr_altarsLit 0
scoreboard players set @s cr_altarsUpgraded 0
scoreboard players set @s cr_altarsEnhanced 0
scoreboard players set @s cr_altarsRed 0
scoreboard players set @s cr_menaceReduced 0

## BERRY
scoreboard players set @s cr_berryBushesPicked 0
scoreboard players set @s cr_berryBushesPickedFromSetup 0
scoreboard players set @s cr_berryBushesPickedFromCards 0
scoreboard players set @s cr_berryBushesGrown 0
scoreboard players set @s cr_berryBushesFailed 0
scoreboard players set @s cr_berriesEaten 0

scoreboard players set @s cr_berryBushesFailedL1 0
scoreboard players set @s cr_berryBushesFailedL2 0
scoreboard players set @s cr_berryBushesFailedL3 0
scoreboard players set @s cr_berryBushesFailedL4 0

scoreboard players set @s cr_berryBushesPickedL1 0
scoreboard players set @s cr_berryBushesPickedL2 0
scoreboard players set @s cr_berryBushesPickedL3 0
scoreboard players set @s cr_berryBushesPickedL4 0

scoreboard players set @s cr_berryBushesGrownL1 0
scoreboard players set @s cr_berryBushesGrownL2 0
scoreboard players set @s cr_berryBushesGrownL3 0
scoreboard players set @s cr_berryBushesGrownL4 0

scoreboard players set @s cr_berryBushesPickedFromCardsL1 0
scoreboard players set @s cr_berryBushesPickedFromCardsL2 0
scoreboard players set @s cr_berryBushesPickedFromCardsL3 0
scoreboard players set @s cr_berryBushesPickedFromCardsL4 0

scoreboard players set @s cr_berryBushesPickedFromSetupL1 0
scoreboard players set @s cr_berryBushesPickedFromSetupL2 0
scoreboard players set @s cr_berryBushesPickedFromSetupL3 0
scoreboard players set @s cr_berryBushesPickedFromSetupL4 0


## Deck
scoreboard players set @s cr_cardsSpellbound 0
scoreboard players set @s cr_cardsRecycled 0
scoreboard players set @s cr_cardsProcessedCommon 0
scoreboard players set @s cr_cardsProcessedUncommon 0
scoreboard players set @s cr_cardsProcessedRare 0
scoreboard players set @s cr_cardsProcessedLegendary 0
scoreboard players set @s cr_cardsProcessedCommonVoid 0
scoreboard players set @s cr_cardsProcessedUncommonVoid 0
scoreboard players set @s cr_cardsProcessedRareVoid 0
scoreboard players set @s cr_cardsProcessedLegendaryVoid 0

## EFFECTS
scoreboard players set @s cr_effect_beastsense 0
scoreboard players set @s cr_effect_circulation 0
scoreboard players set @s cr_effect_detection 0
scoreboard players set @s cr_effect_detectthoughts 0
scoreboard players set @s cr_effect_farstep 0
scoreboard players set @s cr_effect_flicker 0
scoreboard players set @s cr_effect_glimmer 0
scoreboard players set @s cr_effect_invisibility 0
scoreboard players set @s cr_effect_jump 0
scoreboard players set @s cr_effect_jump4 0
scoreboard players set @s cr_effect_jump6 0
scoreboard players set @s cr_effect_jump8 0
scoreboard players set @s cr_effect_regen 0
scoreboard players set @s cr_effect_speed1 0
scoreboard players set @s cr_effect_speed2 0
scoreboard players set @s cr_effect_speed3 0
scoreboard players set @s cr_effect_speed4 0
scoreboard players set @s cr_effect_speed5 0
scoreboard players set @s cr_effect_speed6 0
scoreboard players set @s cr_effect_speed7 0
scoreboard players set @s cr_effect_speed8 0
scoreboard players set @s cr_effect_speed9 0
scoreboard players set @s cr_effect_speed10 0

execute as @s run function exigence:player/effects/reset_active_effects

## EMBER
scoreboard players set @s cr_embersPickedUp 0
scoreboard players set @s cr_embersPickedUpL1 0
scoreboard players set @s cr_embersPickedUpL2 0
scoreboard players set @s cr_embersPickedUpL3 0
scoreboard players set @s cr_embersPickedUpL4 0
scoreboard players set @s cr_embersEchoPickedUp 0
scoreboard players set @s cr_embersEchoPickedUpL1 0
scoreboard players set @s cr_embersEchoPickedUpL2 0
scoreboard players set @s cr_embersEchoPickedUpL3 0
scoreboard players set @s cr_embersEchoPickedUpL4 0
scoreboard players set @s cr_embersDropped 0
scoreboard players set @s cr_embersDroppedL1 0
scoreboard players set @s cr_embersDroppedL2 0
scoreboard players set @s cr_embersDroppedL3 0
scoreboard players set @s cr_embersDroppedL4 0
scoreboard players set @s cr_embersEchoDropped 0
scoreboard players set @s cr_embersEchoDroppedL1 0
scoreboard players set @s cr_embersEchoDroppedL2 0
scoreboard players set @s cr_embersEchoDroppedL3 0
scoreboard players set @s cr_embersEchoDroppedL4 0
scoreboard players set @s cr_echosPickedUp 0
scoreboard players set @s cr_echosPickedUpL1 0
scoreboard players set @s cr_echosPickedUpL2 0
scoreboard players set @s cr_echosPickedUpL3 0
scoreboard players set @s cr_echosPickedUpL4 0

scoreboard players set @s cr_emberPing 0
scoreboard players set @s cr_echosLost 0

## ENEMY
scoreboard players set @s KilledByBlaze 0
scoreboard players set @s KilledByRavager 0
scoreboard players set @s KilledByWarden 0
scoreboard players set @s KilledByWitch 0
scoreboard players set @s KilledByWitherSkeleton 0
scoreboard players set @s KilledByCreaking 0
scoreboard players set @s KilledByVex 0
scoreboard players set @s cr_killedByRavager 0
scoreboard players set @s cr_killedByWarden 0
scoreboard players set @s cr_killedByWitherSkeleton 0
scoreboard players set @s cr_killedByWitch 0
scoreboard players set @s cr_killedByVex 0
scoreboard players set @s cr_killedByBlaze 0
scoreboard players set @s cr_killedByCreaking 0
scoreboard players set @s cr_killedByEndermite 0
scoreboard players set @s cr_killedByDungeon 0
scoreboard players set @s cr_wardensAngered 0

## GAMEPLAY
scoreboard players set @s cr_potsBroken 0
scoreboard players set @s cr_sculkSteps 0
scoreboard players set @s cr_menaceNodes 0

scoreboard players set @s cr_menaceTotal 0
scoreboard players set @s cr_menaceFromSculk 0
scoreboard players set @s cr_menaceFromNode 0
scoreboard players set @s cr_menaceFromFatigue 0
scoreboard players set @s cr_menaceFromOther 0
scoreboard players set @s cr_menaceExtraTotal 0
scoreboard players set @s cr_menaceExtraFromSculk 0
scoreboard players set @s cr_menaceExtraFromNode 0
scoreboard players set @s cr_menaceExtraFromFatigue 0
scoreboard players set @s cr_menaceExtraFromOther 0

scoreboard players set @s cr_bellsRung 0
scoreboard players set @s cr_ravagerGlass 0

## GAME TIME
scoreboard players set cr_gameTicks TickCounter 0
scoreboard players set @s cr_maxMenaceTicks 0
scoreboard players set @s cr_regulationTicks 0
scoreboard players set @s cr_ticksDead 0

scoreboard players set @s cr_ticksAliveL1 0
scoreboard players set @s cr_ticksAliveL2 0
scoreboard players set @s cr_ticksAliveL3 0
scoreboard players set @s cr_ticksAliveL4 0
scoreboard players set @s cr_maxMenaceTicksL1 0
scoreboard players set @s cr_maxMenaceTicksL2 0
scoreboard players set @s cr_maxMenaceTicksL3 0
scoreboard players set @s cr_maxMenaceTicksL4 0

## HAZARD
scoreboard players set @s cr_hazardL1 0
scoreboard players set @s cr_hazardL2 0
scoreboard players set @s cr_hazardL3 0
scoreboard players set @s cr_hazardL4 0
scoreboard players set @s cr_hazardSetupL1 0
scoreboard players set @s cr_hazardSetupL2 0
scoreboard players set @s cr_hazardSetupL3 0
scoreboard players set @s cr_hazardSetupL4 0
scoreboard players set @s cr_hazardOtherL1 0
scoreboard players set @s cr_hazardOtherL2 0
scoreboard players set @s cr_hazardOtherL3 0
scoreboard players set @s cr_hazardOtherL4 0
scoreboard players set @s cr_hazardCardL1 0
scoreboard players set @s cr_hazardCardL2 0
scoreboard players set @s cr_hazardCardL3 0
scoreboard players set @s cr_hazardCardL4 0
scoreboard players set @s cr_hazardBellL1 0
scoreboard players set @s cr_hazardBellL2 0
scoreboard players set @s cr_hazardBellL3 0
scoreboard players set @s cr_hazardBellL4 0


## MODIFIERS
scoreboard players set @s mod_BeastVision 0
scoreboard players set @s mod_BerryVision 0
scoreboard players set @s mod_CoinKeep 0
scoreboard players set @s mod_Detection 0
scoreboard players set @s mod_DragonBreath 0
scoreboard players set @s mod_EmberLantern 0
scoreboard players set @s mod_Flicker 0
scoreboard players set @s mod_Glimmer 0
scoreboard players set @s mod_GlintKeep 0
scoreboard players set @s mod_LootBoots 0
scoreboard players set @s mod_MirrorVision 0
scoreboard players set @s mod_PanicBoots 0
scoreboard players set @s mod_ResearchKeep 0
scoreboard players set @s mod_SculkBoots 0
scoreboard players set @s mod_TreasureLantern 0
scoreboard players set @s mod_VaultKeep 0
scoreboard players set @s mod_WaterCrystal 0
scoreboard players set @s mod_Magnet 0
scoreboard players set @s mod_Heighten 0
scoreboard players set @s mod_WarPaint 0
scoreboard players set @s mod_VoidBundle 0
scoreboard players set @s mod_VoidCrystal 0
scoreboard players set @s mod_Catalyst 0
scoreboard players set @s mod_Accelerate 0
scoreboard players set @s mod_calc_Heighten 0
scoreboard players set @s mod_RavagerHoof 0
scoreboard players set @s mod_GatheringStorm 0
scoreboard players set @s mod_SunPlate 0
scoreboard players set @s mod_PhantomScales 0
scoreboard players set @s mod_RegenMantle 0
scoreboard players set @s mod_calc_HealthBoost 0
scoreboard players set @s mod_EnchantedBook 0

## RESOURCES
scoreboard players set @s cr_consumedAqua 0
scoreboard players set @s cr_consumedGreen 0
scoreboard players set @s cr_consumedRed 0
scoreboard players set @s cr_generatedAqua 0
scoreboard players set @s cr_generatedGreen 0
scoreboard players set @s cr_generatedRed 0
scoreboard players set @s cr_overflowAqua 0
scoreboard players set @s cr_overflowGreen 0
scoreboard players set @s cr_overflowRed 0
scoreboard players set @s cr_underflowAqua 0
scoreboard players set @s cr_underflowGreen 0
scoreboard players set @s cr_underflowRed 0

## SOUNDS
scoreboard players set @s PingEchoCooldown 20
scoreboard players set @s PingFlameCooldown 20
scoreboard players set @s PingKeyCooldown 20
scoreboard players set @s PingVaultKeyCooldown 20

scoreboard players set @s PingEchoDistance 10
scoreboard players set @s PingFlameDistance 10
scoreboard players set @s PingKeyDistance 10
scoreboard players set @s PingVaultKeyDistance 10

## TREASURE
#   COINS
scoreboard players set @s cr_coinsDropped 0
scoreboard players set @s cr_coinsDroppedL1 0
scoreboard players set @s cr_coinsDroppedL2 0
scoreboard players set @s cr_coinsDroppedL3 0
scoreboard players set @s cr_coinsDroppedL4 0
scoreboard players set @s cr_coinsPickedUp 0
scoreboard players set @s cr_coinsPickedUpL1 0
scoreboard players set @s cr_coinsPickedUpL2 0
scoreboard players set @s cr_coinsPickedUpL3 0
scoreboard players set @s cr_coinsPickedUpL4 0
#   "BONUS" COINS - Coins that were dropped on a non-active level (ie, player on leve 1, bonus coins
#       are the ones that spawn on levels 2-3-4 if difficulty is high enough)
scoreboard players set @s cr_coinsBonusPickedUp 0
scoreboard players set @s cr_coinsBonusDropped 0
scoreboard players set @s cr_coinsBonusDroppedL1 0
scoreboard players set @s cr_coinsBonusDroppedL2 0
scoreboard players set @s cr_coinsBonusDroppedL3 0
scoreboard players set @s cr_coinsBonusDroppedL4 0
scoreboard players set @s cr_coinsBonusPickedUpL1 0
scoreboard players set @s cr_coinsBonusPickedUpL2 0
scoreboard players set @s cr_coinsBonusPickedUpL3 0
scoreboard players set @s cr_coinsBonusPickedUpL4 0
#   OTHER TREASURE
scoreboard players set @s cr_researchPotPickedUp 0
scoreboard players set @s cr_researchPickedUp 0
scoreboard players set @s cr_moneyPickedUp 0
#   TREASURE QUEUE
scoreboard players set @s cr_treasureQueuePassive 0
scoreboard players set @s cr_treasureQueueCard 0
scoreboard players set @s cr_treasureQueueCirculation 0
scoreboard players set @s cr_treasurePing 0

#   SOURCE-SPECIFIC SCORES
scoreboard players set @s cr_coindrop_passive 0
scoreboard players set @s cr_coindrop_treasure_hunter 0
scoreboard players set @s cr_coindrop_herbalism 0
scoreboard players set @s cr_coindrop_fallow_coffers 0
scoreboard players set @s cr_coindrop_trust_fund 0
scoreboard players set @s cr_coindrop_loot_and_fruit 0
scoreboard players set @s cr_coindrop_loot_and_scoot 0
scoreboard players set @s cr_coindrop_prosperity 0
scoreboard players set @s cr_coindrop_circulation 0
scoreboard players set @s cr_coindrop_patience 0
scoreboard players set @s cr_coindrop_opulance 0
scoreboard players set @s cr_coindrop_cash_crop 0

scoreboard players set @s cr_coinpickup_passive 0
scoreboard players set @s cr_coinpickup_treasure_hunter 0
scoreboard players set @s cr_coinpickup_herbalism 0
scoreboard players set @s cr_coinpickup_fallow_coffers 0
scoreboard players set @s cr_coinpickup_trust_fund 0
scoreboard players set @s cr_coinpickup_loot_and_fruit 0
scoreboard players set @s cr_coinpickup_loot_and_scoot 0
scoreboard players set @s cr_coinpickup_prosperity 0
scoreboard players set @s cr_coinpickup_circulation 0
scoreboard players set @s cr_coinpickup_patience 0
scoreboard players set @s cr_coinpickup_opulance 0
scoreboard players set @s cr_coinpickup_cash_crop 0

scoreboard players set @s cr_coinpickup_chrysopoeia 0

scoreboard players set @s cr_treasureping_passive 0
scoreboard players set @s cr_treasureping_treasure_hunter 0
scoreboard players set @s cr_treasureping_herbalism 0
scoreboard players set @s cr_treasureping_fallow_coffers 0
scoreboard players set @s cr_treasureping_trust_fund 0
scoreboard players set @s cr_treasureping_loot_and_fruit 0
scoreboard players set @s cr_treasureping_loot_and_scoot 0
scoreboard players set @s cr_treasureping_prosperity 0
scoreboard players set @s cr_treasureping_circulation 0
scoreboard players set @s cr_treasureping_patience 0
scoreboard players set @s cr_treasureping_opulance 0
scoreboard players set @s cr_treasureping_cash_crop 0






## VAULTS
scoreboard players set @s cr_vaultKeysDropped 0
scoreboard players set @s cr_vaultKeysPickedUp 0
scoreboard players set @s cr_vaultsOpened 0

## VARIABLE
scoreboard players set @s DrinkPotion 0
scoreboard players set @s[scores={HoldPotion=1..}] HoldPotion 0

## WINLOSS
scoreboard players set @s EchoFragments 0

scoreboard players set @s cr_deaths 0
scoreboard players set @s dead 0

scoreboard players set @s cr_damageTakenSinceLastDeath 0
scoreboard players set @s cr_damageTaken 0
scoreboard players set @s damageTaken 0
scoreboard players set @s cr_damageAbsorbed 0
scoreboard players set @s damageAbsorbed 0

scoreboard players set @s CarrotOnStick 0
scoreboard players set @s Snowball 0

scoreboard players set @s ActiveLevel 1
scoreboard players set @s Respawning 0

scoreboard players set @s VoidShopping 0
scoreboard players set @s VaultCode 0

# Initialize
scoreboard players add @s t_level1Wins 0
scoreboard players add @s t_level2Wins 0
scoreboard players add @s t_level3Wins 0






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

# Reset DialogueTracker GAME scores
scoreboard players set Supplier DialogueGame 0
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/match_bookshelf=false}] run scoreboard players set Scientist DialogueGame 0
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/match_bookshelf=true}] run scoreboard players set Scientist DialogueGame 6
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/light_altars=false}] run scoreboard players set Petitioner DialogueGame 0
execute if entity @a[tag=ActivePlayer,advancements={exigence:story/light_altars=true}] run scoreboard players set Petitioner DialogueGame 4

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

