;;; ~/.doom.d/elisp/org.el -*- lexical-binding: t; -*-

(use-package! org
  :init
  (map! :map org-mode-map
        :n "M-k" #'org-metaup
        :n "M-j" #'org-metadown
        :n "M-h" #'org-metaleft
        :n "M-l" #'org-metaright))
