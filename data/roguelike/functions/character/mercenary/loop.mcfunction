execute if entity @s[nbt=!{Inventory:[{tag:{mc_token:1b}}]}] run function roguelike:character/mercenary/check_token
execute if entity @s[nbt={Inventory:[{tag:{mc_token:1b}}]}] run function roguelike:character/mercenary/update_token

execute store result score @s mc_used_f run data get entity @s SelectedItem.tag.charge
execute store result score @s mc_used_rc run data get entity @s SelectedItem.tag.halburd

execute if score @s mc_used_f matches 1 run function roguelike:character/mercenary/used_f
execute if score @s mc_used_rc matches 1.. if score @s RP_USED_CSTICK matches 1.. run function roguelike:character/mercenary/used_rightclick

execute if score @s mc_charge matches 1.. run function roguelike:character/mercenary/charge
execute if score @s mc_bide matches 1.. run function roguelike:character/mercenary/bide_active
execute if score @s mc_rattack matches 1.. run function roguelike:character/mercenary/round_atk/tick
execute if score @s mc_tattack matches 1.. run function roguelike:character/mercenary/triple_atk/tick