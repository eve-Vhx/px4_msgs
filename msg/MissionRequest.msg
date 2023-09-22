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
MissionWaypoint[10] waypoints # waypoints
bool updated

#char[15] drone_id
#char[15] bound_id
#char[15] nest_id
#uint8 BOUNDING_INIT=0   #
#uint8 BOUNDING_TRANS=1   #
#uint8 BOUNDING_FINAL=2   #
#uint8 bounding_phase
#MissionWaypoint[3] bounding
