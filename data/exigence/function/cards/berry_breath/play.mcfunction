say Each ravager on your level tries to eat the nearest berry bush. +20s Beast Sense per bush eaten.

# Track how many berries got eaten
scoreboard players set #berries_eaten Temp 0
scoreboard players set #berries_eaten_time Temp 0

# Ravagers try to eat berries (if at least one player is on the same level as the ravager)
execute if entity @a[scores={dead=0,game.player.active_level=1},tag=ActivePlayer] \
as @e[x=-271,y=-55,z=-113,dx=-118,dy=92,dz=-153,type=minecraft:ravager] run function exigence:cards/berry_breath/private/try_eat

execute if entity @a[scores={dead=0,game.player.active_level=2},tag=ActivePlayer] \
as @e[x=-366,y=13,z=-106,dx=-118,dy=107,dz=-178,type=minecraft:ravager] run function exigence:cards/berry_breath/private/try_eat

execute if entity @a[scores={dead=0,game.player.active_level=3},tag=ActivePlayer] \
as @e[x=-306,y=113,z=33,dx=-168,dy=60,dz=-132,type=minecraft:ravager] run function exigence:cards/berry_breath/private/try_eat

execute if entity @a[scores={dead=0,game.player.active_level=4},tag=ActivePlayer] \
as @e[x=-520,y=180,z=-287,dx=340,dy=200,dz=340,type=minecraft:ravager] run function exigence:cards/berry_breath/private/try_eat

# Give combined effect to all players based on berries eaten
scoreboard players operation #berries_eaten_time Temp = #berries_eaten Temp
#   +20 seconds per berry
scoreboard players operation #berries_eaten_time Temp *= 20 number

# Player feedback:
tellraw @a[tag=ActivePlayer] [{text:" └ ",color:gray},{score:{name:"#berries_eaten",objective:"Temp"},color:"dark_green"},{text:" berries eaten "}\
,{text:"-> ",color:"yellow"},{text:"+",color:"green"},{score:{name:"#berries_eaten_time",objective:"Temp"},color:"green"},{text:" seconds of ",color:"gray"},{text:"Beastsense",color:yellow}]

#   *20 to convert to ticks
scoreboard players operation #berries_eaten_time Temp *= 20 number

# Give time to all players
execute store result storage exigence:player_effects duration int 1 run scoreboard players get #berries_eaten_time Temp
data modify storage exigence:player_effects effect set value 'beastsense'
function exigence:player/effects/add_effect_time_card with storage exigence:player_effects