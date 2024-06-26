-- name: Star Revenge 1.5 - Star Takeover Redone
-- description: 
-- incompatible: romhack

gLevelValues.entryLevel = LEVEL_CASTLE_COURTYARD
gLevelValues.fixCollisionBugs = true
gLevelValues.fixCollisionBugsRoundedCorners = false
gLevelValues.fixCollisionBugsFalseLedgeGrab = false
gLevelValues.fixCollisionBugsGroundPoundBonks = false
gLevelValues.fixCollisionBugsPickBestWall = false
gServerSettings.skipIntro = 1
-- hook_event(HOOK_USE_ACT_SELECT, function () if gNetworkPlayers[0].currLevelNum == LEVEL_CASTLE then return false end end)

camera_set_use_course_specific_settings(0)
camera_set_romhack_override(RCO_ALL)
rom_hack_cam_set_collisions(0)
camera_romhack_allow_centering(0)
camera_set_use_course_specific_settings(false)

gBehaviorValues.trajectories.KoopaBobTrajectory = get_trajectory('KoopaBoB_path')
gBehaviorValues.trajectories.KoopaThiTrajectory = get_trajectory('KoopaTHI_path')
gBehaviorValues.trajectories.PlatformRrTrajectory = get_trajectory('rr_seg7_trajectory_0702EC3C_RM2C_path')


smlua_audio_utils_replace_sequence(0x01, 0x22, 75, "01_Seq_custom")
smlua_audio_utils_replace_sequence(0x02, 0x25, 75, "02_Seq_custom")
smlua_audio_utils_replace_sequence(0x03, 0x25, 75, "03_Seq_custom")
smlua_audio_utils_replace_sequence(0x04, 0x11, 75, "04_Seq_custom")
smlua_audio_utils_replace_sequence(0x06, 0x25, 75, "06_Seq_custom")
smlua_audio_utils_replace_sequence(0x07, 0x12, 75, "07_Seq_custom")
smlua_audio_utils_replace_sequence(0x09, 0x11, 75, "09_Seq_custom")
smlua_audio_utils_replace_sequence(0x0B, 0x14, 75, "0B_Seq_custom")
smlua_audio_utils_replace_sequence(0x0C, 0x13, 75, "0C_Seq_custom")
smlua_audio_utils_replace_sequence(0x0D, 0x25, 75, "0D_Seq_custom")
smlua_audio_utils_replace_sequence(0x0E, 0x25, 75, "0E_Seq_custom")
smlua_audio_utils_replace_sequence(0x0F, 0x18, 75, "0F_Seq_custom")
smlua_audio_utils_replace_sequence(0x10, 0x12, 75, "10_Seq_custom")
smlua_audio_utils_replace_sequence(0x11, 0x25, 75, "11_Seq_custom")
smlua_audio_utils_replace_sequence(0x12, 0x1F, 75, "12_Seq_custom")
smlua_audio_utils_replace_sequence(0x14, 0x1A, 75, "14_Seq_custom")
smlua_audio_utils_replace_sequence(0x15, 0x0E, 75, "15_Seq_custom")
smlua_audio_utils_replace_sequence(0x16, 0x11, 75, "16_Seq_custom")
smlua_audio_utils_replace_sequence(0x17, 0x1A, 75, "17_Seq_custom")
smlua_audio_utils_replace_sequence(0x19, 0x1D, 75, "19_Seq_custom")
smlua_audio_utils_replace_sequence(0x1B, 0x14, 75, "1B_Seq_custom")
smlua_audio_utils_replace_sequence(0x1C, 0x20, 75, "1C_Seq_custom")
smlua_audio_utils_replace_sequence(0x1D, 0x1E, 75, "1D_Seq_custom")
smlua_audio_utils_replace_sequence(0x1E, 0x1B, 75, "1E_Seq_custom")
smlua_audio_utils_replace_sequence(0x1F, 0x1A, 75, "1F_Seq_custom")
smlua_audio_utils_replace_sequence(0x20, 0x23, 75, "20_Seq_custom")
smlua_audio_utils_replace_sequence(0x21, 0x25, 75, "21_Seq_custom")
smlua_audio_utils_replace_sequence(0x23, 0x25, 75, "23_Seq_custom")
smlua_audio_utils_replace_sequence(0x24, 0x25, 75, "24_Seq_custom")
smlua_audio_utils_replace_sequence(0x25, 0x0B, 75, "25_Seq_custom")
smlua_audio_utils_replace_sequence(0x26, 0x25, 75, "26_Seq_custom")
smlua_audio_utils_replace_sequence(0x27, 0x25, 75, "27_Seq_custom")
smlua_audio_utils_replace_sequence(0x28, 0x1A, 75, "28_Seq_custom")
smlua_audio_utils_replace_sequence(0x29, 0x25, 75, "29_Seq_custom")
smlua_audio_utils_replace_sequence(0x2A, 0x19, 75, "2A_Seq_custom")
smlua_audio_utils_replace_sequence(0x2B, 0x25, 75, "2B_Seq_custom")
smlua_audio_utils_replace_sequence(0x2D, 0x10, 75, "2D_Seq_custom")
smlua_audio_utils_replace_sequence(0x2E, 0x25, 75, "2E_Seq_custom")
smlua_audio_utils_replace_sequence(0x2F, 0x25, 75, "2F_Seq_custom")
smlua_audio_utils_replace_sequence(0x30, 0x25, 75, "30_Seq_custom")
smlua_audio_utils_replace_sequence(0x31, 0x1D, 75, "31_Seq_custom")
smlua_audio_utils_replace_sequence(0x32, 0x1A, 75, "32_Seq_custom")
smlua_audio_utils_replace_sequence(0x33, 0x25, 75, "33_Seq_custom")
smlua_audio_utils_replace_sequence(0x34, 0x10, 75, "34_Seq_custom")
smlua_audio_utils_replace_sequence(0x35, 0x11, 75, "35_Seq_custom")
smlua_audio_utils_replace_sequence(0x36, 0x25, 75, "36_Seq_custom")
smlua_audio_utils_replace_sequence(0x37, 0x12, 75, "37_Seq_custom")
smlua_audio_utils_replace_sequence(0x38, 0x25, 75, "38_Seq_custom")
smlua_audio_utils_replace_sequence(0x39, 0x25, 75, "39_Seq_custom")
smlua_audio_utils_replace_sequence(0x3A, 0x25, 75, "3A_Seq_custom")
smlua_audio_utils_replace_sequence(0x69, 0x17, 75, "WC_SR1") -- Wing Cap and Vanish Cap

vec3f_set(gLevelValues.starPositions.KoopaBobStarPos, -407, -470, -11886)
vec3f_set(gLevelValues.starPositions.KoopaThiStarPos, 5152, -180, 11104)
vec3f_set(gLevelValues.starPositions.KingBobombStarPos, 622, 5126, -3097)
vec3f_set(gLevelValues.starPositions.KingWhompStarPos, 12204, -1641, 8949)
vec3f_set(gLevelValues.starPositions.EyerockStarPos, 0, -1200, 0)
vec3f_set(gLevelValues.starPositions.BigBullyStarPos, 3700, 600, -5500)
vec3f_set(gLevelValues.starPositions.ChillBullyStarPos, 130, 1600, -4335)
vec3f_set(gLevelValues.starPositions.BigPiranhasStarPos, -6300, -1850, -6300)
vec3f_set(gLevelValues.starPositions.TuxieMotherStarPos, -4835, -1124, 4807)
vec3f_set(gLevelValues.starPositions.WigglerStarPos, 0, 2048, 0)
vec3f_set(gLevelValues.starPositions.PssSlideStarPos, 12875, -4575, 3900)
vec3f_set(gLevelValues.starPositions.RacingPenguinStarPos, -7339, -5700, -6774)
vec3f_set(gLevelValues.starPositions.TreasureChestStarPos, -1800, -2500, -1700)
vec3f_set(gLevelValues.starPositions.GhostHuntBooStarPos, 980, 1100, 250)
vec3f_set(gLevelValues.starPositions.KleptoStarPos, -5550, 300, -930)
vec3f_set(gLevelValues.starPositions.MerryGoRoundStarPos, -1600, -2100, 205)
vec3f_set(gLevelValues.starPositions.MrIStarPos, 1370, 2000, -320)
vec3f_set(gLevelValues.starPositions.BalconyBooStarPos, -4424, 191, 1962)
vec3f_set(gLevelValues.starPositions.BigBullyTrioStarPos, 6077, 3817, -6957)

gLevelValues.exitCastleLevel = 26
gLevelValues.exitCastleArea = 1
gLevelValues.exitCastleWarpNode = 10
