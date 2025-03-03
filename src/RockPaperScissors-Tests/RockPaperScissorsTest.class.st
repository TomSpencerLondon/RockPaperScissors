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
RockPaperScissorsTest >> testPaperIsBeatenByScissors [

	| result |
	result := game play: #paper against: #scissors.
	self assert: result equals: #scissors
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
RockPaperScissorsTest >> testScissorsBeatsRock [

	| result |
	result := game play: #scissors against: #rock.
	self assert: result equals: #rock
]

{ #category : 'tests' }
RockPaperScissorsTest >> testScissorsDrawsWithScissors [

	| result |
	result := game play: #scissors against: #scissors.
	self assert: result equals: #draw
]
