formattime, date2, , yy_MM

DataPath = c:\temp
Gosub, MoveFiles

DataPath = %USERPROFILE%\Downloads
Gosub, MoveFiles

FileCopy, %USERPROFILE%\AppData\Roaming\fin.zup, %USERPROFILE%\OneDrive\Documents\fin_%date1%.zup, 1

DataPath = %USERPROFILE%\OneDrive\Documents
Gosub, MoveFiles

MoveFiles:
{
NewPath = %DataPath%\%date2%
IfNotExist,  %NewPath% 
	FileCreateDir, %NewPath%
FileMove, %DataPath%\*.*, %NewPath%
return
}
