data modify entity @e[tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] HandItems[0] set from entity @s SelectedItem.tag.mainhand
data modify entity @e[tag=cpp_golem,sort=nearest,limit=1,distance=..0.1] HandItems[1] set from entity @s SelectedItem.tag.offhand
replaceitem entity @s[gamemode=!creative] weapon.mainhand air
