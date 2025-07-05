# New fast projectile for trial
#   Faster and starts pointing at the player

#========================================================================================================

# Move DunePosA to random rim location
function exigence:door/vault/dune/trial/random_pos/rim_pos

# Have DunePosA face the trial player
execute as @e[type=marker,tag=DunePosA] at @s facing entity @p[scores={VaultCode=2}] feet run tp @s ~ ~ ~ ~ ~
# Make sure pitch is 0
data modify entity @e[type=marker,tag=DunePosA,limit=1] Rotation[1] set value 0.0f

# Summon item display
execute as @e[type=marker,tag=DunePosA] at @s run function exigence:door/vault/dune/trial/skull/black/m_display with entity @s

#   Make sure pitch is 0
data modify entity @e[type=item_display,tag=NewSkull,limit=1] Rotation[1] set value 0.0f

# Playsound
execute at @e[type=marker,tag=DunePosA] run playsound minecraft:entity.wither.shoot hostile @a ~ ~ ~ 1 1

# Initialize cooldown score
scoreboard players set @e[type=minecraft:item_display,tag=NewSkull] SkullTimer 30

# Join team
team join Enemy @e[type=minecraft:item_display,tag=NewSkull]

# Remove local tag
tag @e[type=item_display,tag=NewSkull] remove NewSkull
