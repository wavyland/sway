FROM alpine:3.22.1
RUN apk add --no-cache mesa-dri-gallium seatd seatd-launch sway swaybg xwayland xauth mcookie
RUN chmod +s /usr/bin/seatd-launch
ADD https://unsplash.com/photos/5EUWCwDW2aI/download?ixid=M3wxMjA3fDB8MXxhbGx8fHx8fHx8fHwxNjg3MzA0MDg2fA /etc/sway/background.jpg
RUN chmod 644 /etc/sway/background.jpg
COPY config /etc/sway/config
COPY Xwayland /etc/sway/Xwayland
RUN chmod +x /etc/sway/Xwayland
ENV WLR_XWAYLAND=/etc/sway/Xwayland
COPY .Xauthority /var/lib/sway/.Xauthority
RUN chmod 777 /var/lib/sway
ENV XAUTHORITY=/var/lib/sway/.Xauthority
USER nobody
ENTRYPOINT ["sway"]
