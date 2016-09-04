FROM wthkiste/steamcmd

MAINTAINER wth-kiste

ENV ARK_PATH /home/steam/Ark

USER steam

EXPOSE 27015:27015

RUN mkdir -p $ARK_PATH

WORKDIR $ARK_PATH

VOLUME $ARK_PATH

RUN /home/steam/steamcmd.sh +login anonymous +force_install_dir $ARK_PATH +app_update 376030 +quit

ARG params

ENTRYPOINT ["./ShooterGame/Binaries/Linux/ShooterGameServer",  params, "-nosteamclient", "-game", "-server", "-log"]

