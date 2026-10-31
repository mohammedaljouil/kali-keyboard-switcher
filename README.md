# kali-keyboard-switcher
A lightweight Bash utility for configuring and switching keyboard layouts in Kali Linux.


# Kali Keyboard Switcher

A lightweight Bash utility for configuring and switching keyboard layouts in Kali Linux.

## Features

- Configure multiple keyboard layouts.
- English and Arabic support by default.
- Switch layouts using `Left Alt + Left Shift`.
- Verify the active keyboard configuration.
- Minimal dependencies.

## Requirements

- Kali Linux or another Linux distribution.
- X11 session.
- `setxkbmap`.

Install the dependency if needed:

```bash
sudo apt install x11-xkb-utils
```

## Installation

```bash
git clone https://github.com/mohammedaljouil/kali-keyboard-switcher.git
cd kali-keyboard-switcher
chmod +x kali-keyboard-switcher.sh
```

## Usage

```bash
./kali-keyboard-switcher.sh
```

Default layouts: `us,ara`.

Custom layouts:

```bash
./kali-keyboard-switcher.sh "us,fr"
```

## Keyboard Shortcut

`Left Alt + Left Shift`

### Note: the script by defualt configure to arabic and english layout if you want another layout change the layout in the script.


## disable parallel layout and let english is the only langauage layout in the kali by following command :
setxkbmap -layout us -option
