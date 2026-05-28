# Called when losing any trial/crucible, invokes the Price of Failure

## CONSTRAINTS
#   AS player (or player node, we just need the name)

#====================================================================================================

execute if score toggle.trial debug matches 1 if score debug.level debug matches 3.. run say (D3) Trial loss consequence

tellraw @a [{text:"[!] ",color:"red"},{"selector":"@s",color:"dark_aqua"},{text:" invokes the ",color:"gray"}\
,{text:"Price of Failure",color:"red"},{text:":",color:"gray"}]
tellraw @a [{text:"    +3 Menace",color:"red"}]

# 1. +3 hazard spread throughout the dungeon
# 2. +3 Menace
# 3. Aggro a random warden
# 4. Slowness I for a couple minutes?
# 5. Wither?

# TEMP

data modify storage exigence:menace amount set value 3
data modify storage exigence:menace from set value 'other'
function exigence:menace/trigger/from_ with storage exigence:menace
