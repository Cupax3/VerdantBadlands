/*
For our purposes, mob spawners and /VERY/ large explosions can now trigger 'tremors'.
This means that a certain set of tiles, around landmarks that I'll have below, can check for a collapse possibility.
It keeps the map changing, and has various applications in the realm of RP. - Carl
*/
GLOBAL_LIST_EMPTY(tremor_landmarks)
#define TREMOR_CHECK_RANGE 12

/obj/effect/landmark/tremor_area
	name = "tremor impact area"
	var/range = TREMOR_CHECK_RANGE //tile radius to check

/obj/effect/landmark/tremor_area/proc/tremor()

	for(var/turf/open/TR in orange(range, get_turf(src)))
		TR.collapse_check()

	qdel(src)

/obj/effect/landmark/tremor_area/Initialize(mapload)
	. = ..()
	GLOB.tremor_landmarks += src

/obj/effect/landmark/tremor_area/Destroy()
	GLOB.tremor_landmarks -= src
	return ..()

#undef TREMOR_CHECK_RANGE
