"
# RockPaperScissors

I am a RockPaperScissors scorer. 
You query me in the following way:

```
| game |
game := RockPaperScissors new.
result := game play: #paper against: #rock
assert: result equals: #paper
```

"
Class {
	#name : 'RockPaperScissors',
	#superclass : 'Object',
	#instVars : [
		'rules'
	],
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'initialization' }
RockPaperScissors >> initialize [

	super initialize.
	rules := {
		         (Pair with: #paper and: #rock) -> #paper.
		         (Pair with: #scissors and: #paper) -> #scissors.
		         (Pair with: #rock and: #scissors) -> #rock }
		         asDictionary
]

{ #category : 'playing' }
RockPaperScissors >> play: first against: second [
	
	(first = second) ifTrue: [ ^ #draw ].
	
	^ rules at: (Pair with: first and: second ).

"	first = second ifTrue: [ ^ #draw ].
	first = #paper ifTrue: [ second = #scissors ifTrue: [ ^ #scissors ] ].
	first = #rock ifTrue: [ second = #scissors ifTrue: [ ^ #rock ] ].
	first = #scissors ifTrue: [
		second = #paper
			ifTrue: [ ^ #scissors ]
			ifFalse: [ second = #rock ifTrue: [ ^ #rock ] ] ].
	^ #paper"
]
