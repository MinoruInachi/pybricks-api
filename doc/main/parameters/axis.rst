.. pybricks-requirements:: stm32-float

Axis
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. autoclass:: pybricks.parameters.Axis
    :no-members:

    .. autoattribute:: pybricks.parameters.Axis.X
        :annotation: = vector(1, 0, 0)

    .. autoattribute:: pybricks.parameters.Axis.Y
        :annotation: = vector(0, 1, 0)

    .. autoattribute:: pybricks.parameters.Axis.Z
        :annotation: = vector(0, 0, 1)

On Move Hub, doing math with these vectors is not supported. The axes can still
be used to set up the hub orientation.
