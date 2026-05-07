# Called whenever a beacon gets lit to update the title and score

#====================================================================================================

execute if score toggle.beacon debug matches 1 if score debug.level debug matches 3.. run say (D3) Track beacons lit

# Increment total score for win detection
scoreboard players add game.beacons_lit game.state 1

# Display title
data modify storage exigence:beacon text_0 set value {text:"[",color:"gray"}
data modify storage exigence:beacon text_1 set value {text:" x",color:"gray",bold:false}
data modify storage exigence:beacon text_2 set value {text:" x",color:"gray",bold:false}
data modify storage exigence:beacon text_3 set value {text:" x",color:"gray",bold:false}
data modify storage exigence:beacon text_4 set value {text:" x",color:"gray",bold:false}
data modify storage exigence:beacon text_5 set value {text:" ]",color:"gray"}

execute if score beacon.1 game.story.beacons matches 3.. run data modify storage exigence:beacon text_1 set value {text:" 🔥",color:"aqua",bold:false}
execute if score beacon.2 game.story.beacons matches 3.. run data modify storage exigence:beacon text_2 set value {text:" 🔥",color:"aqua",bold:false}
execute if score beacon.3 game.story.beacons matches 3.. run data modify storage exigence:beacon text_3 set value {text:" 🔥",color:"aqua",bold:false}
execute if score beacon.4 game.story.beacons matches 3.. run data modify storage exigence:beacon text_4 set value {text:" 🔥",color:"aqua",bold:false}

function exigence:beacon/node/private/progress_title with storage exigence:beacon

title @a[tag=ActivePlayer] title ""
