# Setup final effects/scores/tags for an enemy

## CONSTRAINTS
#   AS #Enemy

#==================================================================================================================

# Join enemy team for color/friendly fire
team join Enemy @s

# Enemy status effects so they don't die
effect give @s minecraft:resistance infinite 4 true
effect give @s minecraft:fire_resistance infinite 0 true
effect give @s[type=!minecraft:wither_skeleton] minecraft:instant_health infinite 200 true
effect give @s[type=minecraft:wither_skeleton] minecraft:instant_damage infinite 200 true
# Give witches additional effects so they will not drink those potions
effect give @s[type=minecraft:witch] minecraft:water_breathing infinite 0 true
effect give @s[type=minecraft:witch] minecraft:speed infinite 0 true
effect give @s[type=minecraft:witch] minecraft:regeneration infinite 0 true

# If RADIANT difficulty (0), give enemies slowness I
execute if score ProfileDifficulty DungeonRun matches 0 run attribute @s movement_speed modifier add exigence:enemy_slow -0.2 add_multiplied_base

# Add silence tag to mobs we want to be silenced in between rounds
tag @s add Silence


# Add attributes to mobs that need it
#   Giving ravagers follow range on level 4 is just crazy unfair. 100% always have a ravager chasing you, no suspense.
#   Although it might be equally unfair that you can walk around without ever being chased.
execute as @s[type=!creaking] run attribute @s follow_range base set 200.0
attribute @s knockback_resistance base set 10.0
attribute @s step_height base set 2.0

# Scale wardens on level 4 (so they don't fall into lava)
execute as @s[type=warden,tag=L4] run attribute @s scale base set 2.0
# Initialize awareness
scoreboard players add @s[type=warden] game.warden.awareness 0

# Initialize scores
scoreboard players add @s[type=minecraft:ravager] game.ravager.eating_cookie 0
scoreboard players add @s[type=minecraft:ravager] game.entity.ambient_noise_cooldown 0
scoreboard players add @s game.enemy.stun_timer 0

# Glow enemies if debug
execute if data storage exigence:debug {enemy:1} run effect give @s minecraft:glowing infinite 0 true

# Deprecated effects
# Give creakings effects
#effect give @s[type=creaking] strength infinite 10
#effect give @s[type=creaking] speed infinite 0 true

# If profile = 2, give ravagers strength XXXX so they can insta kill
#execute if score ProfileDifficulty DungeonRun matches 2 run effect give @s[type=minecraft:ravager] strength infinite 100 true
