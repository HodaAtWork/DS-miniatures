Object subclass: #DiamondsLoader
	instanceVariableNames: ''
	classVariableNames: ''
	package: 'Diamonds'!

!DiamondsLoader methodsFor: 'data preprocessing' stamp: 'HenkopdenAkker 9/15/2020 14:44'!
sortRowsOf: aCovidDataFrame
	aCovidDataFrame sortBy: 'price'.! !

!DiamondsLoader methodsFor: 'data preprocessing' stamp: 'HenkopdenAkker 9/15/2020 14:36'!
removeRedundantColumnsFrom: aDiamondDataFrame
	"No need to include x, y and z"
	aDiamondDataFrame removeColumns: #(x y z). ! !


!DiamondsLoader methodsFor: 'accessing-path' stamp: 'HenkopdenAkker 9/15/2020 16:28'!
dataCsvFile
	^ self dataDirectory ensureCreateDirectory / 'diamonds.csv'

! !

!DiamondsLoader methodsFor: 'accessing-path' stamp: 'HenkopdenAkker 9/15/2020 21:14'!
dataDirectory

	^ 'pharo-local/data' asFileReference ! !


!DiamondsLoader methodsFor: 'data loading' stamp: 'HenkopdenAkker 9/15/2020 16:26'!
loadData

	| diamondDataFrame |
	diamondDataFrame := DataFrame readFromCsv: self dataCsvFile.
	self removeRedundantColumnsFrom: diamondDataFrame.
	self sortRowsOf: diamondDataFrame.
	^diamondDataFrame! !
