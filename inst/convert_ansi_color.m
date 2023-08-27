%% -*- texinfo -*-
%% @deffn Command convert_ansi_color()
%% Convert color name to color value.
%%
%% Example:
%% @example
%% @group
%% convert_ansi_color('black')
%%   @result{} ans = 0
%% @end group
%% @end example
%%
%% @end deffn

function color = convert_ansi_color(color)

colors = struct(
  'black', 0,
  'red', 1,
  'green', 2,
  'yellow', 3,
  'blue', 4,
  'purple', 5,
  'cyan', 6,
  'white', 7
);
if isfield(colors, color)
  color = colors.(color);
end

end

%!test
%! assert(convert_ansi_color(100), 100)
%! assert(convert_ansi_color('black'), 0)
