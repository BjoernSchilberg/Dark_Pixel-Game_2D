# DARK PIXEL

<h4 align="center">
 🚧  Status: Finished🚀  🚧
</h4>

## ABOUT THIS GAME ?

This is a 2D game made in C language using the raylib library.

## Music, sleep effect, art?

I (Lucas Pontes) made all music, sound effects, art.

## I used the tools: ?

- [raylib](https://www.raylib.com/) for make game.
- [Piskel](https://www.piskelapp.com/) for creating the art.
- [BeepBox](https://www.beepbox.co/) for creating the sound effects

### Features

- [x] Enemies
- [x] Damage
- [x] Life
- [x] Death
- [x] Fireball(lol)
- [x] Boss

## Some screenshots from the game ?

![1](screenshots//221431328-b60d2073-8882-40a8-b846-c42872b383e6.PNG)

![2](screenshots//221431331-93a4949b-b745-442d-bd09-d6f1f5b461d7.PNG)

![3](screenshots//221431333-8a367d54-dd0f-4b01-9f0c-ef7ca13d18b5.PNG)

![4](screenshots//221431334-82fbf7bb-4e0a-4a2e-9785-743ae404eb4b.PNG)

![Parallax_florest_game](screenshots//230469694-89ba91a7-54ed-4090-b125-8b73cc28e1fe.jpeg)

## Compile under Linux

https://github.com/raysan5/raylib/wiki/Working-on-GNU-Linux

```shell
cd Codigo_do_jogo
gcc darkpixel.c -lraylib -lGL -lm -lpthread -ldl -lrt -lX11 -o darkpixel
```

### Create appimage

```shell
linuxdeploy-x86_64.AppImage --appdir AppDir/ --output appimage -d appimage/darkpixel.desktop -i appimage/icon.png -e Codigo_do_jogo/darkpixel
```
