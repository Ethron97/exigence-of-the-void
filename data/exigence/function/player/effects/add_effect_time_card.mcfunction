# Macro

# WITH {effect:"",duration:}
# Valid effects: regen, jump, beastsense, invisibility, detectthoughts, glimmer, flicker, circulation
#   NOT speed

## OPTIONAL
#   Tag players with "CardEffecting" if we want to target specific players for some reason

#====================================================================================================

# If no players have "CardEffecting" tag, give to all active players
#   This lets us control it before hand if we want
execute unless entity @a[tag=ActivePlayer,tag=CardEffecting] run tag @a[scores={dead=0},tag=ActivePlayer] add CardEffecting

# From card
scoreboard players set et.FromCard game.effect_temp 1
scoreboard players set et.FromSpellsling game.effect_temp 0
execute if entity @e[x=537,y=-1,z=531,dx=4,dy=1,dz=10,tag=Card,type=minecraft:armor_stand,tag=Spellslinging] run scoreboard players set et.FromSpellsling game.effect_temp 1

execute as @a[tag=ActivePlayer] run function exigence:player/effects/private/calc_heighten
# If any heighten is getting used, reduce everyone's heighten level in 1t
execute as @a[scores={dead=0,game.player.heighten=1..},tag=ActivePlayer,tag=CardEffecting] run tag @s add ReduceHeighten

# Store given duration in temp variable
$scoreboard players set et.BaseTime game.effect_temp $(duration)
scoreboard players set et.SetTime game.effect_temp 0
scoreboard players set et.BonusTime game.effect_temp 0

# Tellraw if heighten
#$execute as @a[scores={dead=0,game.player.calc_heighten=2..},tag=ActivePlayer,tag=CardEffecting] run tellraw @s [{text:" └─ [Heighten]: Duration of $(effect) multiplied by ",color:"gray"},{score:{name:"@s",objective:"game.player.calc_heighten"},color:"yellow"}]

# Update in-game player effects
$execute as @a[scores={dead=0},tag=ActivePlayer,tag=CardEffecting] run function exigence:player/effects/private/update_effect/$(effect)

# Remove localish tag
tag @a[tag=CardEffecting] remove CardEffecting
