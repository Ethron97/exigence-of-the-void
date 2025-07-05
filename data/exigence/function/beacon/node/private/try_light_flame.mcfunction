
# Called by beacon/node/try_light, if ardor_flame_type:0

# AS BeaconNode

#================================================================================================

execute if score @s ObjectLevel matches 1 as @a[tag=Lighting] unless items entity @s weapon.mainhand minecraft:nether_star run tellraw @s [{text:"This becaon requires an ",color:"gray",italic:false},{text:"🔥 Ardor Flame 🔥 ",color:"aqua"},{text:"to light",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 1 as @a[tag=Lighting] if items entity @s weapon.mainhand minecraft:nether_star unless items entity @s weapon.mainhand minecraft:nether_star[custom_model_data={"strings":[ardor_flame_1]}] run tellraw @s [{text:"That is the wrong ",color:"gray",italic:false},{text:"🔥 Ardor Flame 🔥 ",color:"aqua"},{text:"for this level!",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 1 if items entity @a[tag=Lighting] weapon.mainhand minecraft:nether_star[custom_model_data={"strings":[ardor_flame_1]}] run function exigence:beacon/node/private/light_flame

execute if score @s ObjectLevel matches 2 as @a[tag=Lighting] unless items entity @s weapon.mainhand minecraft:nether_star run tellraw @s [{text:"This becaon requires an ",color:"gray",italic:false},{text:"🔥 Ardor Flame 🔥 ",color:"aqua"},{text:"to light",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 2 as @a[tag=Lighting] if items entity @s weapon.mainhand minecraft:nether_star unless items entity @s weapon.mainhand minecraft:nether_star[custom_model_data={"strings":[ardor_flame_2]}] run tellraw @s [{text:"That is the wrong ",color:"gray",italic:false},{text:"🔥 Ardor Flame 🔥 ",color:"aqua"},{text:"for this level!",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 2 if items entity @a[tag=Lighting] weapon.mainhand minecraft:nether_star[custom_model_data={"strings":[ardor_flame_2]}] run function exigence:beacon/node/private/light_flame

execute if score @s ObjectLevel matches 3 as @a[tag=Lighting] unless items entity @s weapon.mainhand minecraft:nether_star run tellraw @s [{text:"This becaon requires an ",color:"gray",italic:false},{text:"🔥 Ardor Flame 🔥 ",color:"aqua"},{text:"to light",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 3 as @a[tag=Lighting] if items entity @s weapon.mainhand minecraft:nether_star unless items entity @s weapon.mainhand minecraft:nether_star[custom_model_data={"strings":[ardor_flame_3]}] run tellraw @s [{text:"That is the wrong ",color:"gray",italic:false},{text:"🔥 Ardor Flame 🔥 ",color:"aqua"},{text:"for this level!",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 3 if items entity @a[tag=Lighting] weapon.mainhand minecraft:nether_star[custom_model_data={"strings":[ardor_flame_3]}] run function exigence:beacon/node/private/light_flame

execute if score @s ObjectLevel matches 4 as @a[tag=Lighting] unless items entity @s weapon.mainhand minecraft:nether_star run tellraw @s [{text:"This becaon requires an ",color:"gray",italic:false},{text:"🔥 Ardor Flame 🔥 ",color:"aqua"},{text:"to light",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 4 as @a[tag=Lighting] if items entity @s weapon.mainhand minecraft:nether_star unless items entity @s weapon.mainhand minecraft:nether_star[custom_model_data={"strings":[ardor_flame_4]}] run tellraw @s [{text:"That is the wrong ",color:"gray",italic:false},{text:"🔥 Ardor Flame 🔥 ",color:"aqua"},{text:"for this level!",color:"gray",italic:false}]
execute if score @s ObjectLevel matches 4 if items entity @a[tag=Lighting] weapon.mainhand minecraft:nether_star[custom_model_data={"strings":[ardor_flame_4]}] run function exigence:beacon/node/private/light_flame
