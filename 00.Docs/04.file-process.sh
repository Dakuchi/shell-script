# sync file between servers
rsync -avz /path/to/source username@remote_host:/path/to/dest/ 					# copy from local to remote host
rsync -avz username@remote_host:/path/to/source /path/to/dest/ 					# copy form remote source to local
rsync -avz --delete /path/to/source /path/to/dest 								# sync files from source dir to remote dir and remove files from remote no longer exist in source
rsync -avz -e ssh /path/to/source username@remote_host:/path/to/dest			# sync using ssh connection
rsync -avz --exclude '*.txt' /path/to/source/ /path/to/dest						# sync but exclude specific files
rsync -avz -n /path/to/source /path/to/dest 									# simulate sync but not make any changes

