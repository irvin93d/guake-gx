if (rollback_event_id == rollback_game_started)
	for (var i = 0; i < rollback_event_param.num_players; i++)
		instance_create_layer(64 + i * 64, 64, "Instances", obj_player).player_id = i;