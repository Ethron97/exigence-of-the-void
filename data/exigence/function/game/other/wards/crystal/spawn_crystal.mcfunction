# summon new crystal ward on level 4

## INPUT
#   STR color - "Ruby", "Sapphire", "Emerald", "Topaz", "Amethyst"

#============================================================================================================

# Select random level 4 echo or menace node
tag @e[type=armor_stand,tag=EchoNode,scores={ObjectLevel=4},tag=!ChosenEchoNode,tag=!ChosenCrystal] add CrystalCandidate
tag @e[type=armor_stand,tag=MenaceNode,scores={ObjectLevel=4},tag=!Ravagered,tag=!ChosenCrystal] add CrystalCandidate

execute unless entity @e[tag=CrystalCandidate] run say No crystal candidate found
execute unless entity @e[tag=CrystalCandidate] run return 1

tag @e[type=armor_stand,tag=CrystalCandidate,sort=random,limit=1] add NewChosenCrystal
tag @e[type=armor_stand,tag=NewChosenCrystal] add ChosenCrystal

execute unless entity @e[tag=NewChosenCrystal] run say No chosen crystal found
execute unless entity @e[tag=NewChosenCrystal] run return 1

# Summon interaction
$execute at @e[type=armor_stand,tag=NewChosenCrystal] run summon minecraft:interaction ~ ~1 ~ {Tags:[NewCrystal,Crystal,$(color)],response:1b}

# Give data etc
scoreboard players set @e[type=minecraft:interaction,tag=NewCrystal] ObjectLevel 4

# Copy node id
scoreboard players operation @e[type=minecraft:interaction,tag=NewCrystal] game.story.ward_crystal.node_id = @e[type=armor_stand,tag=NewChosenCrystal] NodeID

# Setup block displays
$execute as @e[type=minecraft:interaction,tag=NewCrystal] if score ward.$(color) game.story.wards matches 1.. run function exigence:game/other/wards/crystal/setup_display
$execute as @e[type=minecraft:interaction,tag=NewCrystal] if score ward.$(color) game.story.wards matches 2.. run function exigence:game/other/wards/crystal/setup_display
$execute as @e[type=minecraft:interaction,tag=NewCrystal] if score ward.$(color) game.story.wards matches 3.. run function exigence:game/other/wards/crystal/setup_display

# Set conduit block
execute at @e[type=minecraft:interaction,tag=NewCrystal] run setblock ~ ~ ~ conduit[waterlogged=false]

# Remove local tags
tag @e[type=armor_stand,tag=CrystalCandidate] remove CrystalCandidate
tag @e[type=armor_stand,tag=NewChosenCrystal] remove NewChosenCrystal
tag @e[type=interaction,tag=NewCrystal] remove NewCrystal
