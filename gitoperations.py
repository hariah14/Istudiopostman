import os
import datetime



# class Gitrepo:
#     def __init__(self, repo_path): 
#         self.repo_path = repo_path

#     def gitPullUpdate(self):        
#         os.chdir(self.repo_path)
#         os.system('git init')
#         os.system('git config --global user.email "harish.puvvada@hcl.com"')        
#         os.system('git config --global user.name "harish"')

#     def gitadd(self):
#         os.system('git remote add origin https://github.com/hariah14/Istudiopostman.git') 
#         os.system('git add .')
#         os.system('git commit -m "commit on ' + str(datetime.datetime.now()) + ' "') 

#     def gitpush(self):
#         os.system('')        
          
# import os

class GitRepo:
    def __init__(self, repo_path):
        self.repo_path = repo_path

    def init_repo(self):
        os.chdir(self.repo_path) # change current working directory to desired location
        os.system('git init') # initialize a new Git repository

    def set_config(self, config_name, config_value):
        os.chdir(self.repo_path) # change current working directory to local repository
        os.system(f'git config --local {config_name} "{config_value}"') # set a local Git config option

    def add_remote(self, remote_name, remote_url):
        os.chdir(self.repo_path) # change current working directory to local repository
        os.system(f'git remote add {remote_name} {remote_url}') # add a new Git remote

    def add_to_index(self, file_path):
        os.chdir(self.repo_path) # change current working directory to local repository
        os.system(f'git add {file_path}') # add file changes to Git index

    def commit(self, commit_message):
        os.chdir(self.repo_path) # change current working directory to local repository
        os.system(f'git commit -m "{commit_message}"') # add file changes to Git index        

    def push_changes(self, branch_name):
        os.chdir(self.repo_path) # change current working directory to local repository
        os.system(f'git push -u origin {branch_name}') # push changes to remote Git repository

    # def push_changes(self, remote_url):
    #     os.chdir(self.repo_path) # change current working directory to local repository
    #     os.system(f'git push {remote_url}') # push changes to remote Git repository    


# repo = GitRepo('/path/to/local/repo')
repo = GitRepo('.')

repo.init_repo()  # initialize a new Git repository

repo.set_config('user.name', 'Harish')  # set local Git config option for user name

repo.set_config('user.email', 'harish.puvvada@hcl.com')  # set local Git config option for user email

repo.add_remote('origin', 'https://github.com/hariah14/Istudiopostman.git')  # add a new Git remote

repo.add_to_index('.')  # add changes to file.txt to Git index

repo.commit("pushing through python")

repo.push_changes('master')  # push changes to remote Git repository branch named "main"

# repo.push_changes('https://github.com/hariah14/Istudiopostman.git')  # push changes to remote Git repository branch named "main"


