from os import chdir, listdir, path, mkdir
import sys
import shutil
filetype = {
    "py": "python",
    "js": "javascript",
    "ts": "typescript",
    "c": "c",
    "cpp": "cpp",
    "css": "web",
    "html": "web",
    "sh": "shell",
    "txt": "text",

    # multimedia
    "png": "Images",
    "jpg": "Images",
    "svg": "Images",
    "mp3": "Music",
    "flac": "Music",
    "wav":  "Music",
    "mp4": "Videos",
    "mkv": "Videos",
    "webp": "Videos",

    # docs
    "docs": "docs",
    "docx": "docs",
    "odt": "docs",
    "xlsx": "docs",
    "csv": "docs",
    "md": "mardown",
    "pdf": "books",

    # deb File and Archives
    "deb": "apt",
    "zip": "Archives",
    "gz": "Archives",
    "xz": "Archives",
}


def organize_files(source_dir):
    chdir(source_dir)
    all_files = listdir()

    for file in all_files:
        file_path = path.join(source_dir, file)

        if path.isfile(file_path):
            ext = file.split(".").pop()  # get the file extension

            if ext in filetype:
                destination_folder = filetype[ext]
                destination_dir = path.join(source_dir, destination_folder)

                # Create the destination folder if it doesn't exist
                if not path.exists(destination_dir):
                    mkdir(destination_dir)

                destination_file_path = path.join(destination_dir, file)

                # Handle duplicate filenames
                if path.exists(destination_file_path):
                    new_file_path = path.join(
                        destination_dir, rename_duplicate_file(file))
                    shutil.move(file_path, new_file_path)
                    print(f"Moved {file} to {new_file_path}")
                else:
                    shutil.move(file_path, destination_file_path)
                    print(f"Moved {file} to {destination_file_path}")

        elif path.isdir(file_path):
            # Recursively organize files in subdirectories
            organize_files(file_path)


def rename_duplicate_file(filename):
    basename, ext = path.splitext(filename)
    count = 1
    new_filename = f"{basename}_{count}{ext}"

    while path.exists(new_filename):
        count += 1
        new_filename = f"{basename}_{count}{ext}"

    return new_filename


if __name__ == "__main__":
    argv = sys.argv
    # pass the source directory to organize as an argument
    source_dir = argv[1] if len(argv) > 1 else "."

    organize_files(source_dir)
