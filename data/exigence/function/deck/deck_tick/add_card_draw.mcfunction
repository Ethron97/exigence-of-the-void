# Reset the cooldown for the next card draw (then draw card)

#====================================================================================================

execute if score toggle.deck debug matches 1 if score debug.level debug matches 3.. run say (D3) Add draw card

scoreboard players operation card.play.cooldown tick_counter = #CardPlayCooldownLimit tick_counter

scoreboard players remove card.queue game.dungeon.temp 1

function exigence:deck/draw_card
