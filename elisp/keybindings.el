;;; ~/.doom.d/elisp/keybindings.el -*- lexical-binding: t; -*-

;; `leader' keybindings
(map! :leader
      ;; code
      (:prefix-map ("c" . "code")
        :desc "Pop from definition" "p" (cmd!! #'xref-pop-marker-stack))
      ;; git
      (:prefix-map ("g" . "git")
        (:when (featurep! :tools magit)
          :desc "Git diff file" "d" #'magit-diff-buffer-file)))

;; `localleader' keybindings
(map! :localleader
      :map org-mode-map
      "E" #'org-reveal-export-to-html)

;; `eshell-mode-map' keybindings
(map! :map eshell-mode-map
      :n "C-p" #'eshell-previous-input
      :n "C-n" #'eshell-next-input)
