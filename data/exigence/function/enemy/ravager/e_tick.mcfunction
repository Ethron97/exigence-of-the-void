# Ravager effect tick

## CONSTRAINTS
#   AS/AT Ravager

#====================================================================================================

# Ambient particles around ravagers with any game.ravager.detect_thoughts amounts
execute if score @s game.ravager.detect_thoughts matches 1.. run function exigence:enemy/ravager/detect_thoughts_tick

# Beastie Bite Check
execute if score game.max_menace game.state matches 0 if entity @e[type=minecraft:item,distance=..3,nbt={Item:{id:"minecraft:cookie"}}] run function exigence:enemy/beastie_bite/begin_eating
execute if score @s game.ravager.eating_cookie matches 1.. run function exigence:enemy/beastie_bite/eat

# Ambient noise cooldown (allows players to hear them from further away than vanilla)
scoreboard players remove @s game.entity.ambient_noise_cooldown 1
execute if score @s game.entity.ambient_noise_cooldown matches ..0 run function exigence:enemy/ravager/ambient_noise

# Entangled
execute store result score @s Random run random value 1..2
execute if score @s Random matches 2 if entity @s[tag=Entangled] run particle pale_oak_leaves ~ ~3 ~ 1 0.5 1 0.1 1
execute if score @s Random matches 1 if entity @s[tag=Kinesis] run particle crit ~ ~2 ~ 0.5 0.5 0.5 0.1 1
