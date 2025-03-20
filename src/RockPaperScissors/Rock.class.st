"
Represents the Rock Weapon
"
Class {
	#name : 'Rock',
	#superclass : 'Weapon',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'game controls' }
Rock >> playAgainst: anotherWeapon [
	^ anotherWeapon playAgainstRock
]

{ #category : 'game controls' }
Rock >> playAgainstLizard [
	^ #rock
]

{ #category : 'game controls' }
Rock >> playAgainstPaper [
	^ #paper
]

{ #category : 'game controls' }
Rock >> playAgainstRock [
	^ #draw
]

{ #category : 'game controls' }
Rock >> playAgainstScissors [
	^ #rock
]

{ #category : 'game controls' }
Rock >> playAgainstSpock [
	^ #rock
]
