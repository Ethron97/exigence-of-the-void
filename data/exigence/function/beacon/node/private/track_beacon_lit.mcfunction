# Called whenever a beacon gets lit to update the title and score

## CONSTRAINTS
#   AS beacon node

#====================================================================================================

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Track beacons lit

# Increment total score for win detection
scoreboard players add game.beacons_lit game.state 1

# Increment lit score
execute if score @s node.property.object_level matches 1 run scoreboard players add lit.1 game.story.beacons 1
execute if score @s node.property.object_level matches 2 run scoreboard players add lit.2 game.story.beacons 1
execute if score @s node.property.object_level matches 3 run scoreboard players add lit.3 game.story.beacons 1
execute if score @s node.property.object_level matches 4 run scoreboard players add lit.4 game.story.beacons 1

# Display title
data modify storage exigence:beacon text_0 set value {text:"[",color:"gray"}
data modify storage exigence:beacon text_1 set value {text:" x",color:"gray",bold:false}
data modify storage exigence:beacon text_2 set value {text:" x",color:"gray",bold:false}
data modify storage exigence:beacon text_3 set value {text:" x",color:"gray",bold:false}
data modify storage exigence:beacon text_4 set value {text:" xxx",color:"gray",bold:false}
data modify storage exigence:beacon text_5 set value {text:" ]",color:"gray"}

execute if score lit.1 game.story.beacons matches 1 run data modify storage exigence:beacon text_1 set value [{text:" 🔥",color:"aqua",bold:false}]
execute if score lit.2 game.story.beacons matches 1 run data modify storage exigence:beacon text_2 set value [{text:" 🔥",color:"aqua",bold:false}]
execute if score lit.3 game.story.beacons matches 1 run data modify storage exigence:beacon text_3 set value [{text:" 🔥",color:"aqua",bold:false}]
execute if score lit.4 game.story.beacons matches 1 run data modify storage exigence:beacon text_4 set value [{text:" 🔥",color:"aqua",bold:false},{text:"xx",color:"gray",bold:false}]
execute if score lit.4 game.story.beacons matches 2 run data modify storage exigence:beacon text_4 set value [{text:" 🔥🔥",color:"aqua",bold:false},{text:"x",color:"gray",bold:false}]
execute if score lit.4 game.story.beacons matches 3 run data modify storage exigence:beacon text_4 set value [{text:" 🔥🔥🔥",color:"aqua",bold:false}]

function exigence:beacon/node/private/progress_title with storage exigence:beacon

title @a[tag=ActivePlayer] title ""
