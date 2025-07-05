# Display profile total stat sheet

## CONSTRAINTS
#   AS player

#==========================================================================================================

# Newline
tellraw @s [{text:"-------------------------------------",italic:false,bold:false,color:"gray"}]

# Header
tellraw @s [{text:"Profile Stats",italic:false,bold:true,color:"gold"}]
tellraw @s [{text:"\n(Hover to show details)",italic:false,bold:false,color:"dark_gray"}]

# Highest level win:

# Time


# Dungeon stats
function exigence:player/stats/berry/t
function exigence:player/stats/deck/t
function exigence:player/stats/effect/t
function exigence:player/stats/ember/t
function exigence:player/stats/enemy/t
function exigence:player/stats/hazard/t
function exigence:player/stats/menace/t
function exigence:player/stats/resources/t
function exigence:player/stats/runs/t
function exigence:player/stats/time/t
function exigence:player/stats/treasure/t
function exigence:player/stats/trials_temp/t

tellraw @s [{text:"-------------------------------------",italic:false,bold:false,color:"gray"}]
