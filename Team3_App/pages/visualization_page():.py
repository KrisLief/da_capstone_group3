import streamlit as st
from streamlit_option_menu import option_menu

import pandas as pd
import plotly
import plotly.express as px
import plotly.graph_objects as go
from streamlit_plotly_events import plotly_events
import os



# Define filter-related session state

#/Users/kk/Documents/capstone kris_klewe/app_loader.py

# Load data
df = pd.read_csv("app_df1.csv")
buraks_list49 = pd.read_csv("buraks_list49.csv")  


color_scales = {
    "esg_rating": "Plot3",
    "asset_region": "Prism",
    "investment_strategy": "PiYG",
    "asset_class": "Bold",
    "subsegment": "Viridis",
    }



# Streamlit UI
st.title("Discover the ETF Universe")



if  st.button("click to start"):
    st.write('''Welcome to the ETF Universe! This app allows you to explore the 
             ETF landscape by visualizing the relationships between different ETFs.''')

    # Scatter plot
    fig = px.scatter_3d(
        df,
        x='UMAP1', y='UMAP2', z='UMAP3',
        opacity=0.7,
        color=['selected_feature'],
        color_continuous_scale=color_scales['selected_feature'],
        hover_data=['ticker', 'esg_rating', 'dividend_yield', 'quality_score', 'carbon_intensity']
    )
    fig.update_traces(marker=dict(size=2))
    fig.update_layout(
    scene=dict(aspectmode='cube'),  # Set aspect ratio to 'cube'
    scene_camera=dict(x=1.5, y=1.5, z=1.5),  # Set initial camera position
    )

    st.plotly_chart(fig)  # Display the plot
    st.write(fig)   

###############FILTER-FUNKTION#####################


