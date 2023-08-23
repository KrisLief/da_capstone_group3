def calculate_etf_savings_monthly(monthly_deposit, etf_performance, expense_ratio, years):
    total_savings = 0  # Initial investment is 0
    for year in range(1, years + 1):
        total_savings = (monthly_deposit * 12 + total_savings) * etf_performance - (monthly_deposit * 12 + total_savings) * etf_performance * expense_ratio
    return total_savings

def etf_savings_script_monthly(monthly_deposit, etf_performance, expense_ratio, years):
    monthly_deposit = float(monthly_deposit)
    etf_performance = float(etf_performance)
    expense_ratio = float(expense_ratio)
    years = int(years)
    
    total_savings = calculate_etf_savings_monthly(monthly_deposit, etf_performance, expense_ratio, years)
    return total_savings
