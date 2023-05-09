# Ukrainian Phonetic Keyboard (Designed for Learners)

This is an implementation of a Ukrainian phonetic keyboard that can be used with AutoHotKey V2. It is designed for the learners of Ukrainian language to practice and take notes on their PC, with a minimal effort to learn the keyboard layout.

![Keyboard Layout](./layout.png?raw=true "Keyboard Layout")

## How to Launch

1. Pre-install AutoHotKey (https://www.autohotkey.com/) V2.
2. Place the script `ukrainian-phonetic.ahk` anywhere you like, and open it with AutoHotKey.

## How to Use

* Turn on/off Ukrainian input mode by pressing <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>SPACE</kbd>.

* Refer to the diagram above for the layout. Use key combination with <kbd>й</kbd> or <kbd>/</kbd> to enter the characters in the table below. For example, to enter 'є', type <kbd>е</kbd> after <kbd>й</kbd> consecutively.

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

  Type the first character (<kbd>й</kbd> or <kbd>/</kbd>) twice to escape the combination input. For example, if you want to enter the text 'йе', type <kbd>й</kbd> <kbd>й</kbd> <kbd>е</kbd>.

* Type <kbd>\`</kbd> (backtick) after a vowel to add an accent mark. You remove it just by pressing <kbd>BACKSPACE</kbd>. Or, you can press any other keys (<kbd>SHIFT</kbd> for example) after a vowel then press <kbd>\`</kbd> to enter a backtick as it is.

## Notes

* This is designed for US ASCII keyboards, so it may not work with other layouts.

* Some antivirus software has a web browser protection feature that will prevent external tools like AutoHotKey to pick up the key information typed in browsers. If such features are enabled, this keyboard will not work with your browsers.

## Why did I create this?

If you install the Ukrainian language support on Windows 11, you can use the Ukrainian standard layout (http://kbdlayout.info/KBDUR1/) but it is too difficult for the learners. You sure want to spend your time to study the language, not the keyboard.

So, I aimed to create a tool specifically for English (US ASCII) keyboard users, to provide the easiest and most natual method for them to input Ukrainian in web browsers, text editors, office applications, without compromising the usual experience of using their familiar English keyboard.

To achieve that, I have avoided assigning new characters to non-alphabetical keys and changing the position or functionality of existing non-alphabetical symbols as much as possible. Also, I have avoided using the ALT key because it is hard to press and is often used for editor commands (at least to me). Instead, I adopted combination keys (such as <kbd>й</kbd>) to input extended characters. While having disadvantages such as an increased number of types, it would minimize the number of things you need to learn and changes in your experience.

# ウクライナ語Phoneticキーボード(学習者向け)

AutoHotKey V2で使えるウクライナ語Phoneticキーボードの実装です。ウクライナ語学習者がPC上で練習やノートを取る際に使うことを想定し、最小限の学習コストでウクライナ語を入力できることを目指しています。

![Keyboard Layout](./layout.png?raw=true "Keyboard Layout")

## 起動方法

1. 事前に AutoHotKey (https://www.autohotkey.com/) V2をインストールしておく。
2. スクリプト `ukrainian-phonetic.ahk` を任意の場所に置き、AutoHotKeyで開く。

## 使い方

* <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>SPACE</kbd> でウクライナ語入力モードをon/offできる。

* キー配列は冒頭の図を参照。下記の表の文字は <kbd>й</kbd> または <kbd>/</kbd> との組み合わせで入力する。例えば 'є' を入力するには <kbd>й</kbd> に続けて <kbd>е</kbd> をタイプする。

  |文字|組み合わせ|
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
  |– (ダッシュ)|<kbd>/</kbd> <kbd>-</kbd>|
  
  組み合わせ入力を抑止するには一文字目の <kbd>й</kbd> や <kbd>/</kbd> を二度タイプする。例えば 'йе' というテキストを入力したければ <kbd>й</kbd> <kbd>й</kbd> <kbd>е</kbd> とタイプする。

* 母音に続けて <kbd>\`</kbd> (backtick)をタイプするとアクセント記号が付く。これは <kbd>BACKSPACE</kbd> で取り消すことができる。あるいは母音の後に何らかのキー(例えば <kbd>SHIFT</kbd>)を押してから <kbd>\`</kbd> を押せば、<kbd>\`</kbd> がそのまま入力される。

## 注意

* US ASCIIキーボードを前提としており、日本語JISなど他のキー配列ではうまく動作しない可能性がある。
* ウイルス対策ソフトのブラウザ保護機能には、ブラウザで入力されたキー情報をAutoHotKeyのような外部ツールから見えなくするものがあり、このような機能が有効になっているとブラウザ上で本キーボードは正しく動作しない可能性がある。
* 日本語IMEと本キーボードを同時にオンにすると正しく動作しないことがある。

## なぜこんなものを作ったのか

Windows 11にウクライナ語をインストールすると、ウクライナ語標準配列(http://kbdlayout.info/KBDUR1/)のキーボードが使えるようになりますが、これは日本語かな配列のようなもので習熟するのが大変です。勉強のためにウクライナ語を入力したいだけであれば労力に見合いません。

そこで、英語(US ASCII)キーボード使用者を対象に、Webブラウザ・テキストエディタ・オフィスアプリケーション等にウクライナ語を最も簡単に・違和感なく(普段の英語キーボードの使用感を損なわずに)入力できるツールを目指して作りました。

新たなキー配置を覚えなくて済むよう、アルファベット以外のキーに新たに文字を割り当てたり、既存の記号の位置や機能を変更することはなるべく避けています。また、(少なくとも私にとっては)ALTキーは押しにくく、またエディタのコマンドで使うことが多いため、使用を避けています。代わりに <kbd>й</kbd> などを使った組み合わせにより追加の文字を入力する方式を採用しており、これはタイプ数が増える等の欠点がありますが、新たに覚えることが少なくて済む、普段の使用感が変わらずに済む、という特長があります。