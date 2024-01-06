
source_file="C:\Users\91725\Desktop\Promact Internship\Linux Assignment 5\Task4\My_file.txt"


backup_folder="C:\Users\91725\Desktop\Promact Internship\Linux Assignment 5\Task4\Backup"


if [ -e "$source_file" ]; then
   
    mkdir -p "$backup_folder"

    
    backup_filename="backup_$(date +\%Y\%m\%d_\%H\%M\%S).txt"

    
    cp "$source_file" "$backup_folder/$backup_filename"

    echo "Backup completed successfully."
else
    echo "Error: Source file not found."
fi
