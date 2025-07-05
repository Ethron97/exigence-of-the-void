say [Void cards are not consumed this run. Menace starts at and cannot be reduced below 2 * X where X is the number of void cards in the deck]


scoreboard players set Oblivion Modifiers 1



# OLD
#say [Other Void cards are not consumed this run. One non-void card is consumed at the end of this run.]

# Mark one nonvoid processed card as Oblivion
#tag @e[type=minecraft:armor_stand,tag=Card,scores={IsVoid=0},limit=1,sort=random] add OblivionCard

#execute as @e[type=minecraft:armor_stand,tag=OblivionCard] run say <<< ✘ Oblivion ✘

#scoreboard players set Oblivion Modifiers 1

# Add tag to ensure this card does not get returned from itself
#tag @s add OblivionCard
