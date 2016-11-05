MALE = "male"
FEMALE = "female"
OTHER = "other"

GENDER = {MALE.titleize => MALE, FEMALE.titleize => FEMALE, OTHER.titleize => OTHER}

ENABLE = 1
DISABLE = 0

EVENT_OVER = "Event expired."

ATTEND = "Attend"

UNATTEND = "Unattend"

MANAGE_EVENT = {ATTEND => ENABLE, UNATTEND => DISABLE}

PHONE_NUMBER_REGEX =  /^[0-9]{10,10}$/

EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
