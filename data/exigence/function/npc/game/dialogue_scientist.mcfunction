execute if score Scientist DialogueGame matches 0 run say Sol's flaming beard, that actually worked!
execute if score Scientist DialogueGame matches 1 run say Took you long enough.
execute if score Scientist DialogueGame matches 2 run say Of course I put myself in there on purpose. A lock only an intelligent creature could unlock.
execute if score Scientist DialogueGame matches 3 run say I figured I would wait out this apocalypse until the city could be retaken.
execute if score Scientist DialogueGame matches 4 run say What?! It's just you?
execute if score Scientist DialogueGame matches 5 run say Ah... a resistance you say. I can help, but not from here. My equipment has been... ravaged.
execute if score Scientist DialogueGame matches 6 run say My legs don't appear to be cooperating after so long within the mirror...
execute if score Scientist DialogueGame matches 7 run tellraw @a[tag=ActivePlayer] [{text:"Interact with the Scientist to carry them. ",color:"gray"},{text:"WARNING: You cannot put them down again once you pick them up.",color:"red"}]
execute if score Scientist DialogueGame matches 8 run tag @s add Carried 
execute if score Scientist DialogueGame matches 8 run tag @a[advancements={exigence:listener/scientist_interact_game=true}] add Carrying

# increment score to advance dialogue
scoreboard players add Scientist DialogueGame 1