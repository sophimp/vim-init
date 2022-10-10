#!/bin/bash
function obtain_git_branch {
  br=`git branch | grep "*"`
  echo ${br/* /}
}
br=`obtain_git_branch`
echo Current git branch is $br
git remote add github git@github.com:sophimp/vim-init.git
git remote add skywind git@github.com:skywind3000/vim-init.git
git remote set-url origin git@gitee.com:sophimp/vim-init.git
git push origin $br
git push github $br
