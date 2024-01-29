uint64 timestamp		# time since system start (microseconds)

uint8 MISSION_NONE=0	#
uint8 MISSION_LANDINGLOOP=1	#
uint8 MISSION_MOVETONEST=2	#
uint8 MISSION_MOVETOWAYPOINT=3 #
uint8 MISSION_WAYPOINT=4 #
uint8 MISSION_BOUNDING=5 #
uint8 mission_type

uint8 PHASE_RESTING=0 #
uint8 PHASE_DEPLOY=1 #
uint8 PHASE_ACTIVE=2 #
uint8 PHASE_RETURN=3 #
uint8 PHASE_CHARGING=4 #
uint8 mission_phase

uint8 mission_id
uint8 current_wp
string drone_id
string nest_id
MissionWaypoint landing
MissionWaypoint[7] waypoints # waypoints

uint8 BOUNDING_INIT=0   #
uint8 BOUNDING_TRANS=1   #
uint8 BOUNDING_FINAL=2   #
uint8 bounding_phase
string bound_id
MissionWaypoint[3] bounding
