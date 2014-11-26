# Helper scripts for running a scalatron tournament

Pretty simple scripts to assemble a roster of bots, organise them into rounds, and run the rounds. You'll have to handle qualification/knock out yourself.

## enter.sh 

`enter.sh jar name`

Copies the given jar to `all-bots`, backs up the `bots` dir if it exists. The installed bot is referenced with the suppliend 

## place.sh

`place.sh name round`

Links the named bot in the given round's directory. Rounds are named, but the name can just be a number.

## round.sh

`round.sh round`

Sets the current round (symlinks scalatron's bot dir to the named round).

## run.sh

Runs the current round.

# Example workflow

    $ scripts/enter.sh ../../../SteelBot/target/scala-2.9.1/ScalatronBot.jar SteelBot
    Entering ../../../SteelBot/target/scala-2.9.1/ScalatronBot.jar as SteelBot

    $ ls
    License.txt     all-bots        doc             samples         target          webui
    Readme.txt      bin             reference-bot   scripts         users

    $ scripts/enter.sh reference-bot/Reference/ScalatronBot.jar Reference
    Entering reference-bot/Reference/ScalatronBot.jar as Reference

    $ ls all-bots/
    Reference       SteelBot

    $ scripts/place.sh Reference 1
    placing Reference in round 1

    $ scripts/place.sh SteelBot 1
    placing SteelBot in round 1

    $ scripts/round.sh 1
    ROUND 1

    Reference       SteelBot

    $ scripts/run.sh
    Welcome to Scalatron 1.0.0.2
    ...
