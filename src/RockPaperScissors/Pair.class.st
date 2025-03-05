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

{ #category : 'as yet unclassified' }
Pair class >> withWeaponOne: aWeapon weaponTwo: anotherWeapon [

	^ self new
		  weaponOne: aWeapon;
		  weaponTwo: anotherWeapon;
		  yourself
]

{ #category : 'initialization' }
Pair >> initializeWith: aWeapon and: anotherWeapon [

   | symbols sortedSymbols |
   symbols := {aWeapon. anotherWeapon}.
   sortedSymbols := symbols asSortedCollection: [:a :b | a asString < b asString].

   self weaponOne: sortedSymbols first.
   self weaponTwo: sortedSymbols second.
    
	self initialize.
	
	
	
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
