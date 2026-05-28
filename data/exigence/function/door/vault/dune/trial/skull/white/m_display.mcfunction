# Macro to summon item display with rotation

## CONSTRAINTS
#   AT location

## INPUT
#   Float[] Rotation

#====================================================================================================

# DEBUG
execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) Summon skull display

$summon minecraft:item_display ~ ~0.2 ~ {teleport_duration:1,Tags:["NewSkull","White","DuneSkull"],Rotation:$(Rotation),CustomName:{text:"ItemDisplay | DuneSkullWhite"}\
,item:{id:"minecraft:skeleton_skull"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,1f,0f,0f],translation:[0f,0.25f,0f],scale:[1.0f,1.0f,1.0f]}}

playsound minecraft:entity.breeze.shoot hostile @a[tag=TrialSounds_Dune] ~ ~ ~ 1 1

# Initialize cooldown score
scoreboard players set @e[type=minecraft:item_display,tag=NewSkull,distance=..1] trial.object.timer 20

# Remove local tag
tag @e[type=minecraft:item_display,tag=NewSkull,distance=..1] remove NewSkull