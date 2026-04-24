# Reset the cooldown for the next card draw
scoreboard players operation card.play.cooldown tick_counter = #CardPlayCooldownLimit tick_counter

scoreboard players remove card.queue game.dungeon.temp 1

function exigence:deck/draw_card
