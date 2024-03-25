"""
:copyright: 2024 Inmanta
:contact: code@inmanta.com
:license: Inmanta EULA
"""

import inmanta.plugins
import inmanta.protocol


@inmanta.plugins.plugin()
def json_dumps(body: "any") -> "string":  # type: ignore
    """
    Dump the provided input into a json string.
    """
    return inmanta.protocol.json_encode(body)
