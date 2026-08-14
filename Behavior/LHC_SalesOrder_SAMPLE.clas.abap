CLASS lhc_salesorder DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS create FOR MODIFY
      IMPORTING entities FOR CREATE salesorder.
    METHODS update FOR MODIFY
      IMPORTING entities FOR UPDATE salesorder.
    METHODS delete FOR MODIFY
      IMPORTING keys FOR DELETE salesorder.
    METHODS submit FOR MODIFY
      IMPORTING keys FOR ACTION salesorder~submit RESULT result.
ENDCLASS.

CLASS lhc_salesorder IMPLEMENTATION.
  METHOD create.
    "Implement interaction-phase buffering and validation here.
  ENDMETHOD.

  METHOD update.
    "Implement update buffering and validation here.
  ENDMETHOD.

  METHOD delete.
    "Implement delete buffering here.
  ENDMETHOD.

  METHOD submit.
    "Set an OPEN order to SUBMITTED and return the modified instance.
  ENDMETHOD.
ENDCLASS.
