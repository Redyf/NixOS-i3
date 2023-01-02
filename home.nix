{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "redyf";
  home.homeDirectory = "/home/redyf";

  nixpkgs.config.allowUnfree = true;

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.11";

  home.packages = with pkgs; [
  # Text Editors/Editing/Compiler 
	  vscode
    neovim 
  
  # Dev
  	gcc
    python
  	cargo
  	lua
  	python3
  	nodejs
    cmake
    gnupatch
    gnumake
    nodePackages.npm
    nodePackages.live-server

  # System Utils	
    fd
  	git
  	exa
  	wget
  	fuse
  	tree
  	ripgrep
  	appimage-run
  	unzip
  	polkit_gnome
  	flameshot

  # Terminal && prompt	
    alacritty
	  kitty
	  starship
	  pfetch
  	neofetch
  	htop
    zsh
  	sl
    oh-my-zsh

  # Browser, vc, pdf
	  firefox	
	  brave
	  discord
	  zathura
	
  # Rice
  	lxappearance
	  papirus-icon-theme
	  brightnessctl
  	xfce.thunar
  	dunst
  	nitrogen
  	cava
  	rofi
  	polybar
  	sxhkd
  	bspwm
  	picom-next
    cmatrix

  # Fonts
   dejavu_fonts
   go-font
   nerdfonts
   font-awesome 
   noto-fonts
   noto-fonts-cjk
   noto-fonts-emoji
   liberation_ttf
   fira-code
   fira-code-symbols
   mplus-outline-fonts.githubRelease
   jetbrains-mono
   font-awesome
   material-design-icons
   powerline-symbols
   (pkgs.nerdfonts.override { fonts = [ "UbuntuMono" "Terminus" "CascadiaCode" "FiraCode" "JetBrainsMono" "Hack" "Iosevka" ]; })

  # Streaming
    obs-studio

  # Others
  	steam
  	spotify
  	minecraft
  	notion-app-enhanced  
    pavucontrol
    etcher
];

# gtk = {
#     enable = true;
#     iconTheme = {
#       name = "Adwaita-dark";
#       package = pkgs.gnome.adwaita-icon-theme;
#     };
#     theme = {
#       name = "Adwaita-dark";
#       package = pkgs.gnome.adwaita-icon-theme;
#     };
#   };

    fonts.fontconfig.enable = true;

  # add support for .local/bin
  home.sessionPath = [
    "$HOME/.local/bin"
  ];

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
