start
	set echo off 
	IF "%1."=="." ( 
		SET @mensagem_commit="Commit sem mensagem"
	) ELSE ( 
		SET @mensagem_commit=%1
	)

	hugo
	cd public
	git add .
	git commit -m "%@mensagem_commit%"
	git push origin main

	cd ..
	git add .
	git commit -m "%@mensagem_commit%"
	git push origin main
@pause