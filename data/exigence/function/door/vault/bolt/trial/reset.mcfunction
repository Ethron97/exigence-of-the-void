# Cleans up everything after a trial, win or lose

## CONSTRAINTS
#   AS/AT trial node

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Bolt trial reset

# Kill entities
kill @e[type=minecraft:block_display,tag=DropBlock,distance=..24]
kill @e[type=minecraft:block_display,tag=PizzaLine,distance=..24]
kill @e[type=minecraft:marker,tag=BoltTrialSetup,distance=..24]
kill @e[type=minecraft:marker,tag=PizzaLightning,distance=..24]

# Reset tags
tag @s remove Crucible
tag @s remove ETICK

# Clone grond
execute if entity @s[tag=Game] run clone ~5 ~11 ~5 ~-5 ~11 ~-5 ~-5 ~-1 ~-5
execute if entity @s[tag=Hub] run clone ~5 ~-7 ~5 ~-5 ~-7 ~-5 ~-5 ~-1 ~-5

# Replace end portal
fill ~7 ~-4 ~7 ~-7 ~-4 ~-7 black_concrete replace end_portal

# Reset fire
fill ~7 ~7 ~7 ~-7 ~7 ~-7 minecraft:fire replace minecraft:soul_fire strict

# Hide bossbar
execute if entity @s[tag=Game] run bossbar set exigence:trial_bolt visible false
execute if entity @s[tag=Hub] run bossbar set exigence:hub_trial_bolt visible false

# Update status
execute if entity @s[tag=Game] run scoreboard players set game.bolt.trial trial.status 0
execute if entity @s[tag=Hub] run scoreboard players set hub.bolt.trial trial.status 0
execute if entity @s[tag=Game] run scoreboard players set game.bolt.crucible trial.status 0
execute if entity @s[tag=Hub] run scoreboard players set hub.bolt.crucible trial.status 0