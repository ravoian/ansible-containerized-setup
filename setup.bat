:: -----------------------------------------------------------------
:: --- Setup managed node & skip pause
:: -----------------------------------------------------------------
echo | call managed_run.bat


:: -----------------------------------------------------------------
:: --- Setup control node & skip pause
:: -----------------------------------------------------------------
echo | call control_run.bat


:: -----------------------------------------------------------------
:: --- Keep window open for review
:: -----------------------------------------------------------------
@pause