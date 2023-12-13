#> main:core/assets/buildup
#
# scoreboardやstorageなどの必要な初期データを生成
#
# @within function main:core/load

# 必須リスト
    #> バージョン設定  
    #
        #data modify storage global Version set value "v0.1"
    
    #> 一時的なスコア保存用  
    # 使用時には必ず'$'を付けてダミープレイヤー(フェイクプレイヤー)だと分かるようにしてください
        scoreboard objectives add Temporary dummy
    
    #> 定数を定義する  
    # 使用時には必ず'#'を付けて定数かつダミープレイヤー(フェイクプレイヤー)だと分かるようにしてください
        scoreboard objectives add Constant dummy
    function main:core/assets/set_constant

    #> エンティティの重なりを無効  
    # エンティティの重なりを無効にするチームを生成
        team add NoCollision
    team modify NoCollision collisionRule never

# ステータス関連
    # 表示リスト
        #> 体力 - Health - HP  
        # 初期値: 100, 現在のHPを示す(元の体力の5倍の設定)  
        # Health = BaseHealth + BonusHealth
            scoreboard objectives add hp dummy "Health"

        #> マナ - Mana - MP  
        # 初期値: 100, 現在のMPを示す
            scoreboard objectives add mp dummy "Mana"
        
        #> 最大体力 - MaxHealth - MaxHP  
        # 初期値: 100, 現在の最大HPを示す(元の体力の5倍の設定)
            scoreboard objectives add max_hp dummy "MaxHealth"
        
        #> 最大マナ - MaxMana - MaxMP  
        # 初期値: 100, 現在の最大MPを示す
            scoreboard objectives add max_mp dummy "MaxMana"
    
        #> 攻撃力 - Strength - STR  
        # 初期値: 1, 現在の攻撃力を示す
            scoreboard objectives add str dummy "Strength"
    
        #> 命中率 - HitChance - HC  
        # 初期値: 100(%), 現在の攻撃の命中率を示す
            scoreboard objectives add hc dummy "HitChance"
    
        #> 素早さ - Speed - SPD  
        # 初期値: 100, 現在の移動速度を示す
            scoreboard objectives add spd dummy "Speed"
        
        #> レベル - Level - lv  
        # 初期値: 0, 現在のレベルを示す
            scoreboard objectives add lv dummy "Level"
        
        #> 経験値 - Xp - xp  
        # 初期値: 0, 現在の経験値量を示す
            scoreboard objectives add xp dummy "Xp"
    
    # 非表示リスト
        #> 体力回復速度 - HealthRegen - HPRegen  
        # 初期値: 100p/2000t(1p/20t), 現在の体力回復速度を示す
            scoreboard objectives add hp_regen dummy "HealthRegen"
        
        #> マナ回復速度 - ManaRegen - MPRegen  
        # 初期値: 100p/2000t(1p/20t), 現在のマナ回復速度を示す
            scoreboard objectives add mp_regen dummy "ManaRegen"
        
        #> 体力減衰速度 - HPDegen - HealthDegen  
        # 初期値: 0p/2000t(0p/2000t), 現在の体力減衰速度を示す
            scoreboard objectives add hp_degen dummy "HealthDegen"
        
        #> マナ減衰速度 - MPDegen - ManaDegen  
        # 初期値: 0p/2000t(0p/2000t), 現在のマナ減衰速度を示す
            scoreboard objectives add mp_degen dummy "ManaDegen"
        
        #> 攻撃速度 - AttackSpeed - AS  
        # 初期値: 4, 現在の攻撃速度を示す
            scoreboard objectives add as dummy "AttackSpeed"
    
    # 基礎ステータス
        #> 基礎体力 - BaseHealth - BaseHP  
        # 初期値: 100, 基礎HPを示す(元の体力の5倍の設定)  
        # BaseHealth = GeneralHealth * 5
            scoreboard objectives add base_hp dummy "BaseHealth"

        #> 基礎マナ - BaseMana - BaseMP  
        # 初期値: 100, 基礎MPを示す
            scoreboard objectives add base_mp dummy "BaseMana"
        
        #> 基礎最大体力 - BaseMaxHealth - BaseMaxHP  
        # 初期値: 100, 基礎最大HPを示す(元の体力の5倍の設定)
            scoreboard objectives add base_max_hp dummy "BaseMaxHealth"
        
        #> 基礎最大マナ - BaseMaxMana - BaseMaxMP  
        # 初期値: 100, 基礎最大MPを示す
            scoreboard objectives add base_max_mp dummy "BaseMaxMana"
    
        #> 基礎攻撃力 - BaseStrength - BaseSTR  
        # 初期値: 1, 基礎攻撃力を示す
            scoreboard objectives add base_str dummy "BaseStrength"
    
        #> 基礎命中率 - BaseHitChance - BaseHC  
        # 初期値: 100(%), 現在の攻撃命中率を示す
            scoreboard objectives add base_hc dummy "BaseHitChance"
    
        #> 基礎素早さ - BaseSpeed - BaseSPD  
        # 初期値: 100, 現在の移動速度を示す
            scoreboard objectives add base_spd dummy "BaseSpeed"
    
    # 追加ステータス
        #> 追加体力 - BonusHealth - BonusHP  
        # 初期値: 0, 追加HPを示す(臨時体力=衝撃吸収として考えるべき？)
            scoreboard objectives add bonus_hp dummy "BonusHealth"

        #> 追加マナ - BonusMana - BonusMP  
        # 初期値: 0, 追加MPを示す
            scoreboard objectives add bonus_mp dummy "BonusMana"
        
        #> 追加最大体力 - BonusMaxHealth - BonusMaxHP  
        # 初期値: 0, 追加最大HPを示す(元の体力の5倍の設定)
            scoreboard objectives add bonus_max_hp dummy "BonusMaxHealth"
        
        #> 追加最大マナ - BonusMaxMana - BonusMaxMP  
        # 初期値: 0, 追加最大MPを示す
            scoreboard objectives add bonus_max_mp dummy "BonusMaxMana"
    
        #> 追加攻撃力 - BonusStrength - BonusSTR  
        # 初期値: 0, 追加攻撃力を示す
            scoreboard objectives add bonus_str dummy "BonusStrength"
    
        #> 追加命中率 - BonusHitChance - BonusHC  
        # 初期値: 0, 追加攻撃命中率を示す
            scoreboard objectives add bonus_hc dummy "BonusHitChance"
    
        #> 追加素早さ - BonusSpeed - BonusSPD  
        # 初期値: 0, 追加移動速度を示す
            scoreboard objectives add bonus_spd dummy "BonusSpeed"

    # ステータス計算用
        #> バニラ体力 - GeneralHealth - GeneralHP  
        # 初期値: 20, バニラ状態での体力を読み取る  
        # (初期値を100にするための調整用、原則として変更しない)
            #scoreboard objectives add general_hp dummy "GeneralHealth"
            #そもそもBaseHPを20*5で設定すればよくない？

