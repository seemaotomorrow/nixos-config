# Mao's NixOS Config

A [NixOS Flake](https://nixos.wiki/wiki/Flakes) for my macOS development environment.

## Installing on a fresh macOS installation

Steps:

1. Sign in with your Apple ID
2. Enable FileVault
3. Restart
4. Run the install script

```bash
bash <(curl -L 'https://raw.githubusercontent.com/seemaotomorrow/nixos-config/main/install.sh')
```

## Known Issues

### 1. Could not write domain: com.apple.Safari.

This can be fixed by giving your terminal full disk access in Settings -> Privacy & Security -> Full Disk Access.

Fix found on [reddit](https://www.reddit.com/r/MacOSBeta/comments/15yjcnc/comment/jxdhpj4/).

> Safari is sandboxed preventing defaults from read/writing to it. Your terminal needs full disk access so defaults can access the sandboxed container.

## Valuable Resources

Nix Darwin

- [LnL7/nix-darwin](https://github.com/LnL7/nix-darwin)
- [Darwin Configuration Options](https://daiderd.com/nix-darwin/manual/index.html)

Home Manager

- [nix-community/home-manager](https://github.com/nix-community/home-manager)
- [Home Manager Option Search](https://mipmip.github.io/home-manager-option-search)
