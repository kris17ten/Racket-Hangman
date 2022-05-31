#lang racket/gui
(require racket/draw                                ;to add an image(background)
         net/url)


(define myframe (new frame%
                     (label "Hangman")
                     (width 400) (height 400)
                     (x 400) (y 100)))

(define font3 (make-font #:size 24
                         #:family 'script
                         #:face "Courier Std"
                         #:weight 'bold))

(define logo
  (read-bitmap "welcomepage.bmp"))
(send myframe show #t)
(void (new message% [parent myframe] [label logo]))    ;to add an image(background)

(send myframe show #t)

(define targetword1 '())
(define targetword "")
(send myframe show #t)


(define text-field (new text-field%
                        (label "Please Enter your word") (parent myframe)))

(define firstbut (new button%
                      (parent myframe)
                      (label "Start")
                     (callback (λ (x y)(set! targetword (string-upcase (send text-field get-value)))
                                 (send txt set-label (vector-ref vec 0))
                                      (set! wordVector (make-vector (string-length targetword)))                    ; Part of the vector length+position.
                                      (splitString (string-upcase targetword) wordVector)                                           ; Part of the vector length+position.
                                 (send secondframe show #t)(send myframe show #f)))))
(define helpbut (new button%
                     (parent myframe)
                     (label "Help")
                     (min-height 20)
                     (min-width 25)
                     (vert-margin 3)
                     (horiz-margin 0)
                     (callback (λ (o e) (send helpbut set-label "Help")(send helpframe show #t)))))

(define helpframe(new frame% (label "help page")
                      (x 400) (y 100)))                   
(define help
  (read-bitmap "helppage.bmp"))
(send helpframe show #f)
(void (new message% [parent helpframe] [label help]))    ;to add an image(background)                     
                     

(define vec (vector ""))
(define userGuess "")

(define wordVector (make-vector (string-length targetword)))      ; Calling wordVector splits the word into individual stings and positions them.
(define iterator 0)                                               ;
(define splitString (λ (str vec) (for ([i str])                   ; Using a for Loop.
                                   (vector-set! vec iterator i)
                            (set! iterator (+ iterator 1)))
                      (set! userGuess (make-string (string-length targetword) #\_))
                      (send txt set-label userGuess)))     ;


(define secondframe (new frame%
                         (label "Hangman")
                         (width 400) (height 400)
                         (x 400) (y 100)))

(define txt (new message%
                    (label userGuess)
                    (auto-resize #t)
                    (font font3)
                     (parent secondframe)))
                  

(define resetButton (new button%
                   (label "Reset")
                   (parent secondframe)
                   (callback (λ (x y) (reset)))))


(define alphabet (new horizontal-panel%
                      (parent secondframe)
                      (horiz-margin 30)
                      (min-height 0)
                      (min-width 0)
                      (vert-margin 0)
                      (stretchable-width 0)
                      (stretchable-height 0)
                      ))





;(define pics (forlistloop files picfiles




(define aa (new button% (parent alphabet)                                            ;(enabled #f) - means you cannot use the button
     (label "A")
     (callback (λ (x y) (check x aa)(send aa enable #f)))))
 
(define bb (new button% (parent alphabet)
     (label "B")
     (callback (λ (x y)(check x bb)(send bb enable #f)))))

(define cc (new button% (parent alphabet)
     (label "C")
     (callback (λ (x y)(check x cc)(send cc enable #f)))))

(define dd (new button% (parent alphabet)
     (label "D")
     (callback (λ (x y)(check x dd)(send dd enable #f)))))

(define ee (new button% (parent alphabet)
     (label "E")
     (callback (λ (x y)(check x ee)(send ee enable #f)))))

(define ff (new button% (parent alphabet)
     (label "F")
     (callback (λ (x y)(check x ff)(send ff enable #f)))))

(define gg (new button% (parent alphabet)
     (label "G")
     (callback (λ (x y)(check x gg)(send gg enable #f)))))

(define hh (new button% (parent alphabet)
     (label "H")
     (callback (λ (x y)(check x hh)(send hh enable #f)))))

(define ii (new button% (parent alphabet)
     (label "I")
     (callback (λ (x y)(check x ii)(send ii enable #f)))))

(define jj (new button% (parent alphabet)
     (label "J")
     (callback (λ (x y)(check x jj)(send jj enable #f)))))

(define alphabet1 (new horizontal-panel%
                      (parent secondframe)
                      (horiz-margin 30)
                      (min-height 50)
                      (min-width 0)
                      (vert-margin 0)
                      ))

(define kk (new button% (parent alphabet1)
     (label "K")
     (callback (λ (x y)(check x kk)(send kk enable #f)))))

(define ll (new button% (parent alphabet1)
     (label "L")
     (callback (λ (x y)(check x ll)(send ll enable #f)))))

(define mm (new button% (parent alphabet1)
     (label "M")
     (callback (λ (x y)(check x mm)(send mm enable #f)))))

(define nn (new button% (parent alphabet1)
     (label "N")(callback (λ (x y)(check x nn)(send nn enable #f)))))

(define oo (new button% (parent alphabet1)
     (label "O")(callback (λ (x y)(check x oo)(send oo enable #f)))))

(define pp (new button% (parent alphabet1)
     (label "P")(callback (λ (x y)(check x pp)(send pp enable #f)))))

(define qq (new button% (parent alphabet1)
     (label "Q")(callback (λ (x y)(check x qq)(send qq enable #f)))))

(define rr (new button% (parent alphabet1)
     (label "R")(callback (λ (x y)(check x rr)(send rr enable #f)))))

(define ss (new button% (parent alphabet1)
     (label "S")(callback (λ (x y)(check x ss)(send ss enable #f)))))

(define tt (new button% (parent alphabet1)
     (label "T")(callback (λ (x y)(check x tt)(send tt enable #f)))))



(define alphabet3 (new horizontal-panel%
                      (parent secondframe)
                      (horiz-margin 168)
                      (min-height 50)
                      (min-width 0)
                      (vert-margin 0)
                      ))
                      


(define uu (new button% (parent alphabet3)
     (label "U")(callback (λ (x y)(check x uu)(send uu enable #f)))))

(define vv (new button% (parent alphabet3)
     (label "V")(callback (λ (x y)(check x vv)(send vv enable #f)))))

(define ww (new button% (parent alphabet3)
     (label "W")(callback (λ (x y)(check x ww)(send ww enable #f)))))

(define xx (new button% (parent alphabet3)
     (label "X")(callback (λ (x y)(check x xx)(send xx enable #f)))))

(define yy (new button% (parent alphabet3)
     (label "Y")(callback (λ (x y)(check x yy)(send yy enable #f)))))

(define zz (new button% (parent alphabet3)
     (label "Z")(callback (λ (x y)(check x zz)(send zz enable #f)))))


(define alphabet4 (new horizontal-panel%
                      (parent secondframe)
                      (horiz-margin 350)
                      ))                     


(define correctletters (list))
(define wrongletters 0)
(define correctUsed "")


(define picfiles (list "hangmanprt0.bmp" "hangmanpt1.bmp" "hangmanpt2.bmp" "hangmanpt3.bmp" "hangmanpt4.bmp" "hangmanpt5.bmp" "hangmanpt6.bmp"
                       "hangmanpt7.bmp" "hangmanpt8.bmp" "hangmanpt9.bmp" "hangmanpt10.bmp"))

(define picWrong (new message%
                      [parent alphabet4] [auto-resize #t] [label (read-bitmap (list-ref picfiles wrongletters))])) 

(define listToString (λ (lst)
  (for/list ([i lst]) (set! correctUsed (string-append i correctUsed)))))

(define check (λ (x butt)
                (cond
                 ((string-contains? targetword (send x get-label))
                 (set! correctletters (cons (send x get-label) correctletters))
                 (set! correctUsed "")
                 (listToString correctletters)
                 (updateGuess (findPositions wordVector (string-ref (send x get-label) 0)) userGuess)
                 (send txt set-label userGuess)
                 (set! listPositions '())
                 (checkForWin))
                 (#t (set! wrongletters (+ 1 wrongletters))
                     (send picWrong set-label (read-bitmap (list-ref picfiles wrongletters)))
                     (send butt enable #f)
                     (checkForWin)
                     ))))


(define listPositions '())
(define findPositions (λ (vec x)
                        (cond
                          ((equal? (vector-member x vec) #f) listPositions)
                          ((number? (vector-member x vec)) (set! listPositions (cons (vector-member x vec) listPositions))
                                                           (vector-set! vec (vector-member x vec) " ")
                                                           (findPositions vec x)))))

(define updateGuess (λ (lst str)
                      (for/list ([i lst])
                        (string-set! str i (string-ref targetword i)))))


(define checkForWin (λ ()
                      (cond
                        ((>= wrongletters 10) (send txt set-label "YOU LOSE!!")
                                              (disableAllButtons)
                                              (send resetButton show #t))
                        ((not (string-contains? userGuess "_")) (send txt set-label (string-append "YOU WIN!!! YOUR WORD WAS: " targetword))
                                                                (disableAllButtons)
                                                                (send resetButton show #t))
                                                                )))
                         

(define disableAllButtons (λ ()
                            (send aa enable #f) (send bb enable #f) (send cc enable #f)
                            (send dd enable #f) (send ee enable #f) (send ff enable #f)
                            (send gg enable #f) (send hh enable #f) (send ii enable #f)
                            (send jj enable #f) (send kk enable #f) (send ll enable #f)
                            (send mm enable #f) (send nn enable #f) (send oo enable #f)
                            (send pp enable #f) (send qq enable #f) (send rr enable #f)
                            (send ss enable #f) (send tt enable #f) (send uu enable #f)
                            (send vv enable #f) (send ww enable #f) (send xx enable #f)
                            (send yy enable #f) (send zz enable #f)))

(define enableAllButtons (λ ()
                            (send aa enable #t) (send bb enable #t) (send cc enable #t)
                            (send dd enable #t) (send ee enable #t) (send ff enable #t)
                            (send gg enable #t) (send hh enable #t) (send ii enable #t)
                            (send jj enable #t) (send kk enable #t) (send ll enable #t)
                            (send mm enable #t) (send nn enable #t) (send oo enable #t)
                            (send pp enable #t) (send qq enable #t) (send rr enable #t)
                            (send ss enable #t) (send tt enable #t) (send uu enable #t)
                            (send vv enable #t) (send ww enable #t) (send xx enable #t)
                            (send yy enable #t) (send zz enable #t)))

(define reset (λ () (set! targetword "")
                (set! vec (vector ""))
                (set! userGuess "")
                (set! wordVector (make-vector (string-length targetword)))
                (set! iterator 0) 
                (set! correctletters (list))
                (set! wrongletters 0)
                (set! correctUsed "")
                (enableAllButtons)
                (send picWrong set-label (read-bitmap (list-ref picfiles wrongletters))) 
                (send text-field set-value "")
                (send resetButton show #f)
                (send secondframe show #f)
                (send myframe show #t)))


(send resetButton show #f)