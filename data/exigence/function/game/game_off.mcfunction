# Shared functions between loss and win

say Game Off

scoreboard players set game.is_active game.state 0
# Just in case the game ended while it was still loading
scoreboard players set predungeon.cancel_load hub.room_misc 1

# Reset max menace
function exigence:menace/reset_max_menace

# Add all ravagers to player's team so they stop tracking
team join Spectator @e[type=minecraft:ravager]

# Silence mobs so they stop annoying me while I work on the game.
execute as @e[tag=Silence] run data modify entity @s Silent set value true

# Save bookshelf
#function exigence:mirror/bookshelf/save_bookshelf

## PLAYER STUFF
# Clear all potion effects
effect clear @a[tag=ActivePlayer]

# Stop ambient sound bug
stopsound @a[tag=ActivePlayer] ambient

# Reset teams
team join Spectator @a[tag=ActivePlayer]

# Display post game stats
#   Wait until later if they are Exalting
execute as @a[tag=ActivePlayer,tag=!Exalting] run function exigence:player/stats/run_stats

# Clear all spellbound cards
execute as @a[tag=ActivePlayer] run function exigence:player/clear/all_spellbound {type:'hotbar',index:0}

# Clear actionbar
title @a actionbar ""

# Clear title
title @a clear

# Hide bossbar(s)
function exigence:bossbar/deck/hide
function exigence:bossbar/last_card/hide
function exigence:bossbar/resource/hide
function exigence:bossbar/objective/hide

# Hide trial bossbars in case game ended while one was active
bossbar set exigence:trial_bolt visible false
bossbar set exigence:trial_flow visible false
bossbar set exigence:trial_eye visible false
bossbar set exigence:trial_silence visible false
bossbar set exigence:trial_dune visible false
bossbar set exigence:trial_spire visible false
