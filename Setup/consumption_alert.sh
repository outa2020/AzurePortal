END_DATE=$(date -d "+1 year" +%Y-%m-%d)

# For dev environment
az consumption budget create \
  --budget-name "budget-HHN-dev" \
  --category "cost" \
  --amount 50 \
  --time-grain Monthly \
  --start-date $(date +%Y-%m-03) \
  --end-date $(date -d "+1 year" +%Y-%m-%d)\
  --resource-group rg-HHN-dev

#  Command group 'consumption' is in preview and under development. Reference and support levels: https://aka.ms/CLI_refstatus
#(400) Invalid budget configuration, please use filter interface with 2019-05-01-preview version (Request ID: 74fe740c-daa1-4159-9935-c07c1fc836e4)
#Code: 400
#Message: Invalid budget configuration, please use filter interface with 2019-05-01-preview version (Request ID: 74fe740c-daa1-4159-9935-c07c1fc836e4)