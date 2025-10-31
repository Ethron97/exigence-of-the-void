# Responsible for setting everything up required for the Spire Trial/Crucible

#======================================================================================================

# Reset scores
scoreboard players set Spire TrialTimer 0
function exigence:door/vault/spire/trial/proc/reset_cooldown

# Replace end portal
fill -364 148 -18 -347 148 -2 end_portal replace black_concrete

# Center platform
fill -355 155 -9 -357 155 -11 polished_tuff

# Summon markers
summon marker -355.5 155.0 -9.5 {Tags:["SpireTrialSetup","SpireCenter"]}
#summon marker -355.5 155.0 -9.5 {Tags:["SpireTrialSetup","SpirePosA"]}
#summon marker -355.5 155.0 -9.5 {Tags:["SpireTrialSetup","SpirePosB"]}

# First spires
execute at @e[type=marker,tag=SpireCenter] run summon minecraft:marker ~3 ~ ~ {Tags:["SpireTrialSetup","Spire","NewSpire"]}
execute at @e[type=marker,tag=SpireCenter] run summon minecraft:marker ~-3 ~ ~ {Tags:["SpireTrialSetup","Spire","NewSpire"]}
#execute at @e[type=marker,tag=SpireCenter] run summon minecraft:marker ~ ~ ~4 {Tags:["SpireTrialSetup","Spire","NewSpire"]}
#execute at @e[type=marker,tag=SpireCenter] run summon minecraft:marker ~ ~ ~-4 {Tags:["SpireTrialSetup","Spire","NewSpire"]}

# Warning on starting platform
# Summon block display
summon block_display -355.5 154.5 -9.5 {Glowing:1b,Tags:["SpireTrialSetup","SpireWarning"],block_state:{Name:"glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,1.5f,-1.5f],scale:[3.0f,0.01f,3.0f]}}

# Add to hazard for red
team join Hazard @e[type=block_display,tag=SpireWarning]

# Replace fire with soulfire
execute if entity @a[scores={game.player.vault_code=5},tag=Crucible] run fill -363 158 -3 -349 158 -17 minecraft:soul_soil replace minecraft:chiseled_tuff
