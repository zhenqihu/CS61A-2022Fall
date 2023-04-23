(define-macro (when condition exprs)
  `(if ,condition ,(cons 'begin exprs) (quote okay))
  )

(define-macro (switch expr cases)
  (cons 'cond
        (map (lambda (case)
                        (cons `(equal? ,expr (quote ,(car case))) (cdr case)))
             cases)))
