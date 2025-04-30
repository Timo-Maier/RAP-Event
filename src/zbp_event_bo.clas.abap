CLASS zbp_event_bo DEFINITION PUBLIC ABSTRACT FINAL FOR BEHAVIOR OF z_event_bo.

    TYPES tt_events TYPE TABLE FOR EVENT z_event_bo~ReferenceEvent.

    PUBLIC SECTION.
        CLASS-METHODS raise_reference_event
            IMPORTING it_events TYPE tt_events.
ENDCLASS.

CLASS zbp_event_bo IMPLEMENTATION.
    METHOD raise_reference_event.
        lcl_event_handler=>on_Raise_Reference_Event( it_events ).
    ENDMETHOD.
ENDCLASS.
