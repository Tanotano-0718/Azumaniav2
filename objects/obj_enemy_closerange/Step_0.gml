event_inherited();

if (global.battle) {
    battle_mode = true;

    if (target == noone || !instance_exists(target)) {
        var nearest_enemy = instance_nearest(x, y, obj_azuma_parent);
        if (nearest_enemy != noone) {
            target = nearest_enemy;
            can_attack = true;
        } else {
            sprite_index = sprite_idle;
        }
    } else {
        if (!place_meeting(x, y, target)) {
            move_towards_point(target.x, target.y, spd);
            can_attack = false;
            attack_interval_timer = 0;
        } else {
            speed = 0;
            sprite_index = sprite_attack;

            // 攻撃インターバル中はアイドル用スプライトで
            if (attack_interval_timer > 0) {
				sprite_index = sprite_idle;
                attack_interval_timer--;
            } else {
                // 攻撃インターバル終了後、アニメーションの最終フレームで攻撃判定
                if (image_index >= image_number - 1) {
                    if (can_attack) {
                        target.hp -= atk;
                        attack_interval_timer = attack_interval; // 攻撃後、タイマーをリセット
                        can_attack = false; // 攻撃後、攻撃不可にする
                    }
                } else if (image_index < image_number - 1) {
                    can_attack = true; // 最終フレームに達していなければ攻撃可能にする
                }
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