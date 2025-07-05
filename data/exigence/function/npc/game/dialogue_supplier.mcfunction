execute if score Supplier DialogueGame matches 0 run say H-hello?
execute if score Supplier DialogueGame matches 1 run say Ancient l-light! H-how did you find me?
execute if score Supplier DialogueGame matches 2 run say Oh... you're h-here for the keys?
execute if score Supplier DialogueGame matches 3 run say T-tell you what... you c-carry me out of here and you can h-have all the keys you want.
execute if score Supplier DialogueGame matches 3 run tellraw @a[tag=ActivePlayer] [{text:"Interact with the Supplier to carry them. ",color:"gray"},{text:"WARNING: You cannot put him down again once you pick him up.",color:"red"}]
execute if score Supplier DialogueGame matches 4 run tag @s add Carried
execute if score Supplier DialogueGame matches 4 run tag @a[advancements={exigence:listener/supplier_interact_game=true}] add Carrying

# increment score to advance dialogue
scoreboard players add Supplier DialogueGame 1