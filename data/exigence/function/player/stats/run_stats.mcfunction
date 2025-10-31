# Display post-run summary sheet

## CONSTRAINTS
#   AS player

#==========================================================================================================

tellraw @s [{text:"-------------------------------------",italic:false,bold:false,color:"gray"}]

# Header
execute if score Difficulty DungeonRun matches ..0 run tellraw @s [{text:"✪ ",italic:false,bold:false,color:"white"},{text:"Run Summary",italic:false,bold:true,color:"gold"},{text:" ✪",italic:false,bold:false,color:"white"}]
execute if score Difficulty DungeonRun matches 1 run tellraw @s [{text:"✪ ",italic:false,bold:false,color:"white"},{text:"Run Summary",italic:false,bold:true,color:"gold"},{text:" ✪",italic:false,bold:false,color:"white"}]
execute if score Difficulty DungeonRun matches 2 run tellraw @s [{text:"✪✪ ",italic:false,bold:false,color:"green"},{text:"Run Summary",italic:false,bold:true,color:"gold"},{text:" ✪✪",italic:false,bold:false,color:"green"}]
execute if score Difficulty DungeonRun matches 3 run tellraw @s [{text:"✪✪✪ ",italic:false,bold:false,color:"blue"},{text:"Run Summary",italic:false,bold:true,color:"gold"},{text:" ✪✪✪",italic:false,bold:false,color:"blue"}]
execute if score Difficulty DungeonRun matches 4 run tellraw @s [{text:"✪✪✪✪ ",italic:false,bold:false,color:"light_purple"},{text:"Run Summary",italic:false,bold:true,color:"gold"},{text:" ✪✪✪✪",italic:false,bold:false,color:"light_purple"}]
execute if score Difficulty DungeonRun matches 5 run tellraw @s [{text:"✪✪✪✪✪ ",italic:false,bold:false,color:"aqua"},{text:"Run Summary",italic:false,bold:true,color:"gold"},{text:" ✪✪✪✪✪",italic:false,bold:false,color:"aqua"}]

# Status
execute if data storage exigence:dungeon {escape_portal:1} run tellraw @s [{text:"✔ Victory",italic:false,bold:true,color:"green"}]
execute if data storage exigence:dungeon {escape_portal:0} run tellraw @s [{text:"✖ Defeat",italic:false,bold:true,color:"red"}]

# If lost, show what killed you(s)
execute if data storage exigence:dungeon {escape_portal:0} if score @s profile.data.enemy.cr.killed_by_blaze matches 1.. run tellraw @s [{text:"   Killed by Blaze",italic:true,bold:false,color:"red"}]
execute if data storage exigence:dungeon {escape_portal:0} if score @s profile.data.enemy.cr.killed_by_creaking matches 1.. run tellraw @s [{text:"   Killed by Creaking",italic:true,bold:false,color:"red"}]
execute if data storage exigence:dungeon {escape_portal:0} if score @s profile.data.enemy.cr.killed_by_endermite matches 1.. run tellraw @s [{text:"   Killed by Endermite",italic:true,bold:false,color:"red"}]
execute if data storage exigence:dungeon {escape_portal:0} if score @s profile.data.enemy.cr.killed_by_ravager matches 1.. run tellraw @s [{text:"   Killed by Ravager",italic:true,bold:false,color:"red"}]
execute if data storage exigence:dungeon {escape_portal:0} if score @s profile.data.enemy.cr.killed_by_vex matches 1.. run tellraw @s [{text:"   Killed by Eyeball",italic:true,bold:false,color:"red"}]
execute if data storage exigence:dungeon {escape_portal:0} if score @s profile.data.enemy.cr.killed_by_warden matches 1.. run tellraw @s [{text:"   Killed by Warden",italic:true,bold:false,color:"red"}]
execute if data storage exigence:dungeon {escape_portal:0} if score @s profile.data.enemy.cr.killed_by_witch matches 1.. run tellraw @s [{text:"    Killed by Witch",italic:true,bold:false,color:"red"}]
execute if data storage exigence:dungeon {escape_portal:0} if score @s profile.data.enemy.cr.killed_by_wither_skeleton matches 1.. run tellraw @s [{text:"   Killed by Wither Skeleton",italic:true,bold:false,color:"red"}]

execute if data storage exigence:dungeon {escape_portal:0} if score @s profile.data.enemy.cr.killed_by_dungeon matches 1.. run tellraw @s [{text:"   Killed by Dungeon",italic:true,bold:false,color:"red"}]
# Dungeon stats
tellraw @s [{text:"\n(Hover to show details)",italic:false,bold:false,color:"dark_gray"}]
function exigence:player/stats/berry/cr
function exigence:player/stats/deck/cr
function exigence:player/stats/effect/cr
function exigence:player/stats/ember/cr
function exigence:player/stats/enemy/cr
function exigence:player/stats/hazard/cr
function exigence:player/stats/menace/cr
function exigence:player/stats/resources/cr
function exigence:player/stats/treasure/cr
function exigence:player/stats/time/cr


tellraw @s [{text:"-------------------------------------",italic:false,bold:false,color:"gray"}]
