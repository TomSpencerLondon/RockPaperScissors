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
RockPaperScissorsTest >> testPaperBeatsRock [

	| result |
	result := game play: #paper against: #rock.
	self assert: result equals: #paper
]

{ #category : 'tests' }
RockPaperScissorsTest >> testRockIsBeatenByPaper [

	| result |
	result := game play: #rock against: #paper.
	self assert: result equals: #paper
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsBeatsPaper [

	| result |
	result := game play: #scissors against: #paper.
	self assert: result equals: #scissors
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsDrawsWithScissors [

	| result |
	result := game play: #scissors against: #scissors.
	self assert: result equals: #draw
]
