/// @description Draw 
with(bob){
	other.freeze_meter = freeze_meter;
	other.freeze_full = freeze_full;
	other.freeze_max = freeze_max;
}
image_index = round(2 * freeze_meter / freeze_max) + freeze_full * 3;