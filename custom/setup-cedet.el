(require 'cc-mode)
(require 'semantic)

(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)

(semantic-add-system-include "/usr/include/c++/5.4.0" 'c++-mode)

(semantic-mode 1)

(provide 'setup-cedet)
