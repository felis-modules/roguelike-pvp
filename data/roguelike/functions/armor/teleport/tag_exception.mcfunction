tag @s add is_switch
tag @s remove do_not_tp_switch

execute if entity @s[tag=is_switch] as @s[tag=paladin] run tag @s add do_not_tp_switch
execute if entity @s[tag=is_switch] as @s[tag=mercenary] run tag @s add do_not_tp_switch
execute if entity @s[tag=is_switch] as @s[tag=assassin] run tag @s add do_not_tp_switch

tag @s remove is_switch