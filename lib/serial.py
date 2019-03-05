#!/usr/bin/env python
#
# serial.py generate an RFC1912 serial ID suitable for DNS zone files.

import time
import os
import json
import logging


def get_revision(prefix, serial_file):
    """Returns a two digit revision number as a string.

    Callers should provide the same serial_file. For a given prefix, the
    first revision is always "00" and the last "99". The revision number
    never increases beyond "99".

    Args:
        prefix: str, current date prefix as YYYYMMDD.
        serial_file: str, file path to read past and store current revisions.

    Returns:
        str, a two digit revision number, e.g. "00", "01", etc, up to "99".
    """
    with open(serial_file, 'a+') as serial:
        try:
            n = json.loads(serial.read())
        except ValueError:
            n = {'prefix': prefix, 'revision': -1}

        if prefix == n['prefix']:
            if n['revision'] < 99:
                n['revision'] += 1
            else:
                logging.warning('WARNING: Revision is too large to increase!')

    with open(serial_file, 'w') as serial:
        revision = '%02d' % n['revision']
        serial.write(json.dumps(n))
    return revision


def format_rfc1912(ts):
    """Returns an rfc1912 style serial id (YYYYMMDDnn) for a DNS zone file."""
    # RFC1912 (http://www.ietf.org/rfc/rfc1912.txt) recommends 'nn' as the
    # revision. However, identifying and incrementing this value is a manual,
    # error prone step. Instead, we save a temporary daily sequence counter.
    serial_prefix = time.strftime('%Y%m%d', ts)
    return serial_prefix + get_revision(serial_prefix, '.serial')


if __name__ == '__main__':
    print format_rfc1912(time.gmtime())
