# Clear farstepper
#   Queued 1t in future if a player is Farstepping

#   Clear if farstep is 0
clear @a[tag=ActivePlayer,scores={effect_farstep=0}] carrot_on_a_stick[custom_data~{item_name:'item_far_step'}]

# REset preview
execute as @a[tag=ActivePlayer,scores={effect_farstep=0}] run function exigence:player/use_item/phantom_membrane/private/update_preview
