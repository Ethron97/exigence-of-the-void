# Responsible for setting everything up required for the Silence Trial/Crucible

#======================================================================================================

# Reset scores
scoreboard players set Silence TrialTimer 0
scoreboard players set SilencePlatform TrialTimer 60

fill -413 151 15 -415 151 13 minecraft:magenta_glazed_terracotta

# Summon setup markers
summon marker -413.5 152.1 14.5 {Tags:["SilenceTrialSetup","SilencePlatform"]}

# Randomize starting direction and prep step
execute store result score #silence_previous Random run random value 0..3
execute as @e[type=marker,tag=SilencePlatform] at @s run function exigence:door/vault/silence/trial/platform/prep_step

# Replace end portal
fill -406 148 22 -422 148 6 end_portal replace black_concrete

# Blue fire
execute if entity @a[scores={game.player.vault_code=3},tag=Crucible] run fill -407 158 7 -421 158 21 minecraft:soul_soil replace minecraft:chiseled_tuff
