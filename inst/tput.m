%% -*- texinfo -*-
%% @deffn Command tput(['setaf', @var{fg_color}], ..., ['setab', @var{bg_color}], ..., ['bold'], ['reset'])
%%
%% Example:
%% @example
%% @group
%% tput('setaf', 1, 'setab', 2)
%%   @result{} ans = \e[31;42m
%% @end group
%% @end example
%%
%% @end deffn

function out = tput(varargin)

out = '\e[';
for i = 1:nargin
  token = varargin{i};
  if strcmp(token, 'reset')
    out = [out, '0;'];
  elseif strcmp(token, 'bold')
    out = [out, '1;'];
  elseif strcmp(token, 'setaf')
    out = [out, '3'];
  elseif strcmp(token, 'setab')
    out = [out, '4'];
  else
    out = [out, int2str(token), ';'];
  end
end
if out(length(out)) == ';'
  out(length(out)) = '';
end
out = [out, 'm'];

end

%!test
%! tput('setaf', 1, 'setab', 2);
%! assert(ans, '\e[31;42m')
