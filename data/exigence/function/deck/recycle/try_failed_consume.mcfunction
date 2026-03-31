# Try to recycle a single random played card

#====================================================================================================

# DEBUG
say Try recycle (failed consume)

# Reset tracker score
scoreboard players set #did_recycle Temp 0

# Get a card
#   Cannot be Played, Spellbound, Recycler, Instant, or already Recycled this run
execute positioned -302.42 2.00 -104.47 as @e[type=minecraft:armor_stand,scores={Deck=1..},tag=Card,tag=Played,tag=!Instant,tag=!Recycled,tag=!Recycler,tag=!Spellbound,tag=FailedConsume,distance=..24,sort=random,limit=1] run function exigence:cards/recycle

# Display message if no card found
execute if score #did_recycle Temp matches 0 run say No valid cards to recycle
