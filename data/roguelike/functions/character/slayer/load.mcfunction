
scoreboard objectives add sl_dark_rune dummy
scoreboard objectives add sl_slow dummy

scoreboard players add @a sl_slow 0

scoreboard players add @a sl_dark_rune 0

## 스킬 쿨 (cool1은 광폭화)

data merge storage roguelike:rp {rp_sl_cool1:25,rp_sl_cool2:16,rp_sl_atkspeed:40,rp_sl_atkdmg:16}