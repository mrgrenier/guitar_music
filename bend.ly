%
% bend.ly
%
% preliminary tests for drawing bends
% 2011-03-11
%
% Marc Hohl
%
% TODO:
% - draw dashed line for \holdBend
% - enable consecutive bend ups
% - simplify \preBend and \holdBend usage
% - ...

#(display "\n\nbend.ly ? 2011-03-11\n\n")


%%% sizes and values (to be changed/adapted):

% the line thickness of bends and stuff:
#(define bend-line-thickness 0.1)

% the height of pointed slurs is fixed regardless of its width
% (TODO: should this be changed?):
#(define pointed-slur-height 2.0)

% the linear amount of the bend arrow (TODO: find a better name?)
#(define bend-ratio 0.35)

% the distance between the topmost tablature line and the arrow head
#(define bend-dy 2.75)

% the distance between the end of a bend and the consecuting second one
#(define bend-shift-dy 2.75)


% the height of the bend arrow head:
#(define bend-arrow-height 1.25)

% the width of the arrow head base:
#(define bend-arrow-width 0.8)

% the distance between the tablature line where a bend starts
% and the starting point in vertical direction:
#(define bend-y-offset 0.35)

%%% internal commands
#(define-public (quarterdiff->string quarterdiff)
  (let ((wholesteps (floor (/ quarterdiff 4))))

       (string-append (case wholesteps
                            ((0) "")
                            (else (number->string wholesteps)))
                      (case (modulo quarterdiff 4)
                            ((1) "<")
                            ((2) "=")
                            ((3) ">")
                            (else "")))))

%%% markup commands
#(define-markup-command (pointedSlur layout props thickness bx by mx my ex ey)
  (number? number? number? number? number? number? number?)
  (interpret-markup layout props
    (markup #:postscript
            (ly:format "~f setlinewidth
                        ~f ~f moveto
                        ~f ~f lineto
                        ~f ~f lineto stroke" thickness bx by mx my ex ey))))

#(define-markup-command (drawBendArrow layout props
  thickness begin-x middle-x end-x begin-y end-y arrow-lx arrow-rx arrow-y outstring)
  (number? number? number? number? number? number? number? number? number? string?)
  (interpret-markup layout props
    (markup #:postscript
            (ly:format "~f setlinewidth
                        ~f ~f moveto
                        ~f ~f lineto
                        ~f ~f ~f ~f ~f ~f curveto
                        stroke
                        ~f ~f moveto
                        ~f ~f lineto
                        ~f ~f lineto
                        closepath fill"
                        thickness
                        begin-x begin-y
                        middle-x begin-y
                        middle-x begin-y end-x begin-y end-x arrow-y
                        arrow-lx arrow-y
                        end-x end-y
                        arrow-rx arrow-y)
            #:hspace 0
            #:translate (cons (- end-x 1.2) (+ end-y 0.5))
            #:fontsize -2
            #:bold #:center-column (outstring))))

#(define-markup-command (drawHoldBend layout props
  thickness begin-x end-x line-y)
  (number? number? number? number?)
  (interpret-markup layout props
    (markup #:postscript
            (ly:format "~f setlinewidth
                        ~f ~f moveto
                        ~f ~f lineto
                        stroke" thickness begin-x line-y end-x line-y))))

#(define-markup-command (drawHoldBendWithArrow layout props
  thickness begin-x begin-y end-x end-y arrow-lx arrow-rx arrow-y outstring)
  (number? number? number? number? number? number? number? number? string?)
  (interpret-markup layout props
    (markup #:postscript
            (ly:format "~f setlinewidth
                        ~f ~f moveto
                        ~f ~f lineto
                        stroke
                        ~f ~f moveto
                        ~f ~f lineto
                        ~f ~f lineto
                        closepath fill
                        ~f ~f moveto
                        ~f ~f lineto
                        stroke"
                        thickness
                        begin-x begin-y
                        begin-x arrow-y
                        arrow-lx arrow-y
                        begin-x end-y
                        arrow-rx arrow-y
                        begin-x end-y
                        end-x end-y)
            #:hspace 0
            #:translate (cons (- begin-x 1.2) (+ end-y 0.5))
            #:fontsize -2
            #:bold #:center-column (outstring))))

#(define-markup-command (drawHoldBendArrowOnly layout props
  thickness begin-x begin-y end-x end-y arrow-lx arrow-rx arrow-y outstring)
  (number? number? number? number? number? number? number? number? string?)
  (interpret-markup layout props
    (markup #:postscript
            (ly:format "~f setlinewidth
                        ~f ~f moveto
                        ~f ~f lineto
                        stroke
                        ~f ~f moveto
                        ~f ~f lineto
                        ~f ~f lineto
                        closepath fill"
                        thickness
                        begin-x begin-y
                        begin-x arrow-y
                        arrow-lx arrow-y
                        begin-x end-y
                        arrow-rx arrow-y)
            #:hspace 0
            #:translate (cons (- begin-x 1.2) (+ end-y 0.5))
            #:fontsize -2
            #:bold #:center-column (outstring))))

#(define-markup-command (drawDashedLine layout props
  thickness begin-x end-x line-y)
  (number? number? number? number?)
  ;; TODO: draws a full line instead of a dashed line
  (interpret-markup layout props
    (markup #:postscript
            (ly:format "~f setlinewidth
                        ~f ~f moveto
                        ~f ~f lineto
                        stroke"
                        thickness begin-x line-y end-x line-y))))

%%% callbacks

#(define-public (slur::draw-pointed-slur grob)
  (let* (;;(pointed-slur-height 2.0)
         ;;(bend-line-thickness 0.1)
         (control-points (ly:grob-property grob 'control-points))
         (direction (ly:grob-property grob 'direction))
         (left-point (car control-points))
         (right-point (cadddr control-points))
         (begin-x (+ (car left-point) 0.125)) ;; due to David's proposals
         (begin-y (cdr left-point))
         (end-x (- (car right-point) 0.125)) ;; due to David's proposals
         (end-y (cdr right-point))
         (middle-x (/ (+ begin-x end-x) 2))
         (middle-y (/ (+ begin-y end-y) 2))
         (normal-x (* direction (- begin-y end-y)))
         (normal-y (* direction (- end-x begin-x)))
         (normal-length (sqrt (+ (* normal-x normal-x)
                                 (* normal-y normal-y))))
         (point-x (+ middle-x (* pointed-slur-height
                                 (/ normal-x normal-length))))
         (point-y (+ middle-y (* pointed-slur-height
                                 (/ normal-y normal-length)))))

         (grob-interpret-markup grob
                                (make-pointedSlur-markup bend-line-thickness
                                  begin-x begin-y point-x point-y end-x end-y))))

#(define-public (slur::draw-alternate-pointed-slur grob)
  (let* ((control-points (ly:grob-property grob 'control-points))
         (direction (ly:grob-property grob 'direction))
         (first-point (car control-points))
         (second-point (cadr control-points))
         (third-point (caddr control-points))
         (forth-point (cadddr control-points))
         (first-x (car first-point))
         (first-y (cdr first-point))
         (second-x (car second-point))
         (second-y (cdr second-point))
         (third-x (car third-point))
         (third-y (cdr third-point))
         (forth-x (car forth-point))
         (forth-y (cdr forth-point))
         (A (- second-y first-y))
         (B (- first-x second-x))
         (C (- (* second-x first-y)
               (* first-x second-y)))
         (D (- forth-y third-y))
         (E (- third-x forth-x))
         (F (- (* forth-x third-y)
               (* third-x forth-y)))
         (DEN  (- (* A E) (* D B)))
         (NOMx (- (* B F) (* E C)))
         (NOMy (- (* C D) (* F A)))
         (middle-x (/ NOMx DEN))
         (middle-y (/ NOMy DEN)))

         (grob-interpret-markup grob
                                (make-pointedSlur-markup bend-line-thickness
                                  first-x first-y middle-x middle-y forth-x forth-y))))

#(define-public (slur::draw-another-alternate-pointed-slur grob)
  (let* ((control-points (ly:grob-property grob 'control-points))
         (direction (ly:grob-property grob 'direction))
         (first-point (car control-points))
         (second-point (cadr control-points))
         (third-point (caddr control-points))
         (forth-point (cadddr control-points))
         (first-x (+ (car first-point) 0.125)) ;; due to David's proposals
         (first-y (cdr first-point))
         (second-x (car second-point))
         (second-y (cdr second-point))
         (third-x (car third-point))
         (third-y (cdr third-point))
         (forth-x (- (car forth-point) 0.125))
         (forth-y (cdr forth-point))

         (middle-x (/ (+ third-x second-x) 2))
         (middle-y (/ (+ third-y second-y) 2)))

         (grob-interpret-markup grob
                                (make-pointedSlur-markup bend-line-thickness
                                  first-x first-y middle-x middle-y forth-x forth-y))))

#(define-public (slur::draw-bend-arrow grob)
  (let* ((staff-symbol (ly:grob-object grob 'staff-symbol))
         (line-count (ly:grob-property staff-symbol 'line-count))
         (staff-space (ly:grob-property staff-symbol 'staff-space))
         (left-bound (ly:spanner-bound grob LEFT))
         (right-bound (ly:spanner-bound grob RIGHT))
         (left-tab-note-head (ly:grob-property left-bound 'cause))
         (right-tab-note-head (ly:grob-property right-bound 'cause))
         (control-points (ly:grob-property grob 'control-points))
         (left-point (car control-points))
         (right-point (cadddr control-points))
         (left-pitch  (ly:event-property (event-cause left-bound) 'pitch))
         (right-pitch (ly:event-property (event-cause right-bound) 'pitch))
         (quarterdiff (- (ly:pitch-quartertones right-pitch)
                         (ly:pitch-quartertones left-pitch)))
         (begin-x (car left-point))
         (begin-y (+ (* (/ (ly:grob-property left-tab-note-head 'staff-position) 2)
                        staff-space)
                     bend-y-offset))
         ;; cdr left-point doesn't work, because invisible stems are included
         (end-x (car right-point))
         (end-y (+ (* (/ (- line-count 1) 2) staff-space) bend-dy))
         (arrow-lx (- end-x (/ bend-arrow-width 2)))
         (arrow-rx (+ end-x (/ bend-arrow-width 2)))
         (arrow-y (- end-y bend-arrow-height))
         (middle-x (+ begin-x (* bend-ratio (- end-x begin-x))))
         (bend-amount (quarterdiff->string quarterdiff)))

        (if (< quarterdiff 0)
            ;; bend down
            (let* ((y-offset (cdr (ly:grob-extent left-tab-note-head left-tab-note-head Y)))
                   (temp begin-y))

                  (set! begin-y end-y) ;; swap begin-y/end-y
                  (set! end-y (+ temp y-offset))
                  (set! arrow-y (+ end-y bend-arrow-height))
                  (set! bend-amount "")
                  (ly:grob-set-property! right-tab-note-head 'display-cautionary #t)
                  (ly:grob-set-property! right-tab-note-head 'stencil tab-note-head::print))

            ;; bend up
            (let* ((x-offset (/ (cdr (ly:grob-extent left-tab-note-head left-tab-note-head X))
                                2)))

                  (set! begin-x (+ begin-x x-offset))
                  (ly:grob-set-property! right-tab-note-head 'transparent #t)))
        ;; draw resulting bend arrow
        (grob-interpret-markup grob
                               (make-drawBendArrow-markup
                                 bend-line-thickness
                                 begin-x middle-x end-x begin-y end-y
                                 arrow-lx arrow-rx arrow-y
                                 bend-amount))))

#(define-public (slur::draw-shifted-bend-arrow grob)
  (let* ((staff-symbol (ly:grob-object grob 'staff-symbol))
         (line-count (ly:grob-property staff-symbol 'line-count))
         (staff-space (ly:grob-property staff-symbol 'staff-space))
         (left-bound (ly:spanner-bound grob LEFT))
         (right-bound (ly:spanner-bound grob RIGHT))
         (left-tab-note-head (ly:grob-property left-bound 'cause))
         (right-tab-note-head (ly:grob-property right-bound 'cause))
         (control-points (ly:grob-property grob 'control-points))
         (left-point (car control-points))
         (right-point (cadddr control-points))
         (left-pitch  (ly:event-property (event-cause left-bound) 'pitch))
         (right-pitch (ly:event-property (event-cause right-bound) 'pitch))
         (quarterdiff (- (ly:pitch-quartertones right-pitch)
                         (ly:pitch-quartertones left-pitch)))
         (begin-x (car left-point))
         (begin-y (+ (* (/ (ly:grob-property left-tab-note-head 'staff-position) 2)
                        staff-space)
                     bend-dy))
         ;; cdr left-point doesn't work, because invisible stems are included
         (end-x (car right-point))
         (end-y (+ (* (/ (- line-count 1) 2) staff-space) bend-dy bend-shift-dy))
         (arrow-lx (- end-x (/ bend-arrow-width 2)))
         (arrow-rx (+ end-x (/ bend-arrow-width 2)))
         (arrow-y (- end-y bend-arrow-height))
         (middle-x (+ begin-x (* bend-ratio (- end-x begin-x))))
         (bend-amount (quarterdiff->string quarterdiff)))

        (if (< quarterdiff 0)
            ;; bend down
            (let* ((y-offset (cdr (ly:grob-extent left-tab-note-head left-tab-note-head Y)))
                   (temp begin-y))

                  (set! begin-y end-y) ;; swap begin-y/end-y
                  (set! end-y (+ temp y-offset))
                  (set! arrow-y (+ end-y bend-arrow-height))
                  (set! bend-amount "")
                  (ly:grob-set-property! right-tab-note-head 'stencil
                                         (lambda (grob) (parenthesize-tab-note-head grob))))
            ;; bend up
            (ly:grob-set-property! right-tab-note-head 'transparent #t))
        ;; draw resulting bend arrow
        (grob-interpret-markup grob
                               (make-drawBendArrow-markup
                                 bend-line-thickness
                                 begin-x middle-x end-x begin-y end-y
                                 arrow-lx arrow-rx arrow-y
                                 bend-amount))))

#(define-public (slur::draw-pre-bend-hold grob)
  (let* ((staff-symbol (ly:grob-object grob 'staff-symbol))
         (line-count (ly:grob-property staff-symbol 'line-count))
         (staff-space (ly:grob-property staff-symbol 'staff-space))
         (left-bound (ly:spanner-bound grob LEFT))
         (right-bound (ly:spanner-bound grob RIGHT))
         (left-tab-note-head (ly:grob-property left-bound 'cause))
         (right-tab-note-head (ly:grob-property right-bound 'cause))
         (control-points (ly:grob-property grob 'control-points))
         (left-point (car control-points))
         (right-point (cadddr control-points))
         (left-pitch  (ly:event-property (event-cause left-bound) 'pitch))
         (right-pitch (ly:event-property (event-cause right-bound) 'pitch))
         (quarterdiff (- (ly:pitch-quartertones right-pitch)
                         (ly:pitch-quartertones left-pitch)))
         (begin-x (car left-point))
         (y-offset (cdr (ly:grob-extent left-tab-note-head left-tab-note-head Y)))
         (begin-y (+ (* (/ (ly:grob-property left-tab-note-head 'staff-position)
                           2)
                        staff-space)
                     y-offset))
         ;; cdr left-point doesn't work, because invisible stems are included
         (end-x (car right-point))
         (end-y (+ (* (/ (- line-count 1) 2) staff-space) bend-dy))
         (arrow-lx (- begin-x (/ bend-arrow-width 2)))
         (arrow-rx (+ begin-x (/ bend-arrow-width 2)))
         (arrow-y (- end-y bend-arrow-height))
         (bend-amount (quarterdiff->string quarterdiff)))

        (ly:grob-set-property! right-tab-note-head 'transparent #t)
        ;; draw resulting bend arrow
        (grob-interpret-markup grob
                               (make-drawHoldBendWithArrow-markup
                                 bend-line-thickness
                                 begin-x begin-y
                                 end-x end-y
                                 arrow-lx arrow-rx arrow-y
                                 bend-amount))))

#(define-public (slur::draw-pre-bend-only grob)
  (let* ((staff-symbol (ly:grob-object grob 'staff-symbol))
         (line-count (ly:grob-property staff-symbol 'line-count))
         (staff-space (ly:grob-property staff-symbol 'staff-space))
         (left-bound (ly:spanner-bound grob LEFT))
         (right-bound (ly:spanner-bound grob RIGHT))
         (left-tab-note-head (ly:grob-property left-bound 'cause))
         (right-tab-note-head (ly:grob-property right-bound 'cause))
         (control-points (ly:grob-property grob 'control-points))
         (left-point (car control-points))
         (right-point (cadddr control-points))
         (left-pitch  (ly:event-property (event-cause left-bound) 'pitch))
         (right-pitch (ly:event-property (event-cause right-bound) 'pitch))
         (quarterdiff (- (ly:pitch-quartertones right-pitch)
                         (ly:pitch-quartertones left-pitch)))
         (begin-x (car left-point))
         (y-offset (cdr (ly:grob-extent left-tab-note-head left-tab-note-head Y)))
         (begin-y (+ (* (/ (ly:grob-property left-tab-note-head 'staff-position)
                           2)
                        staff-space)
                     y-offset))
         ;; cdr left-point doesn't work, because invisible stems are included
         (end-x (car right-point))
         (end-y (+ (* (/ (- line-count 1) 2) staff-space) bend-dy))
         (arrow-lx (- begin-x (/ bend-arrow-width 2)))
         (arrow-rx (+ begin-x (/ bend-arrow-width 2)))
         (arrow-y (- end-y bend-arrow-height))
         (bend-amount (quarterdiff->string quarterdiff)))

        (ly:grob-set-property! right-tab-note-head 'transparent #t)
        ;; draw resulting bend arrow
        (grob-interpret-markup grob
                               (make-drawHoldBendArrowOnly-markup
                                 bend-line-thickness
                                 begin-x begin-y
                                 end-x end-y
                                 arrow-lx arrow-rx arrow-y
                                 bend-amount))))

#(define-public (tie::draw-hold-bend grob)
  (let* ((staff-symbol (ly:grob-object grob 'staff-symbol))
         (line-count (ly:grob-property staff-symbol 'line-count))
         (staff-space (ly:grob-property staff-symbol 'staff-space))
         (left-tab-note-head (ly:spanner-bound grob LEFT))
         (right-tab-note-head (ly:spanner-bound grob RIGHT))
         (control-points (ly:grob-property grob 'control-points))
         (left-point (car control-points))
         (right-point (cadddr control-points))
         (begin-x (car left-point))
         (end-x (car right-point))
         (line-y (+ (* (/ (- line-count 1) 2) staff-space) bend-dy)))

        (ly:grob-set-property! right-tab-note-head 'transparent #t)
        (grob-interpret-markup grob
                               (make-drawDashedLine-markup
                                 bend-line-thickness
                                 begin-x end-x line-y))))

%%% music functions

bendOn = {
  %\override Voice.Slur #'stencil = #slur::draw-pointed-slur
  \override TabVoice.Slur #'stencil = #slur::draw-bend-arrow
}

bendOff = {
  \revert Voice.Slur #'stencil
  \override TabVoice.Slur #'stencil = #slur::draw-tab-slur
}

bendGrace = #(define-music-function (parser location note) (ly:music?)
  #{
    \once \override Voice.Stem #'stencil = ##f
    \once \override Voice.Stem #'direction = #DOWN
    \once \override Voice.Slur #'direction = #UP
    \grace $note
  #})

preBendHold = #(define-music-function (parser location note) (ly:music?)
  #{
    \once \override TabVoice.Slur #'stencil = #slur::draw-pre-bend-only
    \once \override TabStaff.ParenthesesItem #'transparent = ##t
    \parenthesize $note
  #})

preBendRelease = #(define-music-function (parser location note) (ly:music?)
  #{
    \once \override TabVoice.Slur #'stencil = #slur::draw-pre-bend-hold
    \once \override TabStaff.ParenthesesItem #'transparent = ##t
    \once \override Voice.Slur #'direction = #DOWN
    \parenthesize $note
  #})

holdBend = #(define-music-function (parser location) ()
  #{
    \once \override TabVoice.Tie #'stencil = #tie::draw-hold-bend
  #})

shiftBend = {
  \once \override TabVoice.Slur #'stencil = #slur::draw-shifted-bend-arrow
}
