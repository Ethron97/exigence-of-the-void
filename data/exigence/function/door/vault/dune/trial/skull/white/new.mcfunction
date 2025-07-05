# New normal projectile for trial

#========================================================================================================

# Move DunePosA to random rim location
function exigence:door/vault/dune/trial/random_pos/rim_pos

# Summon item display
execute as @e[type=marker,tag=DunePosA] at @s run function exigence:door/vault/dune/trial/skull/white/m_display with entity @s

# Playsound
execute at @e[type=marker,tag=DunePosA] run playsound minecraft:entity.breeze.shoot hostile @a ~ ~ ~ 1 1

# Initialize cooldown score
scoreboard players set @e[type=minecraft:item_display,tag=NewSkull] SkullTimer 20

# Remove local tag
tag @e[type=item_display,tag=NewSkull] remove NewSkull
