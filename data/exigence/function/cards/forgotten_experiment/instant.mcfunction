say [Dropping random Uncommon Void card in the laboratory]

execute store result score #random Random run random value 1..4
execute if score #random Random matches 1 positioned -462.5 62.00 -203.5 run function exigence:cards/summon_card {card_name:"dissonance"}
execute if score #random Random matches 2 positioned -462.5 62.00 -203.5 run function exigence:cards/summon_card {card_name:"cart_cache"}
execute if score #random Random matches 3 positioned -462.5 62.00 -203.5 run function exigence:cards/summon_card {card_name:"tasty_surprise"}
execute if score #random Random matches 4 positioned -462.5 62.00 -203.5 run function exigence:cards/summon_card {card_name:"remembrance"}

# Handle
execute positioned -462.5 62.00 -203.5 as @e[distance=..1,type=item,tag=NCS] run function exigence:cards/forgotten_experiment/private/handle
