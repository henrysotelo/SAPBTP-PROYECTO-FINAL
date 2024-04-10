CLASS zd_data_generator_9389 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zd_data_generator_9389 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.


    DATA:
    ltd_header TYPE STANDARD TABLE OF zorn_header_9389.

    out->write( |Delete   -> Travel ztb_booking_8712| ).
    DELETE FROM zorn_header_9389.

ltd_header
        = VALUE #(
                    (
                        header_id     =  '0000005001'
                        email         =  'juan@example.com'
                        first_name    =  'Juan'
                        last_name     =  'Martínez'
                        country       =  'Mexico'
                        create_on     =  '20240228'
                        delivery_date =  '20240310'
                        order_status  =  '1'
                        image_url     =  'juan'
                        created_by    =  'Admin'
                        created_at    =  '20240228'
                        last_changed_by = 'CB9980003335'
                        last_changed_at = cl_abap_context_info=>get_system_date( )
                    )

                    (
                        header_id =  '0000005002'
                        email =  'maria@example.com'
                        first_name =  'Maria'
                        last_name =  'González'
                        country =  'Spain'
                        create_on =  '20240228'
                        delivery_date =  '20240312'
                        order_status =  '2'
                        image_url =  'maria'
                        created_by =  'Admin'
                        created_at =  '20240228'
                        last_changed_by = 'CB9980003335'
                        last_changed_at = cl_abap_context_info=>get_system_date( )
                    )
                    (
                        header_id =  '0000005003'
                        email =  'carlos@example.com'
                        first_name =  'Carlos'
                        last_name =  'López'
                        country =  'Argentina'
                        create_on =  '20240228'
                        delivery_date =  '20240315'
                        order_status =  '3'
                        image_url =  'carlos'
                        created_by =  'Admin'
                        created_at =  '20240228'
                        last_changed_by = 'CB9980003335'
                        last_changed_at = cl_abap_context_info=>get_system_date( )
                    )
                    (
                        header_id =  '0000005004'
                        email =  'laura@example.com'
                        first_name =  'Laura'
                        last_name =  'Rodríguez'
                        country =  'Colombia'
                        create_on =  '20240228'
                        delivery_date =  '20240318'
                        order_status =  '4'
                        image_url =  'laura'
                        created_by =  'Admin'
                        created_at =  '20240228'
                        last_changed_by = 'CB9980003335'
                        last_changed_at = cl_abap_context_info=>get_system_date( )
                    )
                    (
                        header_id =  '0000005005'
                        email =  'pedro@example.com'
                        first_name =  'Pedro'
                        last_name =  'Sánchez'
                        country =  'Chile'
                        create_on =  '20240228'
                        delivery_date =  '20240320'
                        order_status =  '1'
                        image_url =  'pedro'
                        created_by =  'Admin'
                        created_at =  '20240228'
                        last_changed_by = 'CB9980003335'
                        last_changed_at = cl_abap_context_info=>get_system_date( )
                    )
                    (
                        header_id =  '0000005006'
                        email =  'ana@example.com'
                        first_name =  'Ana'
                        last_name =  'Pérez'
                        country =  'Peru'
                        create_on =  '20240228'
                        delivery_date =  '20240322'
                        order_status =  '2'
                        image_url =  'ana'
                        created_by =  'Admin'
                        created_at =  '20240228'
                        last_changed_by = 'CB9980003335'
                        last_changed_at = cl_abap_context_info=>get_system_date( )
                    )
                    (
                        header_id =  '0000005007'
                        email =  'jorge@example.com'
                        first_name =  'Jorge'
                        last_name =  'Hernández'
                        country =  'Ecuador'
                        create_on =  '20240228'
                        delivery_date =  '20240325'
                        order_status =  '3'
                        image_url =  'jorge'
                        created_by =  'Admin'
                        created_at =  '20240228'
                        last_changed_by = 'CB9980003335'
                        last_changed_at = cl_abap_context_info=>get_system_date( )
                    )
                    (
                        header_id =  '0000005008'
                        email =  'luisa@example.com'
                        first_name =  'Luisa'
                        last_name =  'Martínez'
                        country =  'Bolivia'
                        create_on =  '20240228'
                        delivery_date =  '20240328'
                        order_status =  '4'
                        image_url =  'luisa'
                        created_by =  'Admin'
                        created_at =  '20240228'
                        last_changed_by = 'CB9980003335'
                        last_changed_at = cl_abap_context_info=>get_system_date( )
                    )
                    (
                        header_id =  '0000005009'
                        email =  'roberto@example.com'
                        first_name =  'Roberto'
                        last_name =  'Díaz'
                        country =  'Uruguay'
                        create_on =  '20240228'
                        delivery_date =  '20240330'
                        order_status =  '1'
                        image_url =  'roberto'
                        created_by =  'Admin'
                        created_at =  '20240228'
                        last_changed_by = 'CB9980003335'
                        last_changed_at = cl_abap_context_info=>get_system_date( )
                    )
                    (
                        header_id =  '0000005010'
                        email =  'sofia@example.com'
                        first_name =  'Sofia'
                        last_name =  'López'
                        country =  'Paraguay'
                        create_on =  '20240228'
                        delivery_date =  '20240402'
                        order_status =  '2'
                        image_url =  'sofia'
                        created_by =  'Admin'
                        created_at =  '20240228'
                        last_changed_by = 'CB9980003335'
                        last_changed_at = cl_abap_context_info=>get_system_date( )
                    )
                   ).

    IF lines( ltd_header ) > 0.

      INSERT zorn_header_9389 FROM TABLE @ltd_header.

    ENDIF.

    out->write( |insert -> Header zorn_header_9389| ).

  ENDMETHOD.

ENDCLASS.
