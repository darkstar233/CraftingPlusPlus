# 弹出物品
setblock ~ 255 ~ shulker_box
data modify block ~ 255 ~ Items set from block ~ ~ ~ Items
data remove block ~ 255 ~ Items[{tag:{cpp_clear:1b}}]
loot give @p mine ~ 255 ~ shears{drop_content:1b}
setblock ~ 255 ~ air
# 选项
execute unless data block ~ ~ ~ Items[{Slot:11b}] run function cpp:beacon_enhancer/option/player
execute unless data block ~ ~ ~ Items[{Slot:15b}] run function cpp:beacon_enhancer/option/mob
execute unless data block ~ ~ ~ Items[{Slot:17b}] run function cpp:beacon_enhancer/option/target
# GUI
replaceitem block ~ ~ ~ container.0 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971014}
replaceitem block ~ ~ ~ container.1 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.2 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.3 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971015}
replaceitem block ~ ~ ~ container.4 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.5 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
execute as @s[scores={cppMobType=0}] run replaceitem block ~ ~ ~ container.6 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971016}
execute as @s[scores={cppMobType=1}] run replaceitem block ~ ~ ~ container.6 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971017}
replaceitem block ~ ~ ~ container.7 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.8 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}

replaceitem block ~ ~ ~ container.9 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.10 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
execute as @s[scores={cppPlayerEff=1}] run replaceitem block ~ ~ ~ container.11 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.fire_resistance"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppPlayerEff=2}] run replaceitem block ~ ~ ~ container.11 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.water_breathing"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppPlayerEff=3}] run replaceitem block ~ ~ ~ container.11 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.night_vision"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppPlayerEff=4}] run replaceitem block ~ ~ ~ container.11 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.invisibility"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppPlayerEff=5}] run replaceitem block ~ ~ ~ container.11 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.saturation"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppPlayerEff=6}] run replaceitem block ~ ~ ~ container.11 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.chain"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppPlayerEff=1}] run replaceitem block ~ ~ ~ container.12 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971061}
execute as @s[scores={cppPlayerEff=2}] run replaceitem block ~ ~ ~ container.12 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971062}
execute as @s[scores={cppPlayerEff=3}] run replaceitem block ~ ~ ~ container.12 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971063}
execute as @s[scores={cppPlayerEff=4}] run replaceitem block ~ ~ ~ container.12 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971064}
execute as @s[scores={cppPlayerEff=5}] run replaceitem block ~ ~ ~ container.12 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971065}
execute as @s[scores={cppPlayerEff=6}] run replaceitem block ~ ~ ~ container.12 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971066}
replaceitem block ~ ~ ~ container.13 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.14 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
execute as @s[scores={cppMobEff=1}] run replaceitem block ~ ~ ~ container.15 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.slowness"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppMobEff=2}] run replaceitem block ~ ~ ~ container.15 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.weakness"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppMobEff=3}] run replaceitem block ~ ~ ~ container.15 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.glowing"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppMobEff=4}] run replaceitem block ~ ~ ~ container.15 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.poison"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppMobEff=5}] run replaceitem block ~ ~ ~ container.15 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.wither"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppMobEff=6}] run replaceitem block ~ ~ ~ container.15 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"info.cpp.attract"}',Lore:['{"italic":false,"translate":"lore.cpp.switch"}']},CustomModelData:12970000}
execute as @s[scores={cppMobEff=1}] run replaceitem block ~ ~ ~ container.16 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971067}
execute as @s[scores={cppMobEff=2}] run replaceitem block ~ ~ ~ container.16 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971068}
execute as @s[scores={cppMobEff=3}] run replaceitem block ~ ~ ~ container.16 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971069}
execute as @s[scores={cppMobEff=4}] run replaceitem block ~ ~ ~ container.16 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971070}
execute as @s[scores={cppMobEff=5}] run replaceitem block ~ ~ ~ container.16 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971071}
execute as @s[scores={cppMobEff=6}] run replaceitem block ~ ~ ~ container.16 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12971072}
execute as @s[scores={cppMobType=0}] run replaceitem block ~ ~ ~ container.17 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer.hostile"}'},CustomModelData:12970000}
execute as @s[scores={cppMobType=1}] run replaceitem block ~ ~ ~ container.17 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer.all_mobs"}'},CustomModelData:12970000}

replaceitem block ~ ~ ~ container.18 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.19 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.20 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.21 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.22 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.23 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.24 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.25 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
replaceitem block ~ ~ ~ container.26 firework_star{cpp_clear:1b,display:{Name:'{"italic":false,"translate":"item.cpp.beacon_enhancer"}'},CustomModelData:12970000}
