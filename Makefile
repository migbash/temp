# IMPORTANT
# Please run make git-reset-dev at the end of each
# successfull Pull Request -> main;
git-reset-dev:
	# After PR -> (main) - run (this) to get local/dev in pair with (main)
	echo 'Checking out to MAIN'
	git checkout main
	echo 'Pulling new changes from MAIN'
	git pull origin main
	echo 'Checkout to DEV'
	git checkout dev
	echo 'Resetting to MAIN'
	git reset --hard main
	echo 'Resetiing origin/dev'
	git push --force origin dev

git-reset-test:
	# After PR -> (main) - run (this) to get local/dev in pair with (main)
	git checkout dev
	git pull origin dev
	git checkout test
	git reset --hard dev
	git push --force origin test