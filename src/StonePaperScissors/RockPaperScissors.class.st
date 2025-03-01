Class {
	#name : 'RockPaperScissors',
	#superclass : 'Object',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'playing' }
RockPaperScissors >> play: first against: second [

	first = #paper ifTrue: [ ^ #paper ].
	^ #scissors
]
