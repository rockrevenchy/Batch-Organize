# Batch-REorganize
Extract subfolders files and then reorganizes 
files based on their extensions

The script will extract any files stored in the subfolders of the folder in which it is executed, it will then
reads the files name and will create a folder based on their extension (unless it already exists), 
it will then proceed to put the file in the corresponding folders and finally delete any empty folders left
behind.

The scripts ignores files which has the character ~ in their name (such as "~explorer.exe")
this is for cases such as a desktop, in case you actually want shortcuts or files to remain untouched, it also
ignores hidden files.

In order to not interfere with linux or cmd the extension folders are named in this manner "~ext" instead of a 
more classic name such as ".ext", this allows linux to not hide the folder since a folder starting with such 
character results in it being hidden.

The script is also explained with comments in case one would want to modify or learn from it!
