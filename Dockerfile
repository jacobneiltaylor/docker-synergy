FROM --platform=amd64 jacobneiltaylor/steamcmd

RUN --mount=type=secret,id=steam_user,uid=999 --mount=type=secret,id=steam_pass,uid=999 \
    install_depot.sh 220 $(cat /run/secrets/steam_user) $(cat /run/secrets/steam_pass) && \
    mv "/opt/steam/apps/220" "/opt/steam/apps/Half-Life 2"
RUN --mount=type=secret,id=steam_user,uid=999 --mount=type=secret,id=steam_pass,uid=999 \
    install_depot.sh 17520 $(cat /run/secrets/steam_user) $(cat /run/secrets/steam_pass) && \
    mv "/opt/steam/apps/17520" "/opt/steam/apps/Synergy"

COPY server.cfg "/opt/steam/apps/Synergy/synergy/cfg/server.cfg"
COPY bugfix.sh /opt/steam/bin
RUN bugfix.sh

ENTRYPOINT [ "/opt/steam/apps/Synergy/srcds_run" "-console", "-game", "synergy", "-port", "27015", "-nocrashdialog", "-nohltv" ]
CMD [ "+map", "d1_trainstation_01"  ]