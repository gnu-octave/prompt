%% -*- texinfo -*-
%% @deffn Command get_ps1 {[@var{prompt_string}], [[@var{format}], @{@var{fg_color}, @var{bg_color}, @var{text}@}, [@var{sep}]], ...}
%% Create a powerlevel10k-like PS1. @var{text} can be @code{get_icon()} or
%% prompt escape code of
%% @url{https://docs.octave.org/latest/Customizing-the-Prompt.html}.
%%
%% Example:
%% @example
%% @group
%% get_ps1('$ ', '%s', @{'black', 'white', 'a'@}, '', ' %s', @{'white', 'blue', 'b'@}, '', ' %s ', @{'green', 'red', 'c'@}, '')
%%   @result{} ans = \e[30;47ma\e[37;44m\e[37m b\e[34;41m\e[32m c \e[0;31m\e[0m$
%% @end group
%% @end example
%%
%% @seealso{get_icon}
%% @end deffn

function ps = get_ps1(varargin)

if nargin == 0
  varargin = {
    {'black', 'white', [get_icon(), ' \#']},
    {'black', 'yellow', '󰘨 \s'},
    {'black', 'white', ' \t'},
    {'white', 'blue', [tput('bold'), '\w']}
  };
  nargin = length(varargin);
end
format = ' %s ';
sep = '';
prompt_string = '\n\$ ';
start = 1;
last_bg = '';
ps = '';
if ~iscell(varargin{1})
  prompt_string = varargin{1};
  varargin(1) = [];
  nargin = length(varargin);
end

for i = 1:nargin
  section = varargin{i};
  if ~iscell(section)
    if strfind(section, '%s')
      format = section;
    else
      sep = section;
    end
    continue
  end
  fg = convert_ansi_color(section{1});
  bg = convert_ansi_color(section{2});
  txt = sprintf(format, section{3});
  if strcmp(last_bg, '')
    ps = [ps, tput('setaf', fg, 'setab', bg), txt];
  else
    ps = [ps, tput('setaf', last_bg, 'setab', bg), sep, tput('setaf', fg), txt];
  end
  last_bg = bg;
end
ps = [ps, tput('reset', 'setaf', last_bg), sep, tput('reset'), prompt_string];

end

%!test
%! get_ps1('$ ', '%s', {'black', 'white', 'a'}, '', ' %s', {'white', 'blue', 'b'}, '', ' %s ', {'green', 'red', 'c'}, '');
%! assert(ans, '\e[30;47ma\e[37;44m\e[37m b\e[34;41m\e[32m c \e[0;31m\e[0m$ ')
