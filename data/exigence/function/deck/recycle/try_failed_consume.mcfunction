# Try to recycle a single random played card

#====================================================================================================

# DEBUG
say Try recycle (failed consume)

# Reset tracker score
scoreboard players set #did_recycle Temp 0

# Get a card
#   Cannot be Played, Spellbound, Recycler, Instant, or already Recycled this run
execute as @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,type=minecraft:armor_stand,scores={game.deck=1..},tag=Card,tag=Played,tag=!Instant,tag=!Recycled,tag=!Recycler,tag=!Spellbound,tag=FailedConsume,sort=random,limit=1] run function exigence:cards/recycle

# Display message if no card found
execute if score #did_recycle Temp matches 0 run say No valid cards to recycle
