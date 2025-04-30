CLASS lhc_Z_Event_BO DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Z_Event_BO RESULT result.

ENDCLASS.

CLASS lhc_Z_Event_BO IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

ENDCLASS.

CLASS lsc_Z_EVENT_BO DEFINITION INHERITING FROM cl_abap_behavior_saver.
  PROTECTED SECTION.

    METHODS save_modified REDEFINITION.

    METHODS cleanup_finalize REDEFINITION.

ENDCLASS.

CLASS lsc_Z_EVENT_BO IMPLEMENTATION.

  METHOD save_modified.
  ENDMETHOD.

  METHOD cleanup_finalize.
  ENDMETHOD.

ENDCLASS.

CLASS lcl_event_handler DEFINITION FRIENDS zbp_event_bo.
  PUBLIC SECTION.
    CLASS-METHODS on_Raise_Reference_Event IMPORTING it_events TYPE zbp_event_bo=>tt_events.
ENDCLASS.

CLASS lcl_event_handler IMPLEMENTATION.
   METHOD on_Raise_Reference_Event.

    RAISE ENTITY EVENT z_event_bo~ReferenceEvent FROM it_events.

   ENDMETHOD.
ENDCLASS.
