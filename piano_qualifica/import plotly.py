import plotly.graph_objects as go

x = ['AP', 'PTB', 'POC']
y = [0, 0, 100]

fig = go.Figure(data=go.Scatter(x=x, y=y, name='versioni browser supportati'))
fig.add_scatter(x=[x[0], x[-1]], y=[100, 100], line=dict(dash='dash'), name='valore ottimale')
fig.add_scatter(x=[x[0], x[-1]], y=[80, 80], line=dict(dash='dash'), name='valore accettabile')
fig.update_layout(yaxis_range=[-2, 102])
fig.show()