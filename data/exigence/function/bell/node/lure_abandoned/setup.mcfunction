# Create lure (snowman + tiny ravager) for this bell node

## CONSTRAINTS
#   AS/AT BellNode

## INPUT
#   #compare node.id

#====================================================================================================
execute unless entity @s[distance=0.01] run return run say Failed to run bell/node/lkure/setup AT the bell node
#====================================================================================================

execute if score toggle.bell debug matches 1 if score debug.level debug matches 3.. run say (D3 Bell) Setup bell lure

# Summon tiny snowman
summon minecraft:snow_golem ~ ~1.2 ~ {NoAI:true,Tags:["BellLure"],Silent:true,Invulnerable:true}

# Summon tiny ravager
#   Can't do no ai true because then it wont call for reinforcements
summon minecraft:ravager ~ ~1.6 ~ {NoAI:false,Tags:["BellLure"],Silent:true,Invulnerable:true}

# Make small
attribute @n[type=minecraft:snow_golem,tag=BellLure,distance=..2] scale base set 0.01
attribute @n[type=minecraft:ravager,tag=BellLure,distance=..2] scale base set 0.01

# Make ravager no grav
attribute @n[type=minecraft:ravager,tag=BellLure,distance=..2] gravity base set 0.0

# Make ravager no reach
attribute @n[type=minecraft:ravager,tag=BellLure,distance=..2] entity_interaction_range base set 0.0

# Knockback resistance
attribute @n[type=minecraft:snow_golem,tag=BellLure,distance=..2] knockback_resistance base set 10
attribute @n[type=minecraft:ravager,tag=BellLure,distance=..2] knockback_resistance base set 10

# Make invisible
# TODO
