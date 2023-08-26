

from turtle import st


def forecast_page():
    # Load dependencies
    import pandas as pd 
    import numpy as np
    import matplotlib.pyplot as plt
    import seaborn as sns
    import plotly.express as px
    import yfinance as yf
    import yahooquery as yq
    from yahooquery import Ticker
    from yfinance import ticker
    from googlefinance import getQuotes
    import requests
    import json
    import datetime as dt
    from datetime import datetime
    import streamlit as st
    import googlefinance as gf

    
    df = pd.read_csv("app_df1.csv")
    buraks_list49 = pd.read_csv("buraks_list49.csv")

    
    st.set_page_config(page_title="ETF Analyzer", 
    page_icon=":chart_with_upwards_trend:", 
    layout="wide",
    initial_sidebar_state = "expanded"),

    ###########

    # Load final selection from filter modules

    ##########
    selection.ticker
    
    #get tickers from selection

    t_list = selection.ticker
    for t in t_list:
    t= selection.ticker.str.lower() 
    print(t)

    #get tickers from selection

    from requests import get


    for t in t_list:
    T =yq.Ticker('f"{selection.ticker[t]}"')
    print(T)

    # get Timeseries
   
    ts = pd.concat[T, selection.ticker]

    s =yq.Ticker('f"{selection.ticker[t]}"')

    for t in t_list:
    ts = s.history(period='max')
    

''''''#######---MOVE TO GET STARTED PAGE----#########
    # store timeseries in csv
   
    #selection = buraks_list49
    
   # fund = yq.Ticker(f"'{selection.ticker}'")

    
    #fund = Ticker('hasgx')
   # fund.fund_holding_info
''''''

st.title("ETF Forecast")
    # ... (your forecast-related code)

st.markdown(" ## minimize the risk, maximize your return, making data-driven decisions ")  


