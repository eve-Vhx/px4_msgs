uint64 timestamp		# time since system start (microseconds)

uint8 MISSION_NONE=0	#
uint8 MISSION_LANDINGLOOP=1	#
uint8 MISSION_MOVETONEST=2	#
uint8 MISSION_WAYPOINT=3 #
uint8 MISSION_BOUNDING=4 #
uint8 mission_type

uint8 BOUNDING_INIT=0   #
uint8 BOUNDING_TRANS=1   #
uint8 BOUNDING_FINAL=2   #
uint8 bounding_phase

uint8 BOUNDING_OUT=0   #
uint8 BOUNDING_IN=1   #
uint8 bounding_role

uint8 mission_id

MissionWaypoint landing
<<<<<<< HEAD
MissionWaypoint[7] waypoints # waypoints
bool updated
=======
MissionWaypoint[10] waypoints # waypoints
MissionWaypoint[3] bounding_wps
uint8 current_wp

>>>>>>> 2da9148e6aa1533c52fbe59eee3556b09445ab03
