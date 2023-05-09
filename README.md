([Japanese version here](./README.ja.md))

# Ukrainian Phonetic Keyboard (Designed for Learners)

This is an AutoHotKey V2 script to implement a Ukrainian phonetic keyboard. It is designed for the learners of Ukrainian language to practice and take notes on their PC, with a minimal effort to learn the keyboard layout.

![Keyboard Layout](./layout.png?raw=true "Keyboard Layout")

## Getting Started

1. Download AutoHotKey V2 from https://www.autohotkey.com/ and install.
2. Download the script [ukrainian-phonetic.ahk](./ukrainian-phonetic.ahk?raw=true "ukrainian-phonetic.ahk") to your PC, and open it with AutoHotKey V2.

## Usage

* Turn on/off Ukrainian input mode by pressing <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>SPACE</kbd>.

* Refer to the diagram above for the layout. Use key combination with <kbd>й</kbd> or <kbd>/</kbd> to enter the characters in the table below. For example, to enter 'є', type <kbd>й</kbd> <kbd>е</kbd> consecutively.

  |Character|Combination|
  |---|---|
  |я|<kbd>й</kbd> <kbd>а</kbd>|
  |є|<kbd>й</kbd> <kbd>е</kbd>|
  |ї|<kbd>й</kbd> <kbd>і</kbd>|
  |ю|<kbd>й</kbd> <kbd>у</kbd>|
  |ь|<kbd>й</kbd> <kbd>;</kbd>|
  |ґ|<kbd>/</kbd> <kbd>г</kbd>|
  |щ|<kbd>/</kbd> <kbd>ш</kbd>|
  |ж|<kbd>/</kbd> <kbd>з</kbd>|
  |«|<kbd>/</kbd> <kbd><</kbd>|
  |»|<kbd>/</kbd> <kbd>></kbd>|
  |– (dash)|<kbd>/</kbd> <kbd>-</kbd>|

  To escape the combination input, type the first character (<kbd>й</kbd> or <kbd>/</kbd>) twice. For example, if you want to enter the text 'йе', type <kbd>й</kbd> <kbd>й</kbd> <kbd>е</kbd>. 

* Type <kbd>\`</kbd> (backtick) after a vowel to add an accent mark. If you don't want it, you can remove it just by pressing <kbd>BACKSPACE</kbd>. Or, you can press any other keys (<kbd>SHIFT</kbd> for example) after a vowel then press <kbd>\`</kbd> to enter the backtick as it is.

## Notes

* This is designed for US ASCII keyboards. It may not work with other layouts.

* Some antivirus software has a web browser protection feature that will prevent external tools like AutoHotKey to pick up the key information typed in browsers. If such features are enabled, this keyboard will not work with your browsers.

## Why did I create this?

If you install the Ukrainian language support on Windows 11, you can use the [Ukrainian standard layout](http://kbdlayout.info/KBDUR1/) but it is too difficult for the learners. You sure want to spend your time to study the language, not the keyboard.

So, I aimed to create a tool specifically for English (US ASCII) keyboard users, to provide the easiest and most natual method for them to input Ukrainian in web browsers, text editors, office applications, without compromising the usual experience of using their familiar English keyboard.

To achieve that, I have avoided assigning new characters to non-alphabetical keys and changing the position or functionality of existing non-alphabetical symbols as much as possible. Also, I have avoided using the ALT key because it is hard to press and is often used for editor commands (at least to me). Instead, I adopted combination keys (such as <kbd>й</kbd>) to input extended characters. While having disadvantages such as an increased number of key strokes, it would minimize the number of things you need to learn and changes in your experience.