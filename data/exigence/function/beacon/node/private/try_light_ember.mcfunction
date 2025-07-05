
# Called by beacon/node/try_light, if ardor_flame_type:1

# AS BeaconNode
#================================================================================================

execute if score @s ObjectLevel matches 1 as @a[tag=Lighting] unless items entity @s weapon.mainhand minecraft:ghast_tear run tellraw @s [{text:"This becaon requires an ",color:"gray",italic:false},{text:"🔥 Ardor Ember 🔥 ",color:"aqua"},{text:"to light",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 1 as @a[tag=Lighting] if items entity @s weapon.mainhand minecraft:ghast_tear unless items entity @s weapon.mainhand minecraft:ghast_tear[custom_model_data={"strings":[ardor_ember_1]}] run tellraw @s [{text:"That is the wrong ",color:"gray",italic:false},{text:"🔥 Ardor Ember 🔥 ",color:"aqua"},{text:"for this level!",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 1 if items entity @a[tag=Lighting] weapon.mainhand minecraft:ghast_tear[custom_model_data={"strings":[ardor_ember_1]}] run function exigence:beacon/node/private/light_ember

execute if score @s ObjectLevel matches 2 as @a[tag=Lighting] unless items entity @s weapon.mainhand minecraft:ghast_tear run tellraw @s [{text:"This becaon requires an ",color:"gray",italic:false},{text:"🔥 Ardor Ember 🔥 ",color:"aqua"},{text:"to light",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 2 as @a[tag=Lighting] if items entity @s weapon.mainhand minecraft:ghast_tear unless items entity @s weapon.mainhand minecraft:ghast_tear[custom_model_data={"strings":[ardor_ember_2]}] run tellraw @s [{text:"That is the wrong ",color:"gray",italic:false},{text:"🔥 Ardor Ember 🔥 ",color:"aqua"},{text:"for this level!",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 2 if items entity @a[tag=Lighting] weapon.mainhand minecraft:ghast_tear[custom_model_data={"strings":[ardor_ember_2]}] run function exigence:beacon/node/private/light_ember

execute if score @s ObjectLevel matches 3 as @a[tag=Lighting] unless items entity @s weapon.mainhand minecraft:ghast_tear run tellraw @s [{text:"This becaon requires an ",color:"gray",italic:false},{text:"🔥 Ardor Ember 🔥 ",color:"aqua"},{text:"to light",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 3 as @a[tag=Lighting] if items entity @s weapon.mainhand minecraft:ghast_tear unless items entity @s weapon.mainhand minecraft:ghast_tear[custom_model_data={"strings":[ardor_ember_3]}] run tellraw @s [{text:"That is the wrong ",color:"gray",italic:false},{text:"🔥 Ardor Ember 🔥 ",color:"aqua"},{text:"for this level!",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 3 if items entity @a[tag=Lighting] weapon.mainhand minecraft:ghast_tear[custom_model_data={"strings":[ardor_ember_3]}] run function exigence:beacon/node/private/light_ember

execute if score @s ObjectLevel matches 4 as @a[tag=Lighting] unless items entity @s weapon.mainhand minecraft:ghast_tear run tellraw @s [{text:"This becaon requires an ",color:"gray",italic:false},{text:"🔥 Ardor Ember 🔥 ",color:"aqua"},{text:"to light",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 4 as @a[tag=Lighting] if items entity @s weapon.mainhand minecraft:ghast_tear unless items entity @s weapon.mainhand minecraft:ghast_tear[custom_model_data={"strings":[ardor_ember_4]}] run tellraw @s [{text:"That is the wrong ",color:"gray",italic:false},{text:"🔥 Ardor Ember 🔥 ",color:"aqua"},{text:"for this level!",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 4 if items entity @a[tag=Lighting] weapon.mainhand minecraft:ghast_tear[custom_model_data={"strings":[ardor_ember_4]}] run function exigence:beacon/node/private/light_ember
