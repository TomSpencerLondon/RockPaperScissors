Class {
	#name : 'RockPaperScissors',
	#superclass : 'Object',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'as yet unclassified' }
RockPaperScissors >> play: first against: second [

	first = #paper ifTrue: [ ^ #paper ].
	^ #scissors
]
