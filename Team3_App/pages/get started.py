from turtle import st
from xml.etree import ElementInclude
from altair import Element
from bs4 import PageElement




def get_startet():
    
    #Load dependencies
    import streamlit as st
    import pandas as pd
    import yahooquery as yq
    from yahooquery import Ticker
    from yahooquery import Screener
    import yfinance as yf
    from yfinance import ticker
    import requests
    import ydata_profiling as yd 
    from ydata_profiling import ProfileReport

    df = pd.read_csv("app_df1.csv"),
    #############


    st.set_page_config(page_title="ETF Database", 
    
    page_icon= "barchart:", 
    
    layout="wide", 
    
    initial_sidebar_state="collapsed")
    

  # Sidebar navigation
  
    with PageElement: st.sidebar("Go to", ["Main", "Visualization", "Database", "Forecast"])

    
    st.title("ETF-Finder")
    st.subheader("Here you will find your personal ETF")

    st.markdown(''' # Just apply your filter settings here and press start''')


    with Element: st.container(
        
      select = st.selectbox('''Fitler for Categorical Features'['Investment Strategy', 
                              'Asset Class', 'Asset Region', 'Subsegment']'''),

      select = st.multiselect(''''Asset Class'['Equity', 'Fixed Income', 
                                    'Commodity', 'Alternatives' ]'''),

      select = st.multiselect(''''Asset Region'['Global',Emerging Markets, Developing Markets',
                                        Europe', 'North America','Asia Pacific', 'Emerging Markets', 
                                        'BRICS','Africa', 'Middle East']'''),

      select = st.multiselect('''''Subsegment'[ 'Large Cap', 'Mid Cap', 'Small Cap', 'Value',
                                        'Growth', 'Blend', 'High Dividend Yield', 'Low Volatility',
                                        'High Beta', 'High Momentum', 'Quality', 'Low Carbon',]'''),

    )
    
with ElementInclude: st.container(
    
    st.markdown(''' ### You want to invest sustainable? __Here, you can!__ ''')),
                      
st.selectslider('''''Carbon Intensity [%]'[0 , 25, 50, 75, 100 '''),
      
st.selectslider('''Quality Score [%]'[0 , 25, 50, 75, 100''')


#################

# Results from filter function


################

# glimpse @ filtered selection
 


###################

# load additional info from yfinance on filtered selection


####################



# second filter function on new information


#####################

# final selection max 10 ETFs


