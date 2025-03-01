Class {
	#name : 'StonePaperScissorsTest',
	#superclass : 'TestCase',
	#category : 'StonePaperScissors-Tests',
	#package : 'StonePaperScissors-Tests'
}

{ #category : 'tests' }
StonePaperScissorsTest >> testPaperBeatsRock [

	| game result |
	game := RockPaperScissors new.
	result := game play: #paper against: #rock.
	self assert: result equals: #paper
]

{ #category : 'tests' }
StonePaperScissorsTest >> testScissorsBeatsPaper [

	| game result |
	game := RockPaperScissors new.
	result := game play: #scissors against: #paper.
	self assert: result equals: #scissors
]
