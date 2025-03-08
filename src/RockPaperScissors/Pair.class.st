"
I am a Pair class.
I represent a combination of two weapons.
"
Class {
	#name : 'Pair',
	#superclass : 'Object',
	#instVars : [
		'weaponOne',
		'weaponTwo'
	],
	#category : 'RockPaperScissors',
	#package : 'RockPaperScissors'
}

{ #category : 'private' }
Pair class >> with: aWeapon and: anotherWeapon [

	| sortedSymbols |
	sortedSymbols := {
		                 aWeapon.
		                 anotherWeapon } asSortedCollection.
	^ self new
		  weaponOne: sortedSymbols first;
		  weaponTwo: sortedSymbols second
]

{ #category : 'comparing' }
Pair >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject ifTrue: [ ^ true ].
	self class = anObject class ifFalse: [ ^ false ].
	^ weaponTwo = anObject weaponTwo and: [
		  weaponOne = anObject weaponOne ]
]

{ #category : 'comparing' }
Pair >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ weaponTwo hash bitXor: weaponOne hash
]

{ #category : 'initialization' }
Pair >> initializeWith: aWeapon and: anotherWeapon [

	| sortedSymbols |
	sortedSymbols := {
		                 aWeapon.
		                 anotherWeapon } asSortedCollection.

	self weaponOne: sortedSymbols first.
	self weaponTwo: sortedSymbols second.
]

{ #category : 'accessing' }
Pair >> weaponOne [
	^ weaponOne
]

{ #category : 'accessing' }
Pair >> weaponOne: aString [

	weaponOne := aString
]

{ #category : 'accessing' }
Pair >> weaponTwo [
	^ weaponTwo
]

{ #category : 'accessing' }
Pair >> weaponTwo: aString [

	weaponTwo := aString
]
