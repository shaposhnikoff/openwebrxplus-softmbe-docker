FROM slechev/openwebrxplus-nightly
LABEL OpenWebRX+ (nightly) with Digital codecs (incl. DMR, D-STAR, YSF) and all receivers.

COPY install-owrxp-extra.sh /
RUN /install-owrxp-extra.sh

ENV S6_CMD_ARG0="/opt/openwebrx/docker/scripts/run.sh"
# ENTRYPOINT ["/init"]

WORKDIR /opt/openwebrx

VOLUME /etc/openwebrx
VOLUME /var/lib/openwebrx

# CMD []

EXPOSE 8073
