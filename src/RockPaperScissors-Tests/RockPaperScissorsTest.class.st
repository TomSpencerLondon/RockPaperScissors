Class {
	#name : 'RockPaperScissorsTest',
	#superclass : 'TestCase',
	#instVars : [
		'game'
	],
	#category : 'RockPaperScissors-Tests',
	#package : 'RockPaperScissors-Tests'
}

{ #category : 'running' }
RockPaperScissorsTest >> setUp [

	super setUp.
	game := RockPaperScissors new
]

{ #category : 'tests' }
RockPaperScissorsTest >> testLizardBeatsPaper [

	| result |
	result := game play: (Lizard new) against: (Paper new).
	self assert: result equals: #lizard
]

{ #category : 'tests' }
RockPaperScissorsTest >> testPaperBeatsRock [

	| result |
	result := game play: (Paper new) against: (Rock new).
	self assert: result equals: #paper
]

{ #category : 'tests' }
RockPaperScissorsTest >> testPaperIsBeatenByScissors [

	| result |
	result := game play: (Paper new) against: (Scissors new).
	self assert: result equals: #scissors
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockBeatsLizard [

	| result |
	result := game play: (Rock new) against: (Lizard new).
	self assert: result equals: #rock
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockIsBeatenByPaper [

	| result |
	result := game play: (Rock new) against: (Paper new).
	self assert: result equals: #paper
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsBeatsPaper [

	| result |
	result := game play: (Scissors new) against: (Paper new).
	self assert: result equals: #scissors
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsBeatsRock [

	| result |
	result := game play: (Scissors new) against: (Rock new).
	self assert: result equals: #rock
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsDrawsWithScissors [

	| result |
	result := game play: (Scissors new) against: (Scissors new).
	self assert: result equals: #draw
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsIsBeatenBy [

	| result |
	result := game play: (Scissors new) against: (Rock new).
	self assert: result equals: #rock
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsIsBeatenByRock [

	| result |
	result := game play: (Scissors new) against: (Rock new).
	self assert: result equals: #rock
]
