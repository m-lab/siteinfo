local new = {
  prefix: std.extVar('prefix'),
  serial: 0,
};

if std.extVar('operation') == 'create' then
  // We're creating a new serial record.
  new
else if std.extVar('operation') == 'update' then
  // Read a previously created serial record.
  local prev = import 'serial.ts';
  if prev.prefix == new.prefix then
    // If the past and present prefixes match, then inc the serial number.
    {
      prefix: new.prefix,
      serial: prev.serial + 1,
    }
  else
    // If the prefixes do not match, then we can start over.
    new
else if std.extVar('operation') == 'format' then
  // Generate a serial number using the values in the serial record.
  local prev = import 'serial.ts';
  '%s%02d' % [prev.prefix, prev.serial]
else
  error 'Unsupported operation: %s' % std.extVar('operation')
