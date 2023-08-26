import profile


def database_page():
    
    #Load dependencies
    import streamlit as st
    import pandas as pd
    import ydata_profiling as ydp
    from ydata_profiling import ProfileReport

    df = pd.read_csv("app_df1.csv")
    #############


    st.set_page_config(page_title="Welcome to the ETF Database", 
    page_icon="barchart:", 
    layout="wide", 
    initial_sidebar_state="collapsed"

)
   

    
    st.title("ETF Database")
    
    st.subheader('Here you can explore our Database')

   
    st.table(df, height=1000, width=1000)
    
    profile = ProfileReport(df,title='ETF Database', exploitive=True)
    
    st.markdown(''' ## With ydata_profiling you, 
                can explore our Database by detailed statistical Analysis''')
    
    st.button('Get Profile Report')
    
    if st.button: ("Get Profile Report"): st.write(profile)




    