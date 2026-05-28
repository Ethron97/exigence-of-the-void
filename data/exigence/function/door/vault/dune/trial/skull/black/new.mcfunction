# New fast projectile for trial
#   Faster and starts pointing at the player

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3 Trial) New wither skull

# Move DunePosA to random rim location
function exigence:door/vault/dune/trial/random_pos/rim_pos

# Have DunePosA face the trial player
execute as @e[type=minecraft:marker,tag=DunePosA,distance=..24] at @s facing entity @p[scores={game.player.vault_code=2},distance=..24] feet run tp @s ~ ~ ~ ~ ~
# Make sure pitch is 0
data modify entity @e[type=minecraft:marker,tag=DunePosA,distance=..24,limit=1] Rotation[1] set value 0.0f

# Summon item display
execute as @e[type=minecraft:marker,tag=DunePosA,distance=..24] at @s run function exigence:door/vault/dune/trial/skull/black/m_display with entity @s


