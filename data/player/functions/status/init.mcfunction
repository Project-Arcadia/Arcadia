#> player:status/init
#
# ステータス情報を初期化
#
# @within function main:core/assets/all_init

# 体力 - Health - HP  
    scoreboard players set @a[tag=player] hp 100

# マナ - Mana - MP  
    scoreboard players set @a[tag=player] mp 100
        
# 最大体力 - MaxHealth - MaxHP  
    scoreboard players set @a[tag=player] max_hp 100
        
# 最大マナ - MaxMana - MaxMP  
    scoreboard players set @a[tag=player] max_mp 100
    
# 攻撃力 - Strength - STR  
    scoreboard players set @a[tag=player] str 1
    
# 命中率 - HitChance - HC  
    scoreboard players set @a[tag=player] hc 100
    
# 素早さ - Speed - SPD  
    scoreboard players set @a[tag=player] spd 100
        
# レベル - Level - lv  
    scoreboard players set @a[tag=player] lv 0
        
# 経験値 - Xp - xp  
    scoreboard players set @a[tag=player] xp 0
    
# 体力回復速度 - HealthRegen - HPRegen  
    scoreboard players set @a[tag=player] hp_regen 100
        
# マナ回復速度 - ManaRegen - MPRegen  
    scoreboard players set @a[tag=player] mp_regen 100
        
# 体力減衰速度 - HPDegen - HealthDegen  
    scoreboard players set @a[tag=player] hp_degen 0
        
# マナ減衰速度 - MPDegen - ManaDegen  
    scoreboard players set @a[tag=player] mp_degen 0
        
# 攻撃速度 - AttackSpeed - AS  
    scoreboard players set @a[tag=player] as 4
    
# 基礎体力 - BaseHealth - BaseHP  
    scoreboard players set @a[tag=player] base_hp 100

# 基礎マナ - BaseMana - BaseMP  
    scoreboard players set @a[tag=player] base_mp 100
        
# 基礎最大体力 - BaseMaxHealth - BaseMaxHP  
    scoreboard players set @a[tag=player] base_max_hp 100
        
# 基礎最大マナ - BaseMaxMana - BaseMaxMP  
    scoreboard players set @a[tag=player] base_max_mp 100
    
# 基礎攻撃力 - BaseStrength - BaseSTR  
    scoreboard players set @a[tag=player] base_str 4
    
# 基礎命中率 - BaseHitChance - BaseHC  
    scoreboard players set @a[tag=player] base_hc 100
    
# 基礎素早さ - BaseSpeed - BaseSPD  
    scoreboard players set @a[tag=player] base_spd 100
    
# 追加体力 - BonusHealth - BonusHP  
    scoreboard players set @a[tag=player] bonus_hp 0

# 追加マナ - BonusMana - BonusMP  
    scoreboard players set @a[tag=player] bonus_mp 0
        
# 追加最大体力 - BonusMaxHealth - BonusMaxHP  
    scoreboard players set @a[tag=player] bonus_max_hp 0
        
# 追加最大マナ - BonusMaxMana - BonusMaxMP  
    scoreboard players set @a[tag=player] bonus_max_mp 0
    
# 追加攻撃力 - BonusStrength - BonusSTR  
    scoreboard players set @a[tag=player] bonus_str 0
    
# 追加命中率 - BonusHitChance - BonusHC  
    scoreboard players set @a[tag=player] bonus_hc 0
    
# 追加素早さ - BonusSpeed - BonusSPD  
    scoreboard players set @a[tag=player] bonus_spd 0
