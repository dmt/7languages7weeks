(ns day2.core)

(defn- fib-pair [[current next]] [next (+ current next)])
(defn fib [pos]
  (nth (map first (iterate fib-pair [1 1])) (- pos 1)))


(defmacro unless [test body  & else]
  (list 'if (list 'not test) body else))
