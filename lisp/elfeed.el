(require 'elfeed-org)
(elfeed-org)
(setq rmh-elfeed-org-files (list "/mnt/win/remote/org/feeds.org"))

(global-set-key (kbd "C-x w") 'elfeed)
(setf url-queue-timeout 30)
