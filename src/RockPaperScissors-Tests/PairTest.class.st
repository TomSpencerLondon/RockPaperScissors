Class {
	#name : 'PairTest',
	#superclass : 'TestCase',
	#category : 'RockPaperScissors-Tests',
	#package : 'RockPaperScissors-Tests'
}

{ #category : 'tests' }
PairTest >> testWeaponOrderIsAlphabetic [

	| pair |
	pair := Pair new initializeWith: #scissors and: #rock.
	self assert: pair weaponOne equals: #rock.
	self assert: pair weaponTwo equals: #scissors
]
