# Called every second if at least one void cache exists

#==========================================================================================================

# Handle endermite spawning
scoreboard players remove EndermiteSpawnCooldown TickCounter 1
execute if score EndermiteSpawnCooldown TickCounter matches ..0 at @e[type=armor_stand,tag=VoidCache] run function exigence:cards/void_cache/private/spawn_endermite
execute if score EndermiteSpawnCooldown TickCounter matches ..0 run scoreboard players set EndermiteSpawnCooldown TickCounter 30

# Endermite cooldown
scoreboard players remove @e[type=endermite] EndermiteTimer 1
kill @e[type=endermite,scores={EndermiteTimer=..0}]


# Particles
execute at @e[type=armor_stand,tag=VoidCache] run particle dragon_breath ~ ~1 ~ 0.3 1 0.3 0.05 5
