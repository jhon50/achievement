# README

This is a simple achievement system implementation.

As a user gets new points by killing monsters, deaths or collectig coins new achievements are unlocked.

There are 5 achievements per category, unlock them so you can see!

At this moment you can only perform tests on rails console.

## Simple Test Example

`rails c`

`User.create!`

`CollectedCoin.create(user: User.first, value: 100)` as value being the amount of coins earned.

`Death.create(user: User.first)`

## Monster Killing

still in console:

`Monster.create(name: 'turtle')`

`KilledMonster.create(user: User.first, monster: Monster.first)`

##

PS: Errors may exist, this was written late at night.