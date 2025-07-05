# Call with exigence:dungeon data (for player uuid)
#   Call every second as each Warden

## CONSTRAINTS
#   AS warden

# Handles anger/awareness of player on all wardens
#   Awareness measured in seconds

#===============================================================================================================

#say Anger Updating


# If warden has NO AI and there is a player on their level, un-ai
execute if data entity @s {NoAI:true} if score @s ObjectLevel matches 1 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=1}] run data modify entity @s NoAI set value false
execute if data entity @s {NoAI:true} if score @s ObjectLevel matches 2 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=2}] run data modify entity @s NoAI set value false
execute if data entity @s {NoAI:true} if score @s ObjectLevel matches 3 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=3}] run data modify entity @s NoAI set value false
execute if data entity @s {NoAI:true} if score @s ObjectLevel matches 4 if entity @a[tag=ActivePlayer,scores={dead=0,ActiveLevel=4}] run data modify entity @s NoAI set value false

# Return if no ai
execute if data entity @s {NoAI:true} run return 1

# FIRST THING WE DO... if not angry, reset suspects
# Overwrite in-game anger if not angry so it never uses vanilla methods of detection.
#   This ensures that sneaking is never effective.
execute as @s if score @s Awareness < #anger_threshold Awareness run data merge entity @s {anger:{suspects:[]}}

## AWARENESS MAX
scoreboard players set #max_awareness Awareness 75
## ANGER THRESHOLD
scoreboard players set #anger_threshold Awareness 30

# Cap awareness (set to less of current or #max)
scoreboard players operation @s Awareness < #max_awareness Awareness



# Design goals:
#   Wardens are threatening
#   Sneaking does nothing (encourage movement vs complete lack of danger)
#   Wardens can track players through walls/floors

# Initialize awareness
scoreboard players add @s Awareness 0

# Store old awareness
scoreboard players operation #old_awareness Awareness = @s Awareness

# Decrement awareness of all wardens by 1
scoreboard players remove @s[scores={Awareness=1..}] Awareness 1
# Decrement faster if player gets far enough away (just to cancel the sounds faster)
#   Decided to disable for now, since it makes stepping on Sculk way less threatening
#execute at @s[scores={Awareness=1..}] if entity @a[tag=ActivePlayer,distance=30..] run scoreboard players remove @s Awareness 1

# Increment awareness based on how close player is (unless awareness is at max)
execute as @s[tag=!Angry] if score @s Awareness < #max_awareness Awareness at @s if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=0},distance=..24] run scoreboard players add @s Awareness 2
execute as @s[tag=!Angry] if score @s Awareness < #max_awareness Awareness at @s if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=0},distance=..12] run scoreboard players add @s Awareness 2
execute as @s[tag=!Angry] if score @s Awareness < #max_awareness Awareness at @s if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=0},distance=..5] run scoreboard players add @s Awareness 30
execute if data storage exigence:dungeon {max_menace:1} as @s if score @s Awareness < #max_awareness Awareness run scoreboard players add @s Awareness 20

# If max menace, set awareness to max
#execute } run scoreboard players operation @s Awareness = #max_awareness Awareness

# Reset random
scoreboard players set @s Random 0
# If awareness goes up (and not angry), 1/3 chance to sniff
execute if score #old_awareness Awareness < @s Awareness store result score @s Random run random value 1..3
execute if score @s Random matches 1 at @s run function exigence:enemy/warden/private/sniff



# Maintain aggro (or re-aggro if in coop)
#execute as @s[tag=Angry] if score @s Warden matches ..100 if score @s Awareness >= #anger_threshold Awareness run damage @s 0 generic by @p[tag=ActivePlayer,scores={dead=0,VaultCode=0}]
execute as @s[scores={Warden=..100},tag=Angry] if score @s Awareness >= #anger_threshold Awareness run function exigence:enemy/warden/private/set_target with entity @p[tag=ActivePlayer,scores={dead=0,VaultCode=0},sort=nearest,limit=1]

# Update anger value
#   If first time at threshold, give +X awareness so it doesn't insta-deaggro
#   Also give +1 red on first time angry
execute as @s[tag=!Angry] if score @s Awareness >= #anger_threshold Awareness run scoreboard players operation @s Awareness = #max_awareness Awareness
# We don't want to use /damage for the initial damaging, since that anuimation skips and makes running past a
# un-aggroed warden basically a 50/50 for when the ping happens. Because it goes from 0 to you're dead in 0.1 seconds
#   Get target
tag @a[tag=NewTarget] remove NewTarget
execute as @s[tag=!Angry] if entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=0,SculkStepCooldown=1..}] if score @s Awareness >= #anger_threshold Awareness run tag @a[tag=ActivePlayer,scores={dead=0,VaultCode=0,SculkStepCooldown=1..},sort=nearest,limit=1] add NewTarget
execute as @s[tag=!Angry] unless entity @a[tag=ActivePlayer,scores={dead=0,VaultCode=0,SculkStepCooldown=1..}] if score @s Awareness >= #anger_threshold Awareness run tag @a[tag=ActivePlayer,scores={dead=0,VaultCode=0},sort=nearest,limit=1] add NewTarget
# Increment "wardens aggrod" score
scoreboard players add @a[tag=NewTarget] cr_wardensAngered 1
scoreboard players add @a[tag=NewTarget] t_wardensAngered 1

execute as @s[tag=!Angry] if entity @a[tag=NewTarget] run function exigence:enemy/warden/private/set_target with entity @a[tag=ActivePlayer,tag=NewTarget,limit=1]
execute as @s[tag=!Angry] if score @s Awareness >= #anger_threshold Awareness run function exigence:resources/try_generate {green:0,red:1,aqua:0}
execute as @s[tag=!Angry] if score @s Awareness >= #anger_threshold Awareness run tag @s add Angry
tag @a[tag=NewTarget] remove NewTarget

# If any warden is aggro, break invis
execute if score @s Awareness >= #anger_threshold Awareness as @a[tag=ActivePlayer,team=Enemy] run function exigence:player/effects/break_invisibility

# If aware at all, unsilence
execute as @s[scores={Awareness=1..},tag=Silenced] run function exigence:enemy/warden/unsilence
# If not aware, silence
execute as @s[scores={Awareness=0},tag=!Silenced] run function exigence:enemy/warden/silence

# Prevent warden from becoming angry again until they cool off
execute as @s[scores={Awareness=..10}] run tag @s remove Angry
