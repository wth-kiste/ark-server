#!/bin/sh

# TODO mount volumne to store server data in ./data/

PARAMS="TheIsland?serverPVE=True?ServerCrosshair=True?DisableStructureDecayPvE=True?DisableDinoDecayPvE=True?PvPStructureDecay=False?QueryPort=27015?SessionName=WTH?MaxPlayers=12?listen?ServerPassword=$PASSWORD?" docker start --name ark-server wthkiste/ark-server
