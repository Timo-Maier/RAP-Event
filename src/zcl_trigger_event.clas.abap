CLASS zcl_trigger_event DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_trigger_event IMPLEMENTATION.
    METHOD if_oo_adt_classrun~main.
        SELECT SINGLE
            FROM I_BusinessPartner
            FIELDS BusinessPartner
            INTO @DATA(key_field).
        DATA(et_events) = VALUE zbp_event_bo=>tt_events(
            (
                %key = key_field
                Field1 = 'Field1'
                Field2 = 'Field2'
            )
        ).
        zbp_event_bo=>raise_reference_event( it_events = et_events ).
        out->write( 'Event has been triggered.').
        commit work.
    ENDMETHOD.
ENDCLASS.
