;;; packages.el --- multiple-cursors Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Sylvain Benner <sylvain.benner@gmail.com>
;; URL: https://github.com/syl20bnr/spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; List of all packages to install and/or initialize. Built-in packages
;; which require an initialization must be listed explicitly in the list.
(setq multiple-cursors-packages
    '(
      multiple-cursors
      ))

;; List of packages to exclude.
(setq multiple-cursors-excluded-packages '())

;; For each package, define a function multiple-cursors/init-<package-name>
;;
;; (defun multiple-cursors/init-my-package ()
;;   "Initialize my package"
;;   )
;;
;; Often the body of an initialize function uses `use-package'
;; For more info on `use-package', see readme:
;; https://github.com/jwiegley/use-package

(defun multiple-cursors/init-multiple-cursors ()
  "Initialize multiple cursors"
  (use-package multiple-cursors
    :init
    (spacemacs/set-leader-keys
      "el" 'mc/edit-lines
      "m>" 'mc/mark-next-like-this
      ;; "mu>" 'mc/unmark-next-like-this
      "m<" 'mc/mark-previous-like-this
      ;; "mu<" 'mc/unmark-previous-like-this
      "ma" 'mc/mark-all-like-this
      )
    ;; (progn
    ;;   (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
    ;;   (global-set-key (kbd "C->") 'mc/mark-next-like-this)
    ;;   (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
    ;;   (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this))
    ))

