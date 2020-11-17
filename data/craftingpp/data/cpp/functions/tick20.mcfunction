# 玩家
execute as @a at @s run function cpp:player/tick20
# 怪物加强
execute as @e[type=#cpp:enhance_mobs,tag=!cpp_enhance_mobs_checked] run function cpp:enhance_mobs/tick20
execute as @e[type=#cpp:zombies] at @s if predicate cpp:zombie_can_destroy run function cpp:enhance_mobs/destroy
# 黑暗动物攻击
execute if score $doDarkAnimalSpawning cppConfig matches 1 as @e[type=#cpp:animals] run function cpp:dark_animals/tick20
# 流浪商人-交易
execute as @e[type=wandering_trader,tag=!cpp_trade_added] run function cpp:wandering_trader/tick20
# 村民-交易
execute as @e[type=villager,tag=!cpp_villager_modified] run function cpp:villager/tick20

# 成熟的树叶
execute store result score #rts cppValue run gamerule randomTickSpeed
execute store result score #rtsno cppValue if entity @e[type=armor_stand,tag=cpp_leaves_on_tree]
scoreboard players operation #rtsno cppValue *= #rts cppValue
scoreboard players operation #leaves_rts cppValue += #rtsno cppValue
execute if score #leaves_rts cppValue >= $modLeavesThreshold cppConfig as @e[type=armor_stand,tag=cpp_leaves_on_tree,sort=random,limit=1] at @s run function cpp:plants/leaves/type

# 物品展示框
execute as @e[type=item_frame] at @s run function cpp:item_frame/tick20

# 告示牌
execute as @e[type=item,predicate=cpp:item/sign_dye] at @s align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ #signs run function cpp:item/dye_sign/check

# 药水云
execute as @e[type=area_effect_cloud] at @s run function cpp:area_effect_cloud/tick20

schedule function cpp:tick20 20t
