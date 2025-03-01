Class {
	#name : 'StonePaperScissorsTest',
	#superclass : 'TestCase',
	#instVars : [
		'game'
	],
	#category : 'StonePaperScissors-Tests',
	#package : 'StonePaperScissors-Tests'
}

{ #category : 'running' }
StonePaperScissorsTest >> setUp [

	super setUp.
	game := RockPaperScissors new
]

{ #category : 'tests' }
StonePaperScissorsTest >> testPaperBeatsRock [

	| result |
	result := game play: #paper against: #rock.
	self assert: result equals: #paper
]

{ #category : 'tests' }
StonePaperScissorsTest >> testScissorsBeatsPaper [

	| result |
	result := game play: #scissors against: #paper.
	self assert: result equals: #scissors
]
