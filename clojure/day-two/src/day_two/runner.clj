(ns day_two.runner)

(defprotocol Runner
	(run [r speed]))

(defrecord Person [name]
	Runner
(run [_ speed]	(println name "is running" speed "km per hour")))

	
