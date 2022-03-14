local files = std.split(importstr 'output/files.list', '\n');
local hrefs = [
  '<li><a href="' + row + '">' + row + '</a></li>'
  for row in files
  if row != ''
];

// Output should be formatted as a string:
//   jsonnet -J . --string formats/index.html.jsonnet
std.lines([
  '<html><body> Generated: ' + std.extVar('latest') + '<br><br><ul>',
  std.join('\n', hrefs),
  '</ul></body></html>',
])
