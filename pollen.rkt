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

(define (subsection title . body)
  `(div ([id ,(heading-to-id title)] [class "my-4"])
    (h2 ([class "text-xl text-[#44567e]"])
        ,title)
    ,@body))

(define (par . body)
  `(p ([class "my-2"]) ,@body))

(define (it . body)
  `(span ([class "italic"]) ,@body))

(define (bold . body)
  `(span ([class "font-bold"]) ,@body))

(define (card #:title title #:img [img ""] . body)
  `(div ([class "max-w-sm rounded overflow-hidden shadow-lg"])
      ,(if (string=? img "")
           ""
           `(img ([class "w-full"] [src ,img])))
      (div ([class "px-6 py-4"])
        (h2 ([class "font-bold text-xl mb-2"])
          ,title)
        ,@body)))

(define (table . rows)
`(table ([class "table-auto w-full"])
    ,@(map 
      (λ (row)
        `(tr ([class ""])  
          ,@(map  
              (λ (data)
                 `(td ([class "border-b border-slate-500 p-4 pl-8"]) ,data))
              (filter (λ (data) (not (equal? data "\n")))
                      (string-split row ",")))))
      rows)))
