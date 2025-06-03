target = instance_nearest(x,y,obj_azuma_parent);

target.Ahp -= Eweaponatk;

instance_create_depth(x,y,depth,bombdestroy);
instance_destroy();