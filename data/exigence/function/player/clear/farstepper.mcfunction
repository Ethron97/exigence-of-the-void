# Clear farstepper
#   Queued 1t in future if a player is Farstepping

#   Clear if farstep is 0
clear @a[scores={game.player.effects.farstep=0},tag=ActivePlayer] carrot_on_a_stick[custom_data~{item_name:'item_far_step'}]

# REset preview
execute as @a[scores={game.player.effects.farstep=0},tag=ActivePlayer] run function exigence:player/use_item/phantom_membrane/private/update_preview
