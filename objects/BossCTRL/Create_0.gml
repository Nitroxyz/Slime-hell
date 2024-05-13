//randomizes the randomness
randomize();

//-1 by default, otherwise set to whichever segment is currently doing the thing.
major_segment = -1;

//Alarm 0 is the timer for the next major to start after the prev major ends.
alarm_set(0,120);

//spawning head
head_segment = instance_create_layer(960, 224, "BossLayer", MidSegment);

//spawning left segments
missile_left = instance_create_layer(512, 272, "BossLayer", Lcannon);
spawner_left = instance_create_layer(660, 192, "BossLayer", Lspawner);
hand_left = instance_create_layer(320, 448, "BossLayer", Lhand);

//spawning right segments
missile_right = instance_create_layer(1408, 272, "BossLayer", Rcannon);
spawner_right = instance_create_layer(1260, 192, "BossLayer", Rspawner);
hand_right = instance_create_layer(1600, 448, "BossLayer", Rhand);

