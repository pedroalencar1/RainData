## Program RainDatav0.1

The set of programs is meant to organize Funceme's matrix-like daily rain data as a vector.

The steps are:
1. Download the wanted file in Funceme's website <http://www.funceme.br/?page_id=2694> or <http://www.funceme.br/produtos/script/chuvas/Download_de_series_historicas/DownloadChuvasPublico.php>

2. Import the data to Excel, delete the first 4 columns (Município, Posto, Lat, Long) and the first line (header)
 
3. Identify the DEFAUT value (a numerical value used in months with less than 31 days, usually negative integers)
 
4. Copy the data into a new .txt file; be sure to have no separators such as comma or semicolon (the separation has to be tabulation only!)
 
5. Execute RainData.f95
 
6. Bob's your uncle

If you want to have event-days only, execute RainDataClean.95
The input file is the output of the previous program
Easy peasy :D
