/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



if global.player_dead_state{

	vspeed = 0 
}
else
{	
	
	
	if (mouse_check_button_pressed(mb_left)) && pode_disparar
	{	
		if array_length(layer_get_all_elements(layer_get_id("Projeteis"))) < 2 {
			pode_disparar = false
			controlador_cooldowns.alarm[1]  = game_get_speed(gamespeed_fps) * tempo_entre_disparos
			show_debug_message("Clicado")
			atirar_projetil()
		}
	}
}

