(ns day_three.sleepingbarber)

(def barber (agent 0))
(def waiting-room (atom 0))

(defn full-waiting-room []
  (= waiting-room 4))

(defn wait-for-haircut []
  (swap! waiting-room inc)
  (send barber cut-hair))

(defn customer-arrive []
  (if not full-waiting-room wait-for-haircut))

(defn cut-hair [barber]
  (swap! waiting-room dec)
  (Thread/sleep 20)
  (+ barber 1))

(defn start []
  (every 500 customer-arrive) ;; need to execute at random intervals (between 10 and 30 ms
                              ;; from different threads
                              ;; and for a given time (10s).
  )
  

;; customer arrives, if barber chair is empty, sit and get a haircut, otherwise, cheks the waiting room, if there's room, sits there and wait for the barber to be available. turns away if the waiting room is full.
 

