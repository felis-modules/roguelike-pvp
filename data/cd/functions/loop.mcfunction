execute as @e[type=player,scores={cd_dmg=-600..600}] run function cd:change_player_health
execute as @e[type=player,scores={cd_dmg2=1..60}] run function cd:change_player_health
execute as @e[type=!player,scores={cd_dmg=-600..600}] run function cd:change_mob_health
execute as @e[type=!player,scores={cd_dmg2=1..60}] run function cd:change_mob_health

schedule function cd:loop 1t