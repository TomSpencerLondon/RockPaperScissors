"
Represents the Scissors weapon
"
Class {
	#name : 'Scissors',
	#superclass : 'Weapon',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'game controls' }
Scissors >> playAgainst: anotherWeapon [
	^ anotherWeapon playAgainstScissors
]

{ #category : 'game controls' }
Scissors >> playAgainstLizard [
	^ #scissors
]

{ #category : 'game controls' }
Scissors >> playAgainstPaper [
	^ #scissors
]

{ #category : 'game controls' }
Scissors >> playAgainstRock [
	^ #rock
]

{ #category : 'game controls' }
Scissors >> playAgainstScissors [
	^ #draw
]

{ #category : 'game controls' }
Scissors >> playAgainstSpock [
	^ #spock
]
