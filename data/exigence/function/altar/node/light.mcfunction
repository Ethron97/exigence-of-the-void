# Called from interaction -> handle_interact
#   Calls correct subfunction

## CONSTRAINTS
#   AS/AT AltarNode

#=================================================================================================================

#say Light

scoreboard players set #blaze_powder Temp 0
execute if entity @a[tag=Lighting,nbt={SelectedItem:{id:"minecraft:blaze_powder"}}] run scoreboard players set #blaze_powder Temp 1
scoreboard players set #spark Temp 0
execute if entity @a[tag=Lighting,nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run scoreboard players set #spark Temp 1

# Radiant Trigger (currently untriggered, trigger with blaze)
execute if score @s NodeState matches 0 if score #blaze_powder Temp matches 1 run clear @a[tag=Lighting] blaze_powder 1
execute if score @s NodeState matches 0 if score #blaze_powder Temp matches 1 run function exigence:altar/node/private/light_radiant
execute if score @s NodeState matches 0 if score #spark Temp matches 1 run function exigence:altar/node/private/light_radiant

# Failed Upgrade (currently triggered, no blaze to upgrade)
execute if score @s NodeState matches 1 if score #blaze_powder Temp matches 0 if score #spark Temp matches 0 if score InnerFire Modifiers matches 0 run tellraw @a[tag=Lighting] [{text:"An ",color:"gray",italic:false},{text:"🔥 Ancient Ember 🔥 ",color:"aqua",italic:false},{text:"is required to enhance the flame further",color:"gray",italic:false}]
#   InnerFire triggers
execute if score @s[tag=!Red] NodeState matches 1.. if score #blaze_powder Temp matches 0 if score #spark Temp matches 0 if score InnerFire Modifiers matches 1 run function exigence:altar/node/private/light_red

# Upgrade Trigger (currently triggered, trigger with blaze)
execute if score @s NodeState matches 1 if score #blaze_powder Temp matches 1 run clear @a[tag=Lighting] blaze_powder 1
execute if score @s NodeState matches 1 if score #blaze_powder Temp matches 1 run function exigence:altar/node/private/light_upgrade
execute if score @s NodeState matches 1 if score #spark Temp matches 1 run function exigence:altar/node/private/light_upgrade

# Normal Trigger (currently untrigered, trigger without blaze)
execute if score @s NodeState matches 0 if score #blaze_powder Temp matches 0 if score #spark Temp matches 0 run function exigence:altar/node/private/light_standard
