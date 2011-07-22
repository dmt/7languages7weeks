(ns day2.compass)

(def directions [:north :east :south :west])

(defn turn [base amount]
  (rem (+ base amount) (count directions)))

(defprotocol Compass
  (direction [c])
  (left [c])
  (right [c]))

(defrecord SimpleCompass [bearing] Compass
  (direction [_] (directions bearing))
  (left [_] (SimpleCompass. (turn bearing 3)))
  (right [_] (SimpleCompass. (turn bearing 1)))
  Object
  (toString [this] (str "[" (direction this) "]")))

(def bla (SimpleCompass. 0))
