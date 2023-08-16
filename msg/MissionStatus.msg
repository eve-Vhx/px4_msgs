uint64 timestamp		# time since system start (microseconds)

uint8 MISSION_NONE=0	#
uint8 MISSION_LANDINGLOOP=1	#
uint8 MISSION_MOVETONEST=2	#
uint8 MISSION_WAYPOINT=3 #
uint8 mission_type
MissionWaypoint landing
MissionWaypoint[10] waypoints # waypoints
MissionWaypoint current_target
bool is_landing
