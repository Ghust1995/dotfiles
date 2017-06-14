$path = ($pwd).path + "\_vimrc"
Try { cmd /c mklink C:\Users\gusta\_vimrc $path}
Catch { "Link already exists" }


Try { md ~\vimfiles\autoload }
Catch { "Autoload folder already exists" }

$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile($uri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("~\vimfiles\autoload\plug.vim"))
