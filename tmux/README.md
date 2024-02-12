## Path

Just Copy this .tmux.conf -> ~/.config/tmux/tmux.conf

```sh
cp ./.tmux.conf ~/.config/tmux/tmux.conf

``` 
Now install All the Dependencies By CTRL+A SHIFT + I
`Please change your CAPS LOCK -> Extra Control for tmux always have to use
Prefix`

## Shorthands

1. prefix CTRL+A | for vertical split
2. prefix CTRL+A \_ for horizontal split
3. prefix CTRL+A r for reload
4. prefix CTRL+A h,jk,l for moving panes (Vimmer)

5. prefix + :rename-{window,sessions} NewName
6. prefix + c => NewWindow
7. prefix + n => switch windows
 
# install Plugins

1. CTRL+A SHIft +I 

# Sessions
1. tmux new -s Name_for_session
2. tmux ls #for list of all sessions
3. tmux attach
4. tmux kill-server

