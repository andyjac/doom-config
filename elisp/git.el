;;; ~/.doom.d/elisp/git.el -*- lexical-binding: t; -*-

(map! :leader
      (:prefix-map ("g" . "git")
        (:when (featurep! :tools magit)
          ;; NOTE adds standard keybinding for diffing the current working file
          :desc "Git diff file" "d" #'magit-diff-buffer-file)))
