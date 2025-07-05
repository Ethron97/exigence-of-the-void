# Reposnsible for enemy effects

## Starting Speed
#   Too janky without darkness
# Cancel speed if player gets too close
#execute as @e[type=minecraft:ravager,tag=StartingSpeed] at @s if entity @a[tag=ActivePlayer,distance=..25] run tag @s remove StartingSpeed
# Cancel speed after 15 seconds into game
#execute if score cr_gameTicks TickCounter matches 300.. as @e[type=minecraft:ravager,tag=StartingSpeed] run tag @s remove StartingSpeed
# Clear starting speed from ravagers who have it, but do not have starting speed tag
#execute as @e[type=minecraft:ravager,tag=!StartingSpeed,predicate=exigence:effects/speed5] run effect clear @s speed

execute as @e[type=ravager] run function exigence:enemy/ravager/tick
execute as @e[type=warden] run function exigence:enemy/warden/tick

# If enemy is DragonBreathed, passive particle
#   Currently not ideal, as if two players are close then it double particles
execute at @a[tag=ActivePlayer,scores={dead=0}] at @e[distance=..16,type=#exigence:glowable_enemies,tag=DragonBreath] run particle dragon_breath ~ ~1.3 ~ 0.7 0.4 0.7 0 1

# If stunned, particle
execute as @e[type=#exigence:enemy,scores={EnemyStunCooldown=1..}] run function exigence:cards/synaptic_shock/private/stun_tick
