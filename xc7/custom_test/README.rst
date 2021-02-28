Counter test
~~~~~~~~~~~~

This example design features a simple 4-bit custom driving LEDs. To build the
custom example, depending on your hardware, run:

.. code-block:: bash
   :name: example-custom-a35t-group

   TARGET="arty_35" make -C custom_test


.. code-block:: bash
   :name: example-custom-a100t-group

   TARGET="arty_100" make -C custom_test


.. code-block:: bash
   :name: example-custom-basys3-group

   TARGET="basys3" make -C custom_test


.. code-block:: bash
   :name: example-custom-nexys_video-group

   TARGET="nexys_video" make -C custom_test


.. code-block:: bash
   :name: example-custom-zybo-group

   TARGET="zybo" make -C custom_test


At completion, the bitstreams are located in the build directory:

.. code-block:: bash

   cd custom_test/build/<board>

Now, for **Arty and Basys3**, you can upload the design with:

.. code-block:: bash

   openocd -f ${INSTALL_DIR}/${FPGA_FAM}/conda/envs/${FPGA_FAM}/share/openocd/scripts/board/digilent_arty.cfg -c "init; pld load 0 top.bit; exit"


The result should be as follows:

.. image:: ../../docs/images/custom-example-arty.gif
   :align: center
   :width: 50%

For **Zybo**, please follow the `guide on how to load a bitstream from U-boot <https://symbiflow-examples.readthedocs.io/en/latest/running-examples.html#load-bitstream-from-u-boot>`_.


Once the bitstream is loaded, the result should be as follows:

.. image:: ../../docs/images/custom-example-zyboz7.gif
   :align: center
   :width: 50%

On the picocom terminal, you can control the custom behaviour to stop it, or let it count backwards, by toggling values of the EMIO pins of the ARM Processing System (PS).

You can control the custom enable signal with:

.. code-block:: bash

   gpio set 54
   gpio clear 54

If GPIO 54 is set, the custom is disabled. It is enabled if the GPIO 54 is cleared. The result should be as follows:

.. image:: ../../docs/images/custom-example-zyboz7-clken.gif
   :align: center
   :width: 50%

You can control the custom direction with:

.. code-block:: bash

   gpio set 55
   gpio clear 55

If GPIO 55 is set, the custom goes backwards. It goes forwared if the GPIO 54 is cleared. The result should be as follows:

.. image:: ../../docs/images/custom-example-zyboz7-reverse.gif
   :align: center
   :width: 50%
