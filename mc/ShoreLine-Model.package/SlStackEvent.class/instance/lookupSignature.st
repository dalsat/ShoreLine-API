private
lookupSignature
	| regex |

	rawContents ifNotNil: [
		regex := self class lookupExpression.
		regex search: rawContents.
		targetClass := regex subexpression: 2.
		targetMethod := regex subexpression: 5 ]