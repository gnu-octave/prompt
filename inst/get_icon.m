%% -*- texinfo -*-
%% @deffn Command get_icon()
%% Get icon of OS.
%%
%% Example:
%% @example
%% @group
%% get_icon()
%%   @result{} ans = 
%% @end group
%% @end example
%%
%% @end deffn

function icon = get_icon()

platforms=struct(
  'unknown', '?',
  'android', '',
  'arch', '',
  'centos', '',
  'debian', '',
  'docker', '',
  'gentoo', '',
  'linux', '',
  'macos', '',
  'ubuntu', '',
  'nixos', '',
  'windows', ''
);
[status, platform] = system('ps -p1 -ocmd=');
if strcmp(platform, '/sbin/docker-init')
  platform=docker
elseif strcmp(getenv('PREFIX'), '/data/data/com.termux/files/usr')
  platform = 'android';
elseif ispc()
  platform = 'windows';
elseif ismac()
  platform = 'macos';
elseif isunix()
  [status, platform] = system('lsb_release -i');
  if status == 0
    platform = lower(strsplit(platform)(3){1});
  else
    platform = 'linux';
  end
else
  platform = 'unknown';
end
icon = platforms.(platform);
if length(getenv('SSH_TTY')) | strcmp(getenv('USER'), 'root')
  host_info = ' \u@\h ';
else
  host_info = '';
end
icon = [icon host_info];

end
