(ns day_three.account)

(def accounts (ref [0, 0]))

(defn change-balance [id operation amount]
	(dosync
		(alter accounts assoc id
			(operation (nth @accounts id) amount))))

(defn credit [id amount]
	(change-balance id + amount))

(defn debit [id amount]
	(change-balance id - amount))
