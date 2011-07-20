(ns day1.core)

(defn big [st n]
  (< n (count st)))

(defn collection-type [col]
  (cond (set? col) :set
        (map? col) :map
        (list? col) :list
        (vector? col) :vector
        (seq? col) :seq))
