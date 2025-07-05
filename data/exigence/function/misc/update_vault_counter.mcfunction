# Reset double buffer
## LEVEL 1
scoreboard players set #Host VaultPots1 0
scoreboard players set #Raiser VaultPots1 0
scoreboard players set #Rib VaultPots1 0
scoreboard players set #Tide VaultPots1 0
scoreboard players set #Shaper VaultPots1 0
scoreboard players set #Wayfinder VaultPots1 0
## LEVEL 2
scoreboard players set #Coast VaultPots2 0
scoreboard players set #Sentry VaultPots2 0
scoreboard players set #Snout VaultPots2 0
scoreboard players set #Vex VaultPots2 0
scoreboard players set #Ward VaultPots2 0
scoreboard players set #Wild VaultPots2 0
## LEVEL 2
scoreboard players set #Bolt VaultPots3 0
scoreboard players set #Dune VaultPots3 0
scoreboard players set #Silence VaultPots3 0
scoreboard players set #Eye VaultPots3 0
scoreboard players set #Spire VaultPots3 0
scoreboard players set #Flow VaultPots3 0

# Calculate values
## LEVEL 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=host] run scoreboard players add #Host VaultPots1 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=raiser] run scoreboard players add #Raiser VaultPots1 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=rib] run scoreboard players add #Rib VaultPots1 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=tide] run scoreboard players add #Tide VaultPots1 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=shaper] run scoreboard players add #Shaper VaultPots1 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=wayfinder] run scoreboard players add #Wayfinder VaultPots1 1
## LEVEL 2
execute as @e[type=minecraft:marker,tag=PotMarker,tag=coast] run scoreboard players add #Coast VaultPots2 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=sentry] run scoreboard players add #Sentry VaultPots2 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=snout] run scoreboard players add #Snout VaultPots2 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=vex] run scoreboard players add #Vex VaultPots2 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=ward] run scoreboard players add #Ward VaultPots2 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=wild] run scoreboard players add #Wild VaultPots2 1
## LEVEL 3
execute as @e[type=minecraft:marker,tag=PotMarker,tag=bolt] run scoreboard players add #Bolt VaultPots3 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=dune] run scoreboard players add #Dune VaultPots3 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=silence] run scoreboard players add #Silence VaultPots3 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=eye] run scoreboard players add #Eye VaultPots3 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=spire] run scoreboard players add #Spire VaultPots3 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=flow] run scoreboard players add #Flow VaultPots3 1

# Swap buffer
## LEVEL 1
execute unless score Host VaultPots1 = #Host VaultPots1 run scoreboard players operation Host VaultPots1 = #Host VaultPots1
execute unless score Raiser VaultPots1 = #Raiser VaultPots1 run scoreboard players operation Raiser VaultPots1 = #Raiser VaultPots1
execute unless score Rib VaultPots1 = #Rib VaultPots1 run scoreboard players operation Rib VaultPots1 = #Rib VaultPots1
execute unless score Tide VaultPots1 = #Tide VaultPots1 run scoreboard players operation Tide VaultPots1 = #Tide VaultPots1
execute unless score Shaper VaultPots1 = #Shaper VaultPots1 run scoreboard players operation Shaper VaultPots1 = #Shaper VaultPots1
execute unless score Wayfinder VaultPots1 = #Wayfinder VaultPots1 run scoreboard players operation Wayfinder VaultPots1 = #Wayfinder VaultPots1
## LEVEL 2
execute unless score Coast VaultPots2 = #Coast VaultPots2 run scoreboard players operation Coast VaultPots2 = #Coast VaultPots2
execute unless score Sentry VaultPots2 = #Sentry VaultPots2 run scoreboard players operation Sentry VaultPots2 = #Sentry VaultPots2
execute unless score Snout VaultPots2 = #Snout VaultPots2 run scoreboard players operation Snout VaultPots2 = #Snout VaultPots2
execute unless score Vex VaultPots2 = #Vex VaultPots2 run scoreboard players operation Vex VaultPots2 = #Vex VaultPots2
execute unless score Ward VaultPots2 = #Ward VaultPots2 run scoreboard players operation Ward VaultPots2 = #Ward VaultPots2
execute unless score Wild VaultPots2 = #Wild VaultPots2 run scoreboard players operation Wild VaultPots2 = #Wild VaultPots2
## LEVEL 3
execute unless score Bolt VaultPots3 = #Bolt VaultPots3 run scoreboard players operation Bolt VaultPots3 = #Bolt VaultPots3
execute unless score Dune VaultPots3 = #Dune VaultPots3 run scoreboard players operation Dune VaultPots3 = #Dune VaultPots3
execute unless score Silence VaultPots3 = #Silence VaultPots3 run scoreboard players operation Silence VaultPots3 = #Silence VaultPots3
execute unless score Eye VaultPots3 = #Eye VaultPots3 run scoreboard players operation Eye VaultPots3 = #Eye VaultPots3
execute unless score Spire VaultPots3 = #Spire VaultPots3 run scoreboard players operation Spire VaultPots3 = #Spire VaultPots3
execute unless score Flow VaultPots3 = #Flow VaultPots3 run scoreboard players operation Flow VaultPots3 = #Flow VaultPots3

