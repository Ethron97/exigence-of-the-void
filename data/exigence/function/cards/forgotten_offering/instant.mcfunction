say [Dropping random Rare Void card on a random Altar on level 3]

execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 positioned -462.5 62.00 -203.5 run function exigence:cards/summon_card {card_name:"dissonance_ii"}
execute if score #random Random matches 2 positioned -462.5 62.00 -203.5 run function exigence:cards/summon_card {card_name:"prescience"}
execute if score #random Random matches 3 positioned -462.5 62.00 -203.5 run function exigence:cards/summon_card {card_name:"patience"}
execute if score #random Random matches 4 positioned -462.5 62.00 -203.5 run function exigence:cards/summon_card {card_name:"forbidden_knowledge"}

# Handle
execute positioned -462.5 62.00 -203.5 as @e[distance=..1,type=item,tag=NCS] run function exigence:cards/forgotten_offering/private/handle
