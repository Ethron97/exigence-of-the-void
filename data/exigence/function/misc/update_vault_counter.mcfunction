# Double buffer prevents flickering in game (mostly)

# Reset double buffer
## LEVEL 1
scoreboard players set #Host debug.vault_pots_1 0
scoreboard players set #Raiser debug.vault_pots_1 0
scoreboard players set #Rib debug.vault_pots_1 0
scoreboard players set #Tide debug.vault_pots_1 0
scoreboard players set #Shaper debug.vault_pots_1 0
scoreboard players set #Wayfinder debug.vault_pots_1 0
## LEVEL 2
scoreboard players set #Coast debug.vault_pots_2 0
scoreboard players set #Sentry debug.vault_pots_2 0
scoreboard players set #Snout debug.vault_pots_2 0
scoreboard players set #Vex debug.vault_pots_2 0
scoreboard players set #Ward debug.vault_pots_2 0
scoreboard players set #Wild debug.vault_pots_2 0
## LEVEL 2
scoreboard players set #Bolt debug.vault_pots_3 0
scoreboard players set #Dune debug.vault_pots_3 0
scoreboard players set #Silence debug.vault_pots_3 0
scoreboard players set #Eye debug.vault_pots_3 0
scoreboard players set #Spire debug.vault_pots_3 0
scoreboard players set #Flow debug.vault_pots_3 0

# Calculate values
## LEVEL 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=host] run scoreboard players add #Host debug.vault_pots_1 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=raiser] run scoreboard players add #Raiser debug.vault_pots_1 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=rib] run scoreboard players add #Rib debug.vault_pots_1 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=tide] run scoreboard players add #Tide debug.vault_pots_1 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=shaper] run scoreboard players add #Shaper debug.vault_pots_1 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=wayfinder] run scoreboard players add #Wayfinder debug.vault_pots_1 1
## LEVEL 2
execute as @e[type=minecraft:marker,tag=PotMarker,tag=coast] run scoreboard players add #Coast debug.vault_pots_2 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=sentry] run scoreboard players add #Sentry debug.vault_pots_2 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=snout] run scoreboard players add #Snout debug.vault_pots_2 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=vex] run scoreboard players add #Vex debug.vault_pots_2 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=ward] run scoreboard players add #Ward debug.vault_pots_2 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=wild] run scoreboard players add #Wild debug.vault_pots_2 1
## LEVEL 3
execute as @e[type=minecraft:marker,tag=PotMarker,tag=bolt] run scoreboard players add #Bolt debug.vault_pots_3 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=dune] run scoreboard players add #Dune debug.vault_pots_3 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=silence] run scoreboard players add #Silence debug.vault_pots_3 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=eye] run scoreboard players add #Eye debug.vault_pots_3 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=spire] run scoreboard players add #Spire debug.vault_pots_3 1
execute as @e[type=minecraft:marker,tag=PotMarker,tag=flow] run scoreboard players add #Flow debug.vault_pots_3 1

# Swap buffer
## LEVEL 1
execute unless score .Host debug.vault_pots_1 = #Host debug.vault_pots_1 run scoreboard players operation .Host debug.vault_pots_1 = #Host debug.vault_pots_1
execute unless score .Raiser debug.vault_pots_1 = #Raiser debug.vault_pots_1 run scoreboard players operation .Raiser debug.vault_pots_1 = #Raiser debug.vault_pots_1
execute unless score .Rib debug.vault_pots_1 = #Rib debug.vault_pots_1 run scoreboard players operation .Rib debug.vault_pots_1 = #Rib debug.vault_pots_1
execute unless score .Tide debug.vault_pots_1 = #Tide debug.vault_pots_1 run scoreboard players operation .Tide debug.vault_pots_1 = #Tide debug.vault_pots_1
execute unless score .Shaper debug.vault_pots_1 = #Shaper debug.vault_pots_1 run scoreboard players operation .Shaper debug.vault_pots_1 = #Shaper debug.vault_pots_1
execute unless score .Wayfinder debug.vault_pots_1 = #Wayfinder debug.vault_pots_1 run scoreboard players operation .Wayfinder debug.vault_pots_1 = #Wayfinder debug.vault_pots_1
## LEVEL 2
execute unless score .Coast debug.vault_pots_2 = #Coast debug.vault_pots_2 run scoreboard players operation .Coast debug.vault_pots_2 = #Coast debug.vault_pots_2
execute unless score .Sentry debug.vault_pots_2 = #Sentry debug.vault_pots_2 run scoreboard players operation .Sentry debug.vault_pots_2 = #Sentry debug.vault_pots_2
execute unless score .Snout debug.vault_pots_2 = #Snout debug.vault_pots_2 run scoreboard players operation .Snout debug.vault_pots_2 = #Snout debug.vault_pots_2
execute unless score .Vex debug.vault_pots_2 = #Vex debug.vault_pots_2 run scoreboard players operation .Vex debug.vault_pots_2 = #Vex debug.vault_pots_2
execute unless score .Ward debug.vault_pots_2 = #Ward debug.vault_pots_2 run scoreboard players operation .Ward debug.vault_pots_2 = #Ward debug.vault_pots_2
execute unless score .Wild debug.vault_pots_2 = #Wild debug.vault_pots_2 run scoreboard players operation .Wild debug.vault_pots_2 = #Wild debug.vault_pots_2
## LEVEL 3
execute unless score .Bolt debug.vault_pots_3 = #Bolt debug.vault_pots_3 run scoreboard players operation .Bolt debug.vault_pots_3 = #Bolt debug.vault_pots_3
execute unless score .Dune debug.vault_pots_3 = #Dune debug.vault_pots_3 run scoreboard players operation .Dune debug.vault_pots_3 = #Dune debug.vault_pots_3
execute unless score .Silence debug.vault_pots_3 = #Silence debug.vault_pots_3 run scoreboard players operation .Silence debug.vault_pots_3 = #Silence debug.vault_pots_3
execute unless score .Eye debug.vault_pots_3 = #Eye debug.vault_pots_3 run scoreboard players operation .Eye debug.vault_pots_3 = #Eye debug.vault_pots_3
execute unless score .Spire debug.vault_pots_3 = #Spire debug.vault_pots_3 run scoreboard players operation .Spire debug.vault_pots_3 = #Spire debug.vault_pots_3
execute unless score .Flow debug.vault_pots_3 = #Flow debug.vault_pots_3 run scoreboard players operation .Flow debug.vault_pots_3 = #Flow debug.vault_pots_3
