import os
from shutil import copyfile


class Setup():

    def __init__(self, username):
        self.dir_path = os.path.dirname(os.path.realpath(__file__))
        self.user_path = os.path.join('/Users', username)

    def add_proxy(self):
        http_proxy = raw_input('Enter your http_proxy: \n')
        https_proxy = raw_input('Enter your https_proxy: \n')
        z_extra_path = os.path.join(self.user_path, '.zextra')
        bash_extra_path = os.path.join(self.user_path, '.extra')
        with open(z_extra_path, "a") as A, open(bash_extra_path, "a") as B:
            A.write('export ' + http_proxy)
            A.write("\n")
            A.write('export ' + https_proxy)
            A.close()
            B.write('export ' + http_proxy)
            B.write("\n")
            B.write('export ' + https_proxy)
            B.close()

    def setup_zsh(self):
        z_path = os.path.join(self.dir_path, 'zsh')
        prezo_path = os.path.join(self.user_path, '.zprezto/runcoms')
        for item in os.listdir(z_path):
            if item.startswith('.'):
                print item
                os.symlink(
                        os.path.join(
                        z_path, item), os.path.join(
                        self.user_path, item))
            else:
                if item != "aaron.zsh-theme":
                    copyfile(
                        os.path.join(
                            z_path, item), os.path.join(
                            prezo_path, item))

    def setup_bash(self):
        b_path = os.path.join(self.dir_path, 'bash')
        for item in os.listdir(b_path):
            os.symlink(
                os.path.join(
                    b_path, item), os.path.join(
                    self.user_path, item))

    def setup_vim(self):
        v_path = os.path.join(self.dir_path, 'vim')
        for item in os.listdir(v_path):
            os.symlink(
                os.path.join(
                    v_path, item), os.path.join(
                    self.user_path, item))

S = Setup(raw_input('Enter your username '))
#S.add_proxy()
S.setup_zsh()
#S.setup_bash()
#S.setup_vim()
