tell application "Finder"
	set selected to selection as alias list
	set current_folder to container of item 1 of selected
	set mlist to every item of selected
	repeat with this_file in mlist
		set cur_ext to name extension of this_file
		set new_name to text 1 thru -((length of cur_ext) + 2) of (name of this_file as text)
		set new_folder to make new folder with properties {name:new_name} at current_folder
		move this_file to new_folder
    # create a new file inside the folder
		make new file at new_folder with properties {name:new_name & ".html", comment:"Created by Applescript"}
	end repeat
end tell
