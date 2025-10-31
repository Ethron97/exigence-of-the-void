# Shared functions between loss and win

say Game Off

data modify storage exigence:dungeon is_active set value 0

# Reset max menace
function exigence:menace/reset_max_menace

# Add all ravagers to player's team so they stop tracking
team join Spectator @e[type=minecraft:ravager]

# Silence mobs so they stop annoying me while I work on the game.
execute as @e[tag=Silence] run data modify entity @s Silent set value true

# Save bookshelf
function exigence:mirror/bookshelf/save_bookshelf



## PLAYER STUFF
# Clear all potion effects
effect clear @a[tag=ActivePlayer]

# Stop ambient sound bug
stopsound @a[tag=ActivePlayer] ambient

# Reset teams
team join Spectator @a[tag=ActivePlayer]

# Increment attempt scores
execute if score Difficulty DungeonRun matches 1 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.attempts_D1 1
execute if score Difficulty DungeonRun matches 2 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.attempts_D2 1
execute if score Difficulty DungeonRun matches 3 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.attempts_D3 1
execute if score Difficulty DungeonRun matches 4 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.attempts_D4 1
execute if score Difficulty DungeonRun matches 5 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.attempts_D5 1
execute if score Difficulty DungeonRun matches 6 run scoreboard players add @a[tag=ActivePlayer] profile.data.winloss.attempts_D6 1

# Display post game stats
#   Wait until later if they are Exalting
execute as @a[tag=ActivePlayer,tag=!Exalting] run function exigence:player/stats/run_stats

# Clear all spellbound cards
execute as @a[tag=ActivePlayer] run function exigence:player/clear/all_spellbound {type:'hotbar',index:0}

# Clear actionbar
title @a actionbar ""

# Clear title
title @a clear


# Reset bookshelf on principal
fill -481 62 -200 -473 64 -200 minecraft:chiseled_bookshelf[facing=south]

# Hide trial bossbars in case game ended while one was active
bossbar set exigence:trial_bolt visible false
bossbar set exigence:trial_flow visible false
bossbar set exigence:trial_eye visible false
bossbar set exigence:trial_silence visible false
bossbar set exigence:trial_dune visible false
bossbar set exigence:trial_spire visible false

# Clear schedules
schedule clear exigence:hazard/private/starting_hazard_loop
schedule clear exigence:variance/setup/setup_loop
schedule clear exigence:variance/level_3_stairs/crypt/variance_2
schedule clear exigence:variance/level_3_stairs/crypt/variance_1
schedule clear exigence:variance/level_3_stairs/guard/variance_1
schedule clear exigence:variance/level_3_stairs/guard/variance_2
schedule clear exigence:variance/level_3_stairs/main/variance_1
schedule clear exigence:variance/level_3_stairs/main/variance_2
schedule clear exigence:variance/level_3_stairs/crypt/variance_1
schedule clear exigence:variance/level_3_stairs/crypt/variance_2
schedule clear exigence:variance/level_3_stairs/guard/variance_2
schedule clear exigence:variance/level_3_stairs/guard/variance_1
schedule clear exigence:variance/level_3_stairs/main/variance_1
schedule clear exigence:variance/level_3_stairs/main/variance_2
schedule clear exigence:variance/level_3_stairs/crypt/variance_1
schedule clear exigence:variance/level_3_stairs/crypt/variance_2
schedule clear exigence:variance/level_3_stairs/guard/variance_1
schedule clear exigence:variance/level_3_stairs/guard/variance_2
schedule clear exigence:variance/level_3_stairs/main/variance_2
schedule clear exigence:variance/level_3_stairs/main/variance_1
schedule clear exigence:variance/level_3_stairs/guard/reset
schedule clear exigence:variance/level_3_stairs/main/reset
