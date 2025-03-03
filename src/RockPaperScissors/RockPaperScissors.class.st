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
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'playing' }
RockPaperScissors >> play: first against: second [
	
	first = second ifTrue: [ ^ #draw ].
	first = #paper ifTrue: [ second = #scissors ifTrue: [ ^ #scissors ] ].
	first = #rock ifTrue: [ second = #scissors ifTrue: [ ^ #rock ] ].
	first = #scissors ifTrue: [ second = #paper ifTrue: [ ^ #scissors ] ].
	^ #paper
]
