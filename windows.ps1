try { cmd /c mklink ~\_vimrc .\_vimrc }
catch { "Link already exists" }


try { md ~\vimfiles\autoload }
catch { "Autoload folder already exists" }

$uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
(New-Object Net.WebClient).DownloadFile($uri, $ExecutionContext.SessionState.Path.GetUnresolvedProviderPathFromPSPath("~\vimfiles\autoload\plug.vim"))
