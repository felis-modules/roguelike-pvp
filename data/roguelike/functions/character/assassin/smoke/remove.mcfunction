scoreboard players remove @s as_smoke 1

function roguelike:character/assassin/smoke/update

# execute if entity @s[scores={as_smoke=1..}] if score .where as_smokemoke matches 3 run tag @s add RP_spause2
execute store result score @s RP_COOL2 run data get storage roguelike:rp rp_as_cool2
