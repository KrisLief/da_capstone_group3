# Main file of the App
# Importing the required libraries

def main():
    #Main function of the App
    import pandas as pd
    import plotly.express as px
    import plotly.graph_objects as go
    import plotly.io as pio
    from streamlit_plotly_events import plotly_events
    from streamlit_lottie import st_lottie
    from plotly.subplots import make_subplots
    from streamlit_option_menu import option_menu


    # Load data
    
   


    color_scales = {
     "dividend_yield_cat": "Plot3",
     "esg_rating": "Prism",
     "quality_score_cat": "PiYG",
     "carbon_intensity_cat": "Bold",
     "aum_cat": "Viridis",
     "grade": "Set2",
     "investment_strategy": "Plotly",
     "asset_class": "Dark2",
     "asset_region": "Viridis",
     "subsegment": "light24",
     "one_mo_p_percent": "RdBu",
     "three_mo_p_percent": "solar",
     "one_yr_p_percent": "sunset",
     "three_yr_p_percent": "spectral",
     "five_yr_p_percent": "picnic",
     "ten_yr_p_percent": "rainbow"}


#Define names of the pages
import streamlit as st

st.set_page_config()
layout = "wide"




st.selectbox(['navigate'['home', 'get started' ,'visualization','database', 'forecast']])




# Customize the sidebar
markdown = """

"""




st.title("# Welcome to ETF Analyzer")





elements = st.container(st.image('g4231.png', width=500),
                        
                        st.markdown(''' ### __Invest in the future, 
                        not the past - Apply your personal requirements 
                        for sustainable assets__ ''')
                        )

st.header("Instructions")

markdown = """
**To get started**, select a page from the sidebar.
"""

st.markdown(markdown)



##################-Page-Config-#####################








###############################################-Haeder-Section-########################################################


 



# Sidebar navigation



#####################-Container-1-#####################
 
        
with st.container():
    st.markdown(" ### Discover the complete functionality of the ETF Analyzer App ")



############-closer-#####################

if __name__ == "__main__":
    main()

