{ lib, pkgs, ... }:
{
    # List services that you want to enable:
    services = {
        tlp.enable = true;

    };
    
    services.pipewire = {
        enable = true;
        alsa.enable = true;
        alsa.support32Bit = true;
        pulse.enable = true;
    };
    security.pam.services.swaylock = { #Swaylock fix for wrong password
        text = ''
            auth include login
            '';
    };
}
