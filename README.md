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

If you install the Ukrainian language support on Windows 11, you can use the [Ukrainian standard layout](http://kbdlayout.info/KBDUR1/) but it is too difficult for the learners. You definitely need a phonetic (or mnemonic) layout, so that you can spend your time to study the language, not the keyboard. 

So, I designed this script to provide the easiest and most natual phonetic layout to input Ukrainian for English keyboard users, without introducing new key positions to learn or disrupting their familiar English keyboard experience. Especially in the use case of writing a markdown with Ukrainian, it would achieve the easiest learning curve and the best fluency comparing to other existing Ukrainian phonetic layouts as I believe.

To achieve that, I avoided assigning new characters to non-alphabetical keys and changing the position or functionality of existing non-alphabetical symbols as much as possible. Also, I avoided using the ALT key because it is hard to press and is often used for editor commands (at least for me). Instead, I adopted combination keys (such as <kbd>й</kbd> + vowels) to input extended characters. While having disadvantages such as an increased number of key strokes, it would minimize the number of extra keys you need to remember and unwanted changes in your typing experience.

I assigned the combination keys to less [frequently used characters](https://www.sttmedia.com/characterfrequency-ukrainian) to minimize the additional key strokes. However, 'ь' is an exception and it requires two strokes although it is farely frequently used. I did not really like this, but it seemed the best option I could think of to balance these two requirements: (1) to assign 'ь' to the right pinky finger as other Slavic phonetic layouts generally do and (2) to keep ';' and ':' usable without disruption. I accepted the combination for 'ь' as currently designed because you can type it with the right hand staying in its home position, and it also follows the consistent convention that the soft-sound-related extended characters belong to the <kbd>й</kbd>-combination group.