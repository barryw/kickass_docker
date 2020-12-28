      _  ___      _                                     _     _
     | |/ (_)    | |       /\                          | |   | |
     | ' / _  ___| | __   /  \   ___ ___  ___ _ __ ___ | |__ | | ___ _ __
     |  < | |/ __| |/ /  / /\ \ / __/ __|/ _ \ '_ ` _ \| '_ \| |/ _ \ '__|
     | . \| | (__|   <  / ____ \\__ \__ \  __/ | | | | | |_) | |  __/ |
     |_|\_\_|\___|_|\_\/_/    \_\___/___/\___|_| |_| |_|_.__/|_|\___|_|



#### Introduction

This is a Docker image that you can use to run the KickAssembler without having to download it. I try to keep it up-to-date and pointed at the latest version of KickAssembler, which is 5.16 currently.

#### What is KickAssembler?

KickAssembler is a great, full-featured 6502 assembler. It has a lot of features that make cross-development for 6502 8-bit machines much easier and enjoyable.

You can find more here: http://www.theweb.dk/KickAssembler/Main.html#frontpage

#### How do I use this image?

First you'll need to install Docker, obviously. Then you can run it against your code simply by running `docker run -v ${PWD}:/code barrywalker/kickassembler:latest /code/{your main assembly file}.asm`

This assumes that your assembly files are in the current directory. For example, if your main assembly file was `main.asm`, the command would be:

```bash
docker run -v ${PWD}:/code barrywalker/kickassembler:latest /code/main.asm
```

You can also create an alias to make things much easier:

```bash
alias kickass='docker run -it -v ${PWD:-.}:/code barrywalker/kickassembler:latest'
```

Now, you can run `kickass /code/main.asm`
