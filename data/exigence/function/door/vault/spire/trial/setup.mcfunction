# Responsible for setting everything up required for the Spire Trial/Crucible

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Setup spire trial


## COMMON FUNCTIONS
# Reset scores
scoreboard players set @s trial.timer 0

# Add crucible tag if applicable
execute if entity @a[scores={game.player.vault_code=5},tag=Crucible,distance=..64] run tag @s add Crucible

# Copy player id
scoreboard players operation @s hub.entity.player_id = @p[scores={game.player.vault_code=5},distance=..64] career.player_id

# Set fire
execute if entity @s[tag=!Crucible] run function exigence:door/vault/_trial/fire/_set_trial
execute if entity @s[tag=Crucible] run function exigence:door/vault/_trial/fire/_set_crucible

# Add etick so we know to tick it
tag @s add ETICK

# Replace end portal
fill ~7 ~-4 ~7 ~-7 ~-4 ~-7 end_portal replace black_concrete


## SPIRE SPECIFIC
# Reset scores
scoreboard players set @s trial.timer 0
function exigence:door/vault/spire/trial/proc/reset_cooldown

# Center platform
fill ~-1 ~3 ~-1 ~1 ~3 ~1 polished_tuff

# Summon markers
summon minecraft:marker ~ ~3 ~ {Tags:["SpireTrialSetup","SpireCenter"],CustomName:{text:"Marker | SpireCenter"}}
#summon minecraft:marker -355.5 155.0 -9.5 {Tags:["SpireTrialSetup","SpirePosA"],CustomName:{text:"Marker | SpirePosA"}}
#summon minecraft:marker -355.5 155.0 -9.5 {Tags:["SpireTrialSetup","SpirePosB"],CustomName:{text:"Marker | SpirePosB"}}

# First spires
summon minecraft:marker ~3 ~3 ~ {Tags:["SpireTrialSetup","SpireObject","NewSpire"],CustomName:{text:"Marker | Spire"}}
summon minecraft:marker ~-3 ~3 ~ {Tags:["SpireTrialSetup","SpireObject","NewSpire"],CustomName:{text:"Marker | Spire"}}
#execute at @e[type=minecraft:marker,tag=SpireCenter] run summon minecraft:marker ~ ~ ~4 {Tags:["SpireTrialSetup","Spire","NewSpire"],CustomName:{text:"Marker | Spire"}}
#execute at @e[type=minecraft:marker,tag=SpireCenter] run summon minecraft:marker ~ ~ ~-4 {Tags:["SpireTrialSetup","Spire","NewSpire"],CustomName:{text:"Marker | Spire"}}

# Warning on starting platform
# Summon block display
summon block_display ~ ~2.5 ~ {Glowing:1b,Tags:["SpireTrialSetup","SpireWarning"],block_state:{Name:"glass"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,1.5f,-1.5f],scale:[3.0f,0.01f,3.0f]}}
# Add to hazard for red
team join Hazard @e[type=minecraft:block_display,tag=SpireWarning,distance=..5]
