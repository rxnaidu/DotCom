import pyodbc


class AccessDb:




    def __init__(self):
        self.speed = 0
        self.odometer = 0
        self.time = 0

    def connectdb(self):
        print("hari")
        # self.query = sqlquery
        # conn_str = (
        #     r'DRIVER={Microsoft Access Driver (*.mdb, *.accdb)};'
        #     r'DBQ=C:\Automation\TestData.mdb;'
        # )
        # cnxn = pyodbc.connect(conn_str)
        # crsr = cnxn.cursor()
        # # sql = 'select Region from DPI_Residential_Deactivate_ServiceOrders where Region="MS"'
        # crsr.execute(query)
        # print("Hari")
        # for row in crsr:
        #     coldata = getattr(self.Region)
        #     print(coldata)

    connectdb()