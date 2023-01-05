local TUNING = GLOBAL.TUNING
local GetModConfigData = GetModConfigData
GLOBAL.setfenv(1, GLOBAL)

local seg_time = 30 --each segment of the clock is 30 seconds
local total_day_time = seg_time*16

local day_segs = 10
local dusk_segs = 4
local night_segs = 2

--default day composition. changes in winter, etc
local day_time = seg_time * day_segs
local dusk_time = seg_time * dusk_segs
local night_time = seg_time * night_segs

local wilson_attack = 34
local wilson_health = 150
local calories_per_day = 75

local wilson_attack_period = .5

local perish_warp = 1--/200

TUNING.FLYTRAP_CHILD_HEALTH = 250
TUNING.FLYTRAP_CHILD_DAMAGE = 15
TUNING.FLYTRAP_CHILD_SPEED = 4

TUNING.FLYTRAP_TEEN_HEALTH = 300
TUNING.FLYTRAP_TEEN_DAMAGE = 20
TUNING.FLYTRAP_TEEN_SPEED = 3.5

TUNING.FLYTRAP_HEALTH = 350
TUNING.FLYTRAP_DAMAGE = 25
TUNING.FLYTRAP_SPEED = 3

TUNING.FLYTRAP_TARGET_DIST = 8
TUNING.FLYTRAP_KEEP_TARGET_DIST= 15
TUNING.FLYTRAP_ATTACK_PERIOD = 3

TUNING.ADULT_FLYTRAP_HEALTH = 400
TUNING.ADULT_FLYTRAP_DAMAGE = 30
TUNING.ADULT_FLYTRAP_ATTACK_PERIOD = 5
TUNING.ADULT_FLYTRAP_ATTACK_DIST = 4
TUNING.ADULT_FLYTRAP_STOPATTACK_DIST = 6

TUNING.SPIDER_MONKEY_SPEED_AGITATED = 5.5  --4
TUNING.SPIDER_MONKEY_SPEED = 5.5 --2
TUNING.SPIDER_MONKEY_HEALTH = 550

TUNING.SPIDER_MONKEY_DAMAGE = 60
TUNING.SPIDER_MONKEY_ATTACK_PERIOD = 2
TUNING.SPIDER_MONKEY_ATTACK_RANGE = 4
TUNING.SPIDER_MONKEY_HIT_RANGE = 3
TUNING.SPIDER_MONKEY_MELEE_RANGE = 4
TUNING.SPIDER_MONKEY_TARGET_DIST = 8
TUNING.SPIDER_MONKEY_WAKE_RADIUS = 6

TUNING.SPIDER_MONKEY_DEFEND_DIST = 12

TUNING.SPIDER_MONKEY_MATING_SEASON_BABYDELAY = total_day_time*1.5
TUNING.SPIDER_MONKEY_MATING_SEASON_BABYDELAY_VARIANCE = 0.5*total_day_time

TUNING.POG_ATTACK_RANGE = 3
TUNING.POG_MELEE_RANGE = 2.5
TUNING.POG_TARGET_DIST = 25
TUNING.POG_WALK_SPEED = 2
TUNING.POG_RUN_SPEED = 4.5
TUNING.POG_DAMAGE = 25
TUNING.POG_HEALTH = 150
TUNING.POG_ATTACK_PERIOD = 2

TUNING.MIN_POGNAP_INTERVAL = 30
TUNING.MAX_POGNAP_INTERVAL = 120
TUNING.MIN_POGNAP_LENGTH = 20
TUNING.MAX_POGNAP_LENGTH = 40

TUNING.POG_LOYALTY_MAXTIME = total_day_time
TUNING.POG_LOYALTY_PER_ITEM = total_day_time*.1
TUNING.POG_EAT_DELAY = 0.5
TUNING.POG_SEE_FOOD = 30

TUNING.PERD_SPAWNCHANCE = 0.1
TUNING.PERD_DAMAGE = 20
TUNING.PERD_HEALTH = 50
TUNING.PERD_ATTACK_PERIOD = 3
TUNING.PERD_RUN_SPEED = 8
TUNING.PERD_WALK_SPEED = 3

TUNING.THUNDERBIRD_RUN_SPEED = 5.5
TUNING.THUNDERBIRD_WALK_SPEED = 2

TUNING.TS_VOLCANO_FIRERAIN_DAMAGE = 150

TUNING.ANCIENT_HULK_DAMAGE = 200
TUNING.ANCIENT_HULK_MINE_DAMAGE = 100
TUNING.ANCIENT_HULK_MELEE_RANGE = 5.5
TUNING.ANCIENT_HULK_ATTACK_RANGE = 5.5

TUNING.KLAUS_ENRAGE_SCALE = 1.8
TUNING.BEEQUEEN_HEALTH = 18000
TUNING.DRAGONFLY_SPEED = 4

TUNING.ANCIENT_HERALD_HEALTH = 750
TUNING.ANCIENT_HERALD_DAMAGE = TUNING.PERD_HEALTH

TUNING.ANCIENT_HULKHEALTH = GetModConfigData("ANCIENT_HULKHEALTH")
TUNING.DRAGONFLY_HEALTH = GetModConfigData("DRAGONFLY_HEALTH")

local tuning = {

        ANTMAN_DAMAGE = wilson_attack * 2/3,
        ANTMAN_HEALTH = 250,
        ANTMAN_ATTACK_PERIOD = 3,
        ANTMAN_TARGET_DIST = 16,
        ANTMAN_LOYALTY_MAXTIME = 2.5*total_day_time,
        ANTMAN_LOYALTY_PER_HUNGER = total_day_time/25,
        ANTMAN_MIN_POOP_PERIOD = seg_time * .5,
        ANTMAN_RUN_SPEED = 5,
        ANTMAN_WALK_SPEED = 3,
        ANTMAN_MIN = 3,
        ANTMAN_MAX = 4,
        ANTMAN_REGEN_TIME = seg_time * 4,
        ANTMAN_RELEASE_TIME = seg_time,

        ANTMAN_ATTACK_ON_SIGHT_DIST = 4,
        ANTMAN_WARRIOR_DAMAGE = wilson_attack * 1.25,
        ANTMAN_WARRIOR_HEALTH = 300,
        ANTMAN_WARRIOR_ATTACK_PERIOD = 3,
        ANTMAN_WARRIOR_TARGET_DIST = 16,
        ANTMAN_WARRIOR_RUN_SPEED = 7,
        ANTMAN_WARRIOR_WALK_SPEED = 3.5,
        ANTMAN_WARRIOR_REGEN_TIME = seg_time,
        ANTMAN_WARRIOR_RELEASE_TIME = seg_time,
        ANTMAN_WARRIOR_ATTACK_ON_SIGHT_DIST = 8,
}

for key, value in pairs(tuning) do
    if TUNING[key] then
        print("OVERRIDE: " .. key .. " in TUNING")
    end

    TUNING[key] = value
end
