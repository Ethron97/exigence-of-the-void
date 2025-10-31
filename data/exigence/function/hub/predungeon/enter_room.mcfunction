# From lockerroom

say Enter predungeon

# Save/remove chests
function exigence:hub/locker_room/save_chests

function exigence:deck/process/analyze_deck

# Tag swap
tag @s remove Lockerroom
tag @s add Predungeon
team join Predungeon @s

# Teleport
teleport @s ~ ~ ~-3
playsound minecraft:entity.enderman.teleport ambient @s ~ ~1000 ~ 1000 1

# Remind player of their profile difficulty:
execute if score @s profile.profile_difficulty matches -1 run tellraw @s [{text:"Profile Difficulty: ",color:"gray"},{text:"Free Play?",color:"#09ff00"}]
execute if score @s profile.profile_difficulty matches 0 run tellraw @s [{text:"Profile Difficulty: ",color:"gray"},{text:"Radiant",color:"yellow"}]
execute if score @s profile.profile_difficulty matches 1 run tellraw @s [{text:"Profile Difficulty: ",color:"gray"},{text:"Ancient",color:"gold"}]
execute if score @s profile.profile_difficulty matches 2 run tellraw @s [{text:"Profile Difficulty: ",color:"gray"},{text:"Ascendant",color:"dark_purple"}]
execute if score @s profile.profile_difficulty matches 3 run tellraw @s [{text:"Profile Difficulty: ",color:"gray"},{text:"Exigent",color:"dark_purple"}]

# Remind player of the Echo Selection:
execute if data storage exigence:dungeon_settings {echo_selection_type:0} run tellraw @s [{text:"Echo Selection: ",color:"gray"},{text:"Standard",color:"aqua"}]
# Flat has a higher chance of being 1 or 5, as with Standard distribution the more populated tiers are weighted
execute if data storage exigence:dungeon_settings {echo_selection_type:1} run tellraw @s [{text:"Echo Selection: ",color:"gray"},{text:"Flat",color:"aqua"}]
execute if data storage exigence:dungeon_settings {echo_selection_type:2} run tellraw @s [{text:"Echo Selection: ",color:"gray"},{text:"Accelerated",color:"aqua"}]

# Update deck analysis display
function exigence:hub/predungeon/private/update_analysis_display

# Validate buttons
function exigence:hub/predungeon/private/validate_buttons

# Currency warn maybe
function exigence:hub/predungeon/private/currency_warn

# Update "highest win" display
function exigence:hub/predungeon/private/update_highest_win_display
