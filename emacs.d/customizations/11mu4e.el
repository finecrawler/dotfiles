
;;----------------------------------------------------------
;; ---- BEGIN Email client ----
;;----------------------------------------------------------
(add-to-list 'load-path "/usr/local/Cellar/mu/0.9.11/share/emacs/site-lisp/mu4e")
(require 'mu4e)

;; default
(setq mu4e-maildir "~/Test")
(setq mu4e-drafts-folder "/Drafts")
(setq mu4e-sent-folder   "/Sent Messages")
(setq mu4e-trash-folder  "/Deleted Messages")

;; don't save message to Sent Messages, Gmail/IMAP takes care of this
(setq mu4e-sent-messages-behavior 'delete)

;; setup some handy shortcuts
;; you can quickly switch to your Inbox -- press ``ji''
;; then, when you want archive some messages, move them to
;; the 'All Mail' folder by pressing ``ma''.

(setq mu4e-maildir-shortcuts
      '( ("/INBOX"               . ?i)
         ("/Sent Messages"       . ?s)
         ("/Deleted Messages"    . ?t)
         ("/All Mail"    . ?a)))

;; allow for updating mail using 'U' in the main view:
(setq mu4e-get-mail-command "offlineimap")

;; something about ourselves
(setq
 user-mail-address "declanqian@qq.com"
 user-full-name  "Declan Qian"
 message-signature
 (concat
  "任文山 (Ren Wenshan)\n"
  "Email: renws1990@gmail.com\n"
  "Blog: wenshanren.org\n"
  "Douban: www.douban.com/people/renws"
  "\n"))

;; sending mail -- replace USERNAME with your gmail username
;; also, make sure the gnutls command line utils are installed
;; package 'gnutls-bin' in Debian/Ubuntu

(require 'smtpmail)
;; (setq message-send-mail-function 'smtpmail-send-it
;;       starttls-use-gnutls t
;;       smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
;;       smtpmail-auth-credentials
;;       '(("smtp.gmail.com" 587 "renws1990@gmail.com" nil))
;;       smtpmail-default-smtp-server "smtp.gmail.com"
;;       smtpmail-smtp-server "smtp.gmail.com"
;;       smtpmail-smtp-service 587)

;; alternatively, for emacs-24 you can use:
(setq message-send-mail-function 'smtpmail-send-it
    smtpmail-stream-type 'starttls
    smtpmail-default-smtp-server "smtp.gmail.com"
    smtpmail-smtp-server "smtp.gmail.com"
    smtpmail-smtp-service 587)

;; don't keep message buffers around
(setq message-kill-buffer-on-exit t)

;;----------------------------------------------------------
;; ---- END Email client ----
;;----------------------------------------------------------
