# Called when a full playthrough is won (by lighting all of the beacons)

#====================================================================================================

# TODO better announcements
say The beacons are lit, the Ardor return to destroy the Watchers!

# Set escape portal to 1 so that the game_win thinks the game actually won
scoreboard players set game.escape_portal game.state 1
# Switch from game-tick to exalting-tick
scoreboard players set game.exalting game.state 1

# Turn the game off
execute in minecraft:overworld run function exigence:game/game_off

# Grayify sculk
function exigence:menace/private/transform_sculk {redify:2}

# Set time to day
time set 6000

# Play victory sound
execute in minecraft:overworld run playsound minecraft:ui.toast.challenge_complete neutral @a 986.5 100.0 1000.5 1000 1

# Disable card sidebar
scoreboard objectives setdisplay sidebar.team.dark_aqua

# Disable objective bossbar
bossbar set exigence:objective players
bossbar set exigence:last_card players

# Set name of deck bossbar to campaign victory
bossbar set exigence:bossbar name [{text:"Campaign Victory!",color:"aqua"}]
bossbar set exigence:bossbar value 0
bossbar set exigence:bossbar color pink

# Give advancement (do it now instead of game_win since they might have gone offline)
execute as @a[tag=ActivePlayer,sort=arbitrary,limit=1] run function exigence:profile/profile_node/story/grant {story:'light_beacons'}

# Enable room expire
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=3}] run scoreboard players set @s hub.room.max_timer 1300
execute in exigence:hub as @e[x=100,y=199,z=100,dx=0,dy=1,dz=0,scores={hub.room.room_type=3}] run scoreboard players set @s hub.room.current_timer 1

# Exalt online players. If they are offline, it gets called when they log in if relevant.
execute as @a[tag=ActivePlayer] run function exigence:player/utility/start_exalting

# TODO credit sequence
