# Called before each sample is played
# Clears any currently actrive sound / schedule from another sample
#   Basically allows the player to quickly button through if they want

#=============================================================================================================

scoreboard players set #i Tutorial 0

stopsound @a[tag=Tutorial] ambient minecraft:heartbeat

schedule clear exigence:tutorial/flow/heartbeat/sample_1
schedule clear exigence:tutorial/flow/heartbeat/sample_2
schedule clear exigence:tutorial/flow/heartbeat/sample_3
schedule clear exigence:tutorial/flow/heartbeat/sample_4
