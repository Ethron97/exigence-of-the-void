say [Dropping random Common Void card in the tavern]

execute store result score random Random run random value 1..4
execute if score random Random matches 1 positioned -339.5 13.0 -190.5 run function exigence:cards/summon_card {card_name:"endurance"}
execute if score random Random matches 2 positioned -339.5 13.0 -190.5 run function exigence:cards/summon_card {card_name:"fallow_coffers"}
execute if score random Random matches 3 positioned -339.5 13.0 -190.5 run function exigence:cards/summon_card {card_name:"scout"}
execute if score random Random matches 4 positioned -339.5 13.0 -190.5 run function exigence:cards/summon_card {card_name:"delve"}

# Handle
execute positioned -339.5 13.0 -190.5 as @e[distance=..1,type=item,tag=NCS] run function exigence:cards/forgotten_belonging/private/handle
