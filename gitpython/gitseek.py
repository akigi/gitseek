import git
import os

_repo_path = os.path.join('./', 'repo')
git_repo = git.Repo.clone_from('git@github.com:rane-hs/test.git', _repo_path, branch='master')

