# execute if entity @s[nbt=!{Inventory:[{tag:{mc_token:1b}}]}] run function roguelike:character/mercenary/token/check_token
# execute if entity @s[nbt={Inventory:[{tag:{mc_token:1b}}]}] run function roguelike:character/mercenary/token/update_token

execute store result score @s mc_used_f run data get entity @s SelectedItem.tag.charge
execute store result score @s mc_used_rc run data get entity @s SelectedItem.tag.halburd

execute if score @s mc_used_f matches 1 run function roguelike:character/mercenary/listener/used_f
execute if score @s mc_used_rc matches 1.. run scoreboard players set @s[scores={RP_USED_CSTICK=1..,RP_COOL2=..1}] mc_tattack 9
execute if score @s mc_used_rc matches 1.. store result score @s[scores={RP_USED_CSTICK=1..,RP_COOL2=..1}] RP_COOL2 run data get storage roguelike:rp rp_mc_cool2

execute if score @s mc_charge matches 1.. run function roguelike:character/mercenary/charge/charge
# execute if score @s mc_bide matches 1.. run function roguelike:character/mercenary/bide/bide_active
# execute if score @s mc_rattack matches 1.. run function roguelike:character/mercenary/round_atk/tick
execute if score @s mc_tattack matches 1.. run function roguelike:character/mercenary/triple_atk/tick