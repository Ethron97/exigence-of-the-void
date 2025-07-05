# Called when player presses a difficulty button
# function exigence:hub/predungeon/try_enter_dungeon {difficulty:X}
# call as lead/closest player

say Try enter dungeon (level 1)

# Set difficulty
scoreboard players set Difficulty DungeonRun 1
scoreboard players operation ProfileDifficulty DungeonRun = @s ProfileDifficulty

# Validate
function exigence:hub/predungeon/private/validate


# Select "active" playernode
tag @e[type=armor_stand,tag=PlayerNode] remove Active
scoreboard players operation #temp PlayerID = @s PlayerID
execute as @e[type=minecraft:armor_stand,tag=PlayerNode] if score @s PlayerID = #temp PlayerID run tag @s add Active
data modify storage exigence:hub valid_coop set value true
execute if entity @a[tag=Coop] run function exigence:hub/predungeon/private/coop_validate


# If valid items false, kickback
#execute unless data storage exigence:hub {valid_items:true,too_many_copies:false,valid_cards:true} run tp @a[tag=Lockerroom] -260.5 17.0 -59.5
#execute unless data storage exigence:hub {valid_items:true,too_many_copies:false,valid_cards:true} run playsound entity.enderman.teleport ambient @a ~ ~10000 ~ 1 1 1

# If valid items is true and too_many_copies is false, enter room
execute if data storage exigence:hub {valid_items:true,too_many_copies:false,valid_cards:true,valid_coop:true} run function exigence:hub/predungeon/enter_dungeon
