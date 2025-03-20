"
Represents Lizard class
"
Class {
	#name : 'Lizard',
	#superclass : 'Weapon',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'game controls' }
Lizard >> playAgainst: anotherWeapon [
	^ anotherWeapon playAgainstLizard
]

{ #category : 'game controls' }
Lizard >> playAgainstLizard [
	^ #draw
]

{ #category : 'game controls' }
Lizard >> playAgainstPaper [
	^ #lizard
]

{ #category : 'game controls' }
Lizard >> playAgainstRock [
	^ #rock
]

{ #category : 'game controls' }
Lizard >> playAgainstScissors [
	^ #scissors
]

{ #category : 'game controls' }
Lizard >> playAgainstSpock [
	^ #lizard
]
