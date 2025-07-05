# Called by hub_tick each tick if tutorial is active

# Check for carrot click
execute if entity @a[tag=Tutorial,scores={CarrotOnStick=1..}] run function exigence:tutorial/leave_tutorial

# Bells
function exigence:bell/bell_tick

# Ravager glass
function exigence:game/game_tick/ravager_glass/ravager_glass_tick

# ALTARS
# Inactive altars
execute at @e[type=minecraft:armor_stand,tag=AltarNode,scores={NodeState=0..1}] if score SecondsCooldown TickCounter matches 7 run particle minecraft:glow ~ ~0.5 ~ 0.2 0.2 0.2 0 1
execute at @e[type=minecraft:armor_stand,tag=AltarNode,scores={NodeState=0..1}] if score SecondsCooldown TickCounter matches 17 run particle minecraft:glow ~ ~0.5 ~ 0.2 0.2 0.2 0 1
# Radiant altars
execute at @e[type=minecraft:armor_stand,tag=AltarNode,scores={NodeState=2}] run particle minecraft:soul_fire_flame ~ ~1 ~ 0.3 0.5 0.3 0 3

# ECHO SHARD
execute as @e[type=minecraft:item,tag=EchoShard] run scoreboard players add @s AmbientNoiseCooldown 0
# Ambient particles around the Echo Shard
execute at @e[type=minecraft:item,tag=EchoShard] if score SecondsCooldown TickCounter matches 5 run particle minecraft:end_rod ~ ~0.5 ~ 0.5 0.3 0.5 0 2

# Ambient tinkle around the Echo Shard
execute at @a[tag=Tutorial] as @e[type=minecraft:item,tag=EchoShard,sort=nearest,limit=1] if score @s AmbientNoiseCooldown matches 0 run function exigence:tutorial/ping_echo

# remove compass when player is close
execute as @a[tag=Tutorial] at @s as @e[type=minecraft:armor_stand,tag=ChosenEchoNode,sort=nearest,limit=1] store result storage exigence:compass echo_id int 1 run scoreboard players get @s EchoID
execute as @a[tag=Tutorial] at @s if entity @e[distance=..2,type=minecraft:armor_stand,tag=ChosenEchoNode] run function exigence:player/clear/echo_compass with storage exigence:compass

# kill carrot on stick on ground
kill @e[type=minecraft:item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}}]

# Give new stick if they don't have one
give @a[tag=Tutorial,nbt=!{Inventory:[{id:"minecraft:carrot_on_a_stick"}]}] minecraft:carrot_on_a_stick[custom_name=[{text:"Exit Tutorial",color:"red",italic:false}]]


execute if score Step Tutorial matches 1 if entity @a[tag=Tutorial,scores={PlayerX=-263..}] run function exigence:tutorial/step
execute if score Step Tutorial matches 2 if entity @a[tag=Tutorial,scores={PlayerX=-261..}] run function exigence:tutorial/step
execute if score Step Tutorial matches 3 if entity @a[tag=Tutorial,scores={PlayerX=-258..}] run function exigence:tutorial/step
execute if score Step Tutorial matches 4 if entity @a[tag=Tutorial,scores={PlayerX=-255..}] run function exigence:tutorial/step
execute if score Step Tutorial matches 5 if entity @a[tag=Tutorial,scores={PlayerX=-252..}] run function exigence:tutorial/step
execute if score Step Tutorial matches 6 if entity @a[tag=Tutorial,scores={PlayerX=-249..}] run function exigence:tutorial/step
execute if score Step Tutorial matches 7 if entity @a[tag=Tutorial,scores={PlayerX=-247..}] run function exigence:tutorial/step

execute if score Step Tutorial matches 100 if entity @a[tag=Tutorial,scores={PlayerZ=..-125,PlayerX=..-250}] run function exigence:tutorial/step

execute if score Step Tutorial matches 101..199 run function exigence:tutorial/steps/ravager_loop

execute if score Step Tutorial matches 200 run function exigence:tutorial/step

execute if score Step Tutorial matches 201 if entity @a[tag=Tutorial,scores={PlayerX=..-260}] run function exigence:tutorial/step

execute if score Step Tutorial matches 300 if entity @a[tag=Tutorial,scores={PlayerX=..-263,PlayerZ=..-138}] run function exigence:tutorial/step
execute if score Step Tutorial matches 301 if entity @a[tag=Tutorial,scores={PlayerX=..-263,PlayerZ=..-139}] run function exigence:tutorial/step
execute if score Step Tutorial matches 302 if entity @a[tag=Tutorial,scores={PlayerX=..-263,PlayerZ=..-140}] run function exigence:tutorial/step
execute if score Step Tutorial matches 303 if entity @a[tag=Tutorial,scores={PlayerX=..-263,PlayerZ=..-141}] run function exigence:tutorial/step
execute if score Step Tutorial matches 304 if entity @a[tag=Tutorial,scores={PlayerX=..-263,PlayerZ=..-142}] run function exigence:tutorial/step
execute if score Step Tutorial matches 305 if entity @a[tag=Tutorial,scores={PlayerX=-260..,PlayerZ=..-150}] run function exigence:tutorial/step

execute if score Step Tutorial matches 400 if entity @a[tag=Tutorial,scores={PlayerX=-250..}] run function exigence:tutorial/step
execute if score Step Tutorial matches 401 if entity @a[tag=Tutorial,scores={PlayerX=-249..}] run function exigence:tutorial/step
execute if score Step Tutorial matches 402 if entity @a[tag=Tutorial,scores={PlayerX=-248..}] run function exigence:tutorial/step
execute if score Step Tutorial matches 403 if entity @a[tag=Tutorial,scores={PlayerZ=..-153}] run function exigence:tutorial/step

execute if score Step Tutorial matches 500..650 as @e[tag=Eyeball,tag=Tutorial] run function exigence:tutorial/steps/look_at_player

execute if score Step Tutorial matches 500 if entity @a[tag=Tutorial,scores={PlayerX=..-246}] run function exigence:tutorial/step
execute if score Step Tutorial matches 501 if entity @a[tag=Tutorial,scores={PlayerX=..-249}] run function exigence:tutorial/step
execute if score Step Tutorial matches 502 if entity @a[tag=Tutorial,scores={PlayerX=..-252}] run function exigence:tutorial/step
execute if score Step Tutorial matches 503 if entity @a[tag=Tutorial,scores={PlayerX=..-255}] run function exigence:tutorial/step
execute if score Step Tutorial matches 504 if entity @a[tag=Tutorial,scores={PlayerX=..-258}] run function exigence:tutorial/step
execute if score Step Tutorial matches 505 if entity @a[tag=Tutorial,scores={PlayerX=..-261}] run function exigence:tutorial/step

execute if score Step Tutorial matches 600 if entity @a[tag=Tutorial,scores={PlayerX=..-261,PlayerZ=..-164}] run function exigence:tutorial/step
execute if score Step Tutorial matches 601 if entity @a[tag=Tutorial,scores={PlayerX=..-261,PlayerZ=..-166}] run function exigence:tutorial/step
execute if score Step Tutorial matches 602 if entity @a[tag=Tutorial,scores={PlayerX=..-261,PlayerZ=..-168}] run function exigence:tutorial/step
execute if score Step Tutorial matches 603 if entity @a[tag=Tutorial,scores={cr_berryBushesPicked=1}] run function exigence:tutorial/step
execute if score Step Tutorial matches 604 if entity @a[tag=Tutorial,scores={cr_berryBushesPicked=2}] run function exigence:tutorial/step
execute if score Step Tutorial matches 605 if entity @a[tag=Tutorial,scores={cr_berryBushesPicked=3}] run function exigence:tutorial/step


execute if score Step Tutorial matches 700 if entity @a[tag=Tutorial,scores={PlayerZ=..-185}] run function exigence:tutorial/step
execute if score Step Tutorial matches 701 if entity @a[tag=Tutorial,scores={PlayerZ=..-187}] run function exigence:tutorial/step
execute if score Step Tutorial matches 702 if entity @a[tag=Tutorial,scores={PlayerZ=..-189}] run function exigence:tutorial/step
execute if score Step Tutorial matches 703 if entity @a[tag=Tutorial,scores={cr_coinsPickedUp=1}] run function exigence:tutorial/step
execute if score Step Tutorial matches 704 if entity @a[tag=Tutorial,scores={cr_coinsPickedUp=2}] run function exigence:tutorial/step
execute if score Step Tutorial matches 705 if entity @a[tag=Tutorial,scores={cr_coinsPickedUp=3}] run function exigence:tutorial/step
execute if score Step Tutorial matches 706 if entity @a[tag=Tutorial,scores={cr_coinsPickedUp=4}] run function exigence:tutorial/step
execute if score Step Tutorial matches 707 if entity @a[tag=Tutorial,scores={cr_coinsPickedUp=5}] run function exigence:tutorial/step

execute if score Step Tutorial matches 800 run function exigence:tutorial/step

execute if score Step Tutorial matches 801 if entity @a[tag=Tutorial,scores={cr_embersPickedUp=1}] run function exigence:tutorial/step
execute if score Step Tutorial matches 802 if entity @a[tag=Tutorial,scores={cr_embersPickedUp=2}] run function exigence:tutorial/step
execute if score Step Tutorial matches 803 if entity @a[tag=Tutorial,scores={cr_embersPickedUp=3}] run function exigence:tutorial/step
execute if score Step Tutorial matches 804 run function exigence:tutorial/step

execute if score Step Tutorial matches 900 run function exigence:tutorial/step

execute if score Step Tutorial matches 901 if entity @a[tag=Tutorial,scores={cr_researchPickedUp=1}] run function exigence:tutorial/step

execute if score Step Tutorial matches 1000 if entity @a[tag=Tutorial,scores={PlayerZ=..-209}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1001 if entity @a[tag=Tutorial,scores={PlayerZ=..-227}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1002 if entity @a[tag=Tutorial,scores={cr_altarsLit=1}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1002 if entity @a[tag=Tutorial,scores={cr_altarsEnhanced=1}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1003..1022 run scoreboard players add Step Tutorial 1
execute if score Step Tutorial matches 1023 run function exigence:tutorial/step
execute if score Step Tutorial matches 1024 if entity @a[tag=Tutorial,scores={cr_altarsUpgraded=1}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1024 if entity @a[tag=Tutorial,scores={cr_altarsEnhanced=1}] run function exigence:tutorial/step

execute if score Step Tutorial matches 1100 if entity @a[tag=Tutorial,scores={PlayerX=..-258}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1101 if entity @a[tag=Tutorial,scores={PlayerX=..-260}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1102..1199 run function exigence:tutorial/steps/steppy_loop
execute if score Step Tutorial matches 1200 run function exigence:tutorial/step

execute if score Step Tutorial matches 1201 if entity @a[tag=Tutorial,scores={PlayerZ=..-237}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1202 if entity @a[tag=Tutorial,scores={cr_bellsRung=1}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1203 if entity @a[tag=Tutorial,scores={PlayerZ=..-242}] run function exigence:tutorial/step


execute if score Step Tutorial matches 1300 if entity @a[tag=Tutorial,scores={PlayerX=-260..}] run function exigence:tutorial/step


execute if score Step Tutorial matches 1400 if entity @a[tag=Tutorial,scores={PlayerX=-255..}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1401 if entity @a[tag=Tutorial,scores={cr_ravagerGlass=1}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1402 if entity @a[tag=Tutorial,scores={PlayerZ=..-246}] run function exigence:tutorial/step


execute if score Step Tutorial matches 1500 if entity @a[tag=Tutorial,scores={PlayerZ=..-249}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1501 if entity @a[tag=Tutorial,scores={cr_echosPickedUp=1}] run function exigence:tutorial/step
execute if score Step Tutorial matches 1502 if entity @a[tag=Tutorial,scores={PlayerY=33..,PlayerX=..-281}] run function exigence:tutorial/step

# DETECT DEATH
execute if entity @a[tag=Tutorial,scores={cr_deaths=1..}] run data modify storage exigence:dungeon waiting_for_respawn set value 1
execute as @a[tag=Tutorial] run execute if entity @e[type=minecraft:player,tag=Tutorial] if data storage exigence:dungeon {waiting_for_respawn:1} run function exigence:tutorial/death

# Decrement AmbientNoiseCooldown
scoreboard players remove @e[scores={AmbientNoiseCooldown=1..}] AmbientNoiseCooldown 1
