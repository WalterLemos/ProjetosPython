import sys
from cx_Freeze import setup, Executable

base = None

build_exe_options ={"packes": ["os"],"packes":["pyautogui"],"includes": ["openpyxl"]}

if sys.platform == "win32":
    base = "Win32GUI"  # Use "Win32GUI" para aplicativos GUI

executables = [
    Executable("API_CDA.py", base=base)
]

setup(
    name="Consultar CDA",
    version="1.0",
    description="Consulta CDA's",
    executables=executables
)

