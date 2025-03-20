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

{ #category : 'playing' }
RockPaperScissors >> play: first against: second [

	^ first playAgainst: second
]
