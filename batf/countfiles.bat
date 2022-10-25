@ECHO OFF
for %%A in (*) do (Set /A n+=1& Set /A %%~xA.+=1)
Echo Files: %n% & pause & exit