# apt
## Remove
##### Binaries
`sudo apt remove <PACKAGE>`

##### Binaries + configs (except in /home/)
`sudo apt purge <PACKAGE>`

##### Dependencies
`sudo apt autoremove`

##### All
`sudo apt purge --auto-remove <PACKAGE>`