import pandas as pd

def getDataframeSize(players: pd.DataFrame) -> List[int]:
    rows = players.shape[0]  
    columns = players.shape[1]  
    # Return the result as an array
    return [rows, columns]