(ns day-two.core)

(defmacro unless [test body elsebody]
	(list 'if (list 'not test) body elsebody))
