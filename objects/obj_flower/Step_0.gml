event_inherited();


if (global.battle) {
    battle_mode = true;
	var weak_azuma = get_id_minhp(obj_azuma_parent);
    if (target == noone || !instance_exists(target)) {
        if (weak_azuma != noone) {
            target = weak_azuma;
            can_attack = true;
        } else {
            sprite_index = sprite_idle;
        }
    } else {
		target = weak_azuma;
        speed = 0;
        sprite_index = sprite_attack;

        // 攻撃インターバル中はアイドル用スプライトで
        if (attack_interval_timer > 0) {
			sprite_index = sprite_idle;
            attack_interval_timer--;
        } else {
            // 攻撃インターバル終了後、アニメーションの最終フレームで攻撃判定
            if (image_index >= image_number - 3) {
                if (can_attack) {
                    instance_create_depth(x + 200, y - sprite_height/2 - 30,depth, obj_weapon_flower)
                    attack_interval_timer = attack_interval; // 攻撃後、タイマーをリセット
                    can_attack = false; // 攻撃後、攻撃不可にする
                }
            } else if (image_index < image_number - 1) {
                can_attack = true; // 最終フレームに達していなければ攻撃可能にする
            }
        }
    }
} else {
    battle_mode = false;
    sprite_index = sprite_idle;
    target = noone;
    speed = 0;
    attack_interval_timer = 0;
    can_attack = false; // 非戦闘時は攻撃不可
}