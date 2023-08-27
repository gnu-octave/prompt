#!/usr/bin/env octave
pkg load prompt;
error = 0;
funcs = {'tput', 'get_ps1', 'convert_ansi_color'};
for i = funcs
  error += length(strfind(evalc(['test ', i{1}]), 'error:'));
end
exit(error);
