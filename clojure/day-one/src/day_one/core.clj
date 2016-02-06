(ns day-one.core)

(defn big [word n] 
  (< (count word) n))

(defn collection-type [col] 
  (if (= (type col) clojure.lang.PersistentList) :list 
    (if (= (type col) clojure.lang.PersistentArrayMap) :map 
      (if (= (type col) clojure.lang.PersistentVector) :vector
        :other))))

