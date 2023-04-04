Class {
	#name : #DTOChecker,
	#superclass : #Object,
	#instVars : [
		'model',
		'checker'
	],
	#category : #'formation-BL'
}

{ #category : #accessing }
DTOChecker >> model [
	^ model
]

{ #category : #accessing }
DTOChecker >> model: aModel [
	model := aModel 
]

{ #category : #'as yet unclassified' }
DTOChecker >> regexTypes: aRegExp [ 
"créer une méthode #regexpTypes: <regexp> pour rechercher les types dont le nom matche la regexp" 
	^ model allModelClasses select: [ :class | aRegExp asRegex matches: class name ]
]
