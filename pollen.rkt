#lang racket

(require pollen/core)

(provide (all-defined-out))

(define (inner-link text url) 
  `(a ([href ,url] [rel "noreferrer noopener"]
       [class "text-[#44567e]/80 hover:underline decoration-2 underline-offset-2 decoration-[#44567e]/50 hover:text-[#44567e]"])
      ,text))
