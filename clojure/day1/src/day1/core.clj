(ns day1.core)

(defn big [st n]
  (< n (count st)))

(defn collection-type [col]
  (cond (set? col) :set
        (map? col) :map
        (list? col) :list
        (vector? col) :vector
        (seq? col) :seq))

(defmulti col-type class)
(defmethod col-type clojure.lang.PersistentList [_] :list) 
(defmethod col-type clojure.lang.PersistentArrayMap [_] :map)
(defmethod col-type clojure.lang.PersistentVector [_] :vector)
(defmethod col-type clojure.lang.PersistentHashSet [_] :set)
(defmethod col-type :default [col] (if (seq? col) :seq :oops))
;; (class '(1))
