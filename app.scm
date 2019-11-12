;; file: app.scm

(declare (standard-bindings) (extended-bindings) (not safe) (not run-time-bindings))
(declare (not standard-bindings append for-each))

(println ">>> app.scm")

(define (fib n) (if (fx< n 2) n (fx+ (fib (fx- n 1)) (fib (fx- n 2)))))

(for-each
 (lambda (x)
   (println (fib x)))
 (append '(1 2 3)
         '(4 5 6)))

(let* ((start (current-milliseconds))
       (result (fib 35))
       (end (current-milliseconds)))
  (js-alert (fx- end start))
  (js-alert result))
