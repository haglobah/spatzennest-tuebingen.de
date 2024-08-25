#lang racket

(require pollen/core)

(provide (all-defined-out))

(define (inner-link text url) 
  `(a ([href ,url] [rel "noreferrer noopener"]
       [class "text-[#44567e]/80 hover:underline decoration-2 underline-offset-2 decoration-[#44567e]/50 hover:text-[#44567e]"])
      ,text))

(define (outer-link text url) 
  `(a ([href ,url] [rel "noreferrer noopener"] [target "_blank"]
       [class "text-[#44567e]/80 hover:underline decoration-2 underline-offset-2 decoration-[#44567e]/50 hover:text-[#44567e]"])
      ,text))

(define (heading-to-id heading)
  (string-downcase
   (string-join
    (filter
     (lambda (s) (not (string=? s "")))
     (string-split
      (string-replace
       (string-replace heading #rx"[^a-zA-Z0-9 -]" "")
       " "
       "-")
      "-"))
    "-")))

(define (section title . body)
  `(div ([id ,(heading-to-id title)] [class "section my-6 scroll-mt-[14vh]"])
    (h1 ([class "text-2xl text-[#44567e]"])
        ,title)
    ,@body))

(define (par . body)
  `(p ([class "my-2"])
    ,@ body))
