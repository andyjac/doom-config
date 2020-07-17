;;; ~/.doom.d/elisp/keybindings.el -*- lexical-binding: t; -*-

;; `leader' keybindings
(map! :leader
      ;; code
      (:prefix-map ("c" . "code")
       :desc "Pop from definition" "p" (cmd!! #'xref-pop-marker-stack)
       :desc "Make"                "M"        #'+make/run)
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

;; from Henrik
(map! :n [tab] (cmds! (and (featurep! :editor fold)
                           (save-excursion (end-of-line) (invisible-p (point))))
                      #'+fold/toggle
                      (fboundp 'evil-jump-item)
                      #'evil-jump-item)
      :v [tab] (cmds! (and (bound-and-true-p yas-minor-mode)
                           (or (eq evil-visual-selection 'line)
                               (not (memq (char-after) (list ?\( ?\[ ?\{ ?\} ?\] ?\))))))
                      #'yas-insert-snippet
                      (fboundp 'evil-jump-item)
                      #'evil-jump-item))
