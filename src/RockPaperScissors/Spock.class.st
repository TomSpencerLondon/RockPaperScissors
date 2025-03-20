"
Represents the Spock weapon class
"
Class {
	#name : 'Spock',
	#superclass : 'Weapon',
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'game controls' }
Spock >> playAgainst: anotherWeapon [
	^ anotherWeapon playAgainstSpock
]

{ #category : 'game controls' }
Spock >> playAgainstLizard [
	^ #lizard
]

{ #category : 'game controls' }
Spock >> playAgainstPaper [
	^ #paper
]

{ #category : 'game controls' }
Spock >> playAgainstRock [
	^ #spock
]

{ #category : 'game controls' }
Spock >> playAgainstScissors [
	^ #spock
]

{ #category : 'game controls' }
Spock >> playAgainstSpock [
	^ #draw
]
