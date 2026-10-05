// Created by Crowbar 0.74

$modelname "workshop/player/items/all_class/hwn2024_triboniophorus/hwn2024_triboniophorus_spy.mdl"

$bodygroup "default"
{
	studio "hwn2024_triboniophorus_spy.smd"
}

$lod 11
{
	replacemodel "hwn2024_triboniophorus_spy.smd" "hwn2024_triboniophorus_spy_lod1.smd"
	nofacial
}
$lod 22
{
	replacemodel "hwn2024_triboniophorus_spy.smd" "hwn2024_triboniophorus_spy_lod2.smd"
	nofacial
}

$surfaceprop "default"

$contents "solid"

$illumposition 1.76 0.824 68.214

$cdmaterials "models\workshop\player\items\all_class\hwn2024_triboniophorus\"
$cdmaterials ""

$attachment "unusual" "bip_head" 0 0 0 rotate 0 0 0
$attachment "cig_drg_smoke" "bip_head" 2.43 -7.1 -5.01 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -4.264 -2.096 46.699 2.861 5.616 89.73

$definebone "bip_pelvis" "" 0 46.698845 -0.827201 0 0 -179.376026 0 0 0 0 0 0
$definebone "bip_spine_0" "bip_pelvis" 0 -5.005421 0 0 0 -13.82375 0 0 0 0 0 0
$definebone "bip_spine_1" "bip_spine_0" 0 -5.178513 0.000001 0 0 -4.693038 0 0 0 0 0 0
$definebone "bip_spine_2" "bip_spine_1" 0 -7.272385 -0.000012 0 0 17.020335 0 0 0 0 0 0
$definebone "bip_spine_3" "bip_spine_2" 0 -4.878658 0.000007 0 0 12.960988 0 0 0 0 0 0
$definebone "bip_neck" "bip_spine_3" 0 -4.423134 0.000004 0 0 -2.863586 0 0 0 0 0 0
$definebone "bip_head" "bip_neck" 0 -2.858559 0.000002 0 0 -9.224904 0 0 0 0 0 0
$definebone "slug_jiggle" "bip_head" 1.247154 -7.93737 -2.415128 -89.899988 107.200898 179.97946 0 0 0 0 0 0

$jigglebone "slug_jiggle"
{
	is_rigid
	{
		length 1
		tip_mass 25
		angle_constraint 5
	}
	has_base_spring
	{
		base_mass 0
		stiffness 400
		damping 5
		left_constraint 0 0
		left_friction 0
		up_constraint -0.1 0.1
		up_friction 0
		forward_constraint -0.5 0.5
		forward_friction 0
	}
}

$sequence "ref" {
	"hwn2024_triboniophorus_spy_anims\ref.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "hwn2024_triboniophorus_spy_physics.smd"
{
	$mass 5
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
