@echo off

setlocal
for /L %%j in (1, 1, 6) do (
  md shell_%%j
  cd shell_%%j

  echo execute if score @s cd_hp_max matches %%j00..%%j09 run function cd:shell/shell_%%j/shell_%%j_0/apply_health > apply_health.mcfunction
  echo execute if score @s cd_hp_max matches %%j10..%%j19 run function cd:shell/shell_%%j/shell_%%j_1/apply_health >> apply_health.mcfunction
  echo execute if score @s cd_hp_max matches %%j20..%%j29 run function cd:shell/shell_%%j/shell_%%j_2/apply_health >> apply_health.mcfunction
  echo execute if score @s cd_hp_max matches %%j30..%%j39 run function cd:shell/shell_%%j/shell_%%j_3/apply_health >> apply_health.mcfunction
  echo execute if score @s cd_hp_max matches %%j40..%%j49 run function cd:shell/shell_%%j/shell_%%j_4/apply_health >> apply_health.mcfunction
  echo execute if score @s cd_hp_max matches %%j50..%%j59 run function cd:shell/shell_%%j/shell_%%j_5/apply_health >> apply_health.mcfunction
  echo execute if score @s cd_hp_max matches %%j60..%%j69 run function cd:shell/shell_%%j/shell_%%j_6/apply_health >> apply_health.mcfunction
  echo execute if score @s cd_hp_max matches %%j70..%%j79 run function cd:shell/shell_%%j/shell_%%j_7/apply_health >> apply_health.mcfunction
  echo execute if score @s cd_hp_max matches %%j80..%%j89 run function cd:shell/shell_%%j/shell_%%j_8/apply_health >> apply_health.mcfunction
  echo execute if score @s cd_hp_max matches %%j90..%%j99 run function cd:shell/shell_%%j/shell_%%j_9/apply_health >> apply_health.mcfunction
  for /L %%i in (1, 1, 9) do (
    md shell_%%j_%%i
    cd shell_%%j_%%i
    echo execute if score @s cd_hp_max matches %%j%%i0 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -%%j%%i.0 add > apply_health.mcfunction
    echo execute if score @s cd_hp_max matches %%j%%i1 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -%%j%%i.1 add >> apply_health.mcfunction
    echo execute if score @s cd_hp_max matches %%j%%i2 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -%%j%%i.2 add >> apply_health.mcfunction
    echo execute if score @s cd_hp_max matches %%j%%i3 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -%%j%%i.3 add >> apply_health.mcfunction
    echo execute if score @s cd_hp_max matches %%j%%i4 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -%%j%%i.4 add >> apply_health.mcfunction
    echo execute if score @s cd_hp_max matches %%j%%i5 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -%%j%%i.5 add >> apply_health.mcfunction
    echo execute if score @s cd_hp_max matches %%j%%i6 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -%%j%%i.6 add >> apply_health.mcfunction
    echo execute if score @s cd_hp_max matches %%j%%i7 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -%%j%%i.7 add >> apply_health.mcfunction
    echo execute if score @s cd_hp_max matches %%j%%i8 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -%%j%%i.8 add >> apply_health.mcfunction
    echo execute if score @s cd_hp_max matches %%j%%i9 run attribute @s minecraft:generic.max_health modifier add 1-2-4-8-16 "damage" -%%j%%i.9 add >> apply_health.mcfunction
    cd ..
  )
  cd ..
)

pause

