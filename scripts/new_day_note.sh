#!/bin/bash


# CONSTANTS
################################################################################
DAY_NAME_LOWERCASE="$(tr '[A-Z]' '[a-z]' <<< "$(date '+%A')")"
MONTH_NAME_LOWERCASE="$(tr '[A-Z]' '[a-z]' <<< "$(date '+%B')")"

DAY_TAG="#${DAY_NAME_LOWERCASE}"
MONTH_TAG="#${MONTH_NAME_LOWERCASE}"

TAG_LINE="$DAY_TAG $MONTH_TAG"

#TODO: ENV path should be declared for this directory or smth
ABS_DIR_PATH="/Users/$USER/Workspace/pkb/daily_activities"

FILENAME_TITLE="# $(date +'%Y%m%d').md"
FILENAME="$ABS_DIR_PATH/$(date +'%Y%m%d').md"
################################################################################



write_day_template () {
    touch "$FILENAME" | cat <<EOT>> "$FILENAME"

$FILENAME_TITLE
$TAG_LINE


###_Plan


###Activity


###_TaskBorn



EOT
}


################################################################################
EDITOR_LINE=7

if test -f "$FILENAME"; then
    nvim +"$EDITOR_LINE" "$FILENAME"
else
    write_day_template
    nvim +"$EDITOR_LINE" "$FILENAME"
fi
################################################################################
