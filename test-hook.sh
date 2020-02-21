#!/bin/bash
echo "----------- $ARGUMENT"

if [[ $ARGUMENT =~ .+\.[jpg|JPG] ]]
    then
    # Then next few lines are optional
    # Alternatively pass $ARGUMENT directly to your image viewer eg:-
    # /usr/bin/shotwell "$ARGUMENT" &
    DIRNAME=$(dirname "$ARGUMENT")
    BASENAME=$(basename "$ARGUMENT")
    NEWFILENAME="$DIRNAME/flask-app/_tmp/full/$BASENAME"

    sudo mv "$ARGUMENT" "$NEWFILENAME"

    convert "$NEWFILENAME" -resize 150 "$DIRNAME/flask-app/_tmp/$ARGUMENT"
fi
