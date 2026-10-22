# Update expire displays

## CONSTRAINTS
#   AS room node (predungeon)
#   IN exigence:hub
#   AT ( 2.5 208.5 33.98 )

## INPUT
#   Call after the bossbar so we can use:
#   SCORE #bossbar Temp

#====================================================================================================

# If knock = true, show clock
execute if score @s hub.room.knock matches 1 run data modify entity @n[type=minecraft:item_display,tag=ExpireDisplay,distance=..1] item \
set value {id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_model_data":{strings:["clock"]}}}
# else hide clock
execute if score @s hub.room.knock matches 0 run data remove entity @n[type=minecraft:item_display,tag=ExpireDisplay,distance=..1] item

# If knock = true, show clock title
execute if score @s hub.room.knock matches 1 run data modify entity @n[type=minecraft:text_display,tag=ExpireDisplayName,distance=..1] text \
set value [{text:"Predungeon",color:"red"}]
# else hide clock title
execute if score @s hub.room.knock matches 0 run data modify entity @n[type=minecraft:text_display,tag=ExpireDisplayName,distance=..1] text \
set value ""

# If timer > threshold, show timer /60 seconds
execute if score @s hub.room.current_timer > @s hub.room.expire_threshold run data modify entity @n[type=minecraft:text_display,tag=ExpireDisplayCount,distance=..1] text set value \
[{score:{name:"#bossbar",objective:"Temp"},color:"red"}]
# else hide text display
execute if score @s hub.room.current_timer <= @s hub.room.expire_threshold run data modify entity @n[type=minecraft:text_display,tag=ExpireDisplayCount,distance=..1] text set value [{text:""}]
