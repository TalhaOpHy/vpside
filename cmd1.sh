sudo bash -c 'apt update && apt install xfce4 xfce4-goodies tigervnc-standalone-server -y && \
vncserver && vncserver -kill :1 && \
cat > ~/.vnc/xstartup <<EOF
#!/bin/sh
unset SESSION_MANAGER
unset DBUS_SESSION_BUS_ADDRESS
startxfce4 &
EOF
chmod +x ~/.vnc/xstartup && vncserver :1 -geometry 1280x800 -depth 24'
