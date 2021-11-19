#!/usr/bin/env bash
#-------------------------------------------------------------------------
#   ███████╗ ██████╗ ██╗  ██╗ ██████╗ ███╗   ███╗███╗   ███╗
#   ██╔════╝██╔═══██╗██║ ██╔╝██╔═══██╗████╗ ████║████╗ ████║
#   ███████╗██║   ██║█████╔╝ ██║   ██║██╔████╔██║██╔████╔██║
#   ╚════██║██║   ██║██╔═██╗ ██║   ██║██║╚██╔╝██║██║╚██╔╝██║
#   ███████║╚██████╔╝██║  ██╗╚██████╔╝██║ ╚═╝ ██║██║ ╚═╝ ██║
#   ╚══════╝ ╚═════╝ ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝     ╚═╝
#-------------------------------------------------------------------------

echo -e "\nINSTALLING AUR SOFTWARE\n"
# You can solve users running this script as root with this and then doing the same for the next for statement. However I will leave this up to you.


PKGSP=(
'remmina'
'freerdp'
'plank'
'virtualbox'
'network-manager-applet'
'networkmanager-openvpn'
'libreoffice-fresh'
'openvpn'
'gnome-disk-utility'
'os-prober'
#'wine'
)

for PKG in "${PKGSP[@]}"; do
    echo "INSTALLING: ${PKG}"
    sudo pacman -S "$PKG" --noconfirm --needed
done



PKGS=(

'timeshift'
'virtualbox-ext-oracle'
'viber'
'goodvibes'

)

for PKG in "${PKGS[@]}"; do
    yay -S --noconfirm $PKG
done
sudo gpasswd -a sokomm vboxusers

echo -e "\nDone!\n"
exit
