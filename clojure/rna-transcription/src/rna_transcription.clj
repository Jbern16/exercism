(ns rna-transcription)

(def mapping {\G \C \T \A \A \U \C \G })

(defn to-rna [sequence]
  (assert (every? mapping sequence))
  (apply str (map mapping sequence)))
