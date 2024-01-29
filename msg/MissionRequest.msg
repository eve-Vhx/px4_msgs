uint64 timestamp		# time since system start (microseconds)

uint8 MISSION_NONE=0	#
uint8 MISSION_LANDINGLOOP=1	#
uint8 MISSION_MOVETONEST=2	#
uint8 MISSION_WAYPOINT=3 #
uint8 MISSION_BOUNDING=4 #
uint8 mission_type
uint8 mission_id
uint8 current_wp
MissionWaypoint landing
MissionWaypoint[7] waypoints # waypoints
bool updated
