# Esercizio 2

## Creare le seguenti tabelle:

![Tabelle](https://github.com/PugliaSOS/sql-exercises/raw/master/ex2/img.png)

## Inserire i dati:

  - Prodotto

    id_prodotto | nome | categoria | prezzo
    ------------|------|-----------|-------
    1 | maglione | abbigliamento | 22.44
    2 | scarpe | abbigliamento | 50.40
    3 | cinta | abbigliamento | 10.44
    4 | decoder | elettronica | 100.00
    5 | stampante | elettronica | 80.55
    6 | monitor | elettronica | 200.10

  - Negozio

    id_negozio | nome
    -----------|-----
    1 | Gigastore
    2 | Fitness Boutique

  - Vendita

    prodotto | negozio | data | quantità
    ---------|---------|------|---------
    1 | 1 | 1/1/2008 | 1
    1 | 2 | 1/1/2008    | 2
    2 | 1 | 1/1/2008    | 5
    2 | 2 | 5/2/2008    | 1
    2 | 2 | 4/2/2008    | 10
    3 | 1 | 6/2/2008    | 5
    3 | 2 | 6/3/2008    | 1
    3 | 1 | 10/4/2008   | 10
    4 | 2 | 4/10/2008   | 20
    4 | 2 | 10/11/2008  | 50
    4 | 2 | 11/12/2008  | 1

## Costruire le seguenti interrogazioni:

  - I nomi e i prezzi dei prodotti della categoria *abbigliamento*
  - I nomi dei prodotti venduti, con i relativi nomi dei negozi in cui sono
    stati venduti
  - Il totale guadagnato da ogni negozio
  - I nomi dei prodotti rimasti invenduti
  - Il nome del prodotto più venduto del mese di febbraio 2008
