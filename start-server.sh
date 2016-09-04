#!/bin/sh

PARAMS="TheIsland?serverPVE=True?ServerCrosshair=True?DisableStructureDecayPvE=True?DisableDinoDecayPvE=True?PvPStructureDecay=False?QueryPort=27015?SessionName=WTH?MaxPlayers=12?listen?ServerPassword=$PASSWORD?" \
docker run -d --name ark-server -p 27015:27015 -v data:/home/steam/Ark wthkiste/ark-server
