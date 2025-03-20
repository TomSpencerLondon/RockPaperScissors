"
Represents Paper weapon
"
Class {
	#name : 'Paper',
	#superclass : 'Weapon',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'game controls' }
Paper >> playAgainst: anotherWeapon [
	^ anotherWeapon playAgainstPaper
]

{ #category : 'game controls' }
Paper >> playAgainstLizard [
	^ #lizard
	
]

{ #category : 'game controls' }
Paper >> playAgainstPaper [
	^ #draw
]

{ #category : 'game controls' }
Paper >> playAgainstRock [
	^ #paper
]

{ #category : 'game controls' }
Paper >> playAgainstScissors [
	^ #scissors
]

{ #category : 'game controls' }
Paper >> playAgainstSpock [
	^ #paper
]
