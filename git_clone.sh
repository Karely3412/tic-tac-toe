mkdir ~/dev/devpipeline/<proj_name>
cd ~/dev/devpipeline/<proj_name>
gh repo create <proj_name>-backend --private
git clone --bare git@github.com:Dev-Pipeline-145/foundation-backend.git
cd foundation-backend.git
git push --mirror git@github.com:devpipelinellc/<proj_name>-backend.git
cd ~/dev/devpipeline/<proj_name>
rm -rf foundation-backend.git
git clone git@github.com:devpipelinellc/<proj_name>-backend.git

gh repo create <proj_name>-frontend --private

git clone --bare git@github.com:Dev-Pipeline-145/foundation-frontend.git
cd foundation-frontend.git

git push --mirror git@github.com:devpipelinellc/<proj_name>-frontend.git

cd ~/dev/devpipeline/<proj_name>
rm -rf foundation-frontend.git

git clone git@github.com:devpipelinellc/<proj_name>-frontend.git





printf "Creating directory"
mkdir ~/dev/devpipeline/$1
cd ~/dev/devpipeline/$1

echo "Creating remote repositories"
/opt/homebrew/bin/gh repo create $1-backend --private
/opt/homebrew/bin/gh repo create $1-frontend --private

echo "Copying foundation-backend to new repository..."
git clone --bare git@github.com:Dev-Pipeline-145/foundation-backend.git
cd foundation-backend.git
git push --mirror git@github.com:devpipelinellc/$1-back
echo "Copying foundation-frontend to new repository..."

git clone --bare git@github.com:Dev-Pipeline-145/foundation-frontend.git
cd foundation-frontend.git

git push --mirror git@github.com:devpipelinellc/$1-frontend.git

cd ~/dev/devpipeline/$1
rm -rf foundation-frontend.git

echo "Cloning new repositories to local machine..."
git clone git@github.com:devpipelinellc/$1-backend.git

git clone git@github.com:devpipelinellc/$1-frontend.git

echo "Done!"