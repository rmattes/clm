(print "1 --- ")
(dotimes (i 3) (time (with-sound (:play nil) (expsrc 0 1 "oboe.snd" 3 .5 2))))
(print "2 --- ")
(dotimes (i 3) (time (with-sound (:reverb jc-reverb :play nil) (fm-violin 0 2 440 .1))))
(print "3 --- ")
(dotimes (i 3) (time (with-sound (:play nil) (fm-violin 0 2 440 .1))))
(print "4 --- ")
(dotimes (i 3) (time (with-sound (:play nil) (loop for i from 0 to 9 do (mix "oboe.snd" :frames 22050 :amplitude .1)))))
(print "5 --- ")
(dotimes (i 3) (time (with-sound (:play nil) (loop for i from 0 to 99 do (fm-violin (* i .1) 1 440 .01)))))
(print "6 --- ")
(dotimes (i 3) (time (load "i.clm")))
(print "7 --- ")
(dotimes (i 3) (time (with-sound (:play nil) (pins 0 1 "oboe.snd" 1.0 :max-peaks 8))))
(print "8 --- ")
(dotimes (i 3) (time (with-sound (:play nil) (loop for i from 0 to 999 do (fm-violin (* i .01) .01 440 .01)))))
