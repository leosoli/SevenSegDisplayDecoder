# ELETRÔNICA DIGITAL - SEVEN SEGMENT DISPLAY

Este é o projeto final de Eletrônica Digital.

<br>

- [ELETRÔNICA DIGITAL - SEVEN SEGMENT DISPLAY](#eletrônica-digital---seven-segment-display)
  - [TABELA-VERDADE](#tabela-verdade)
  - [EXTRAÇÃO DAS EQUAÇÕES BOOLEANAS USANDO SOMA DE PRODUTOS](#extração-das-equações-booleanas-usando-soma-de-produtos)
    - [OUTPUT A](#output-a)
    - [OUTPUT B](#output-b)
    - [OUTPUT C](#output-c)
    - [OUTPUT D](#output-d)
    - [OUTPUT E](#output-e)
    - [OUTPUT F](#output-f)
    - [OUTPUT G](#output-g)
  - [SIMPLIFICAÇÃO USANDO MAPAS K](#simplificação-usando-mapas-k)
    - [OUTPUT A](#output-a-1)
    - [OUTPUT B](#output-b-1)
    - [OUTPUT C](#output-c-1)
    - [OUTPUT D](#output-d-1)
    - [OUTPUT E](#output-e-1)
    - [OUTPUT F](#output-f-1)
    - [OUTPUT G](#output-g-1)
  - [IMPLEMENTAÇÃO E TESTE DO CIRCUITO USANDO SIMULADOR DO TIPO ARRASTAR E SOLTAR (EX.EASY EDA) OU USANDO VHDL (EX. EDA PLAYGROUND)](#implementação-e-teste-do-circuito-usando-simulador-do-tipo-arrastar-e-soltar-exeasy-eda-ou-usando-vhdl-ex-eda-playground)

<br>

---

<br>

## TABELA-VERDADE

|  NUM  | BCD_IN[3] | BCD_IN[2] | BCD_IN[1] | BCD_IN[0] |  RST  |   A   |   B   |   C   |   D   |   E   |   F   |   G   |  DP   |
| :---: | :-------: | :-------: | :-------: | :-------: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|   0   |     0     |     0     |     0     |     0     |   0   |   1   |   1   |   1   |   1   |   1   |   1   |   0   |   1   |
|   1   |     0     |     0     |     0     |     1     |   0   |   0   |   1   |   1   |   0   |   0   |   0   |   0   |   1   |
|   2   |     0     |     0     |     1     |     0     |   0   |   1   |   1   |   0   |   1   |   1   |   0   |   1   |   1   |
|   3   |     0     |     0     |     1     |     1     |   0   |   1   |   1   |   1   |   1   |   0   |   0   |   1   |   1   |
|   4   |     0     |     1     |     0     |     0     |   0   |   0   |   1   |   1   |   0   |   0   |   1   |   1   |   1   |
|   5   |     0     |     1     |     0     |     1     |   0   |   1   |   0   |   1   |   1   |   0   |   1   |   1   |   1   |
|   6   |     0     |     1     |     1     |     0     |   0   |   1   |   0   |   1   |   1   |   1   |   1   |   1   |   1   |
|   7   |     0     |     1     |     1     |     1     |   0   |   1   |   1   |   1   |   0   |   0   |   0   |   0   |   1   |
|   8   |     1     |     0     |     0     |     0     |   0   |   1   |   1   |   1   |   1   |   1   |   1   |   1   |   1   |
|   9   |     1     |     0     |     0     |     1     |   0   |   1   |   1   |   1   |   1   |   0   |   1   |   1   |   1   |
|   0   |     X     |     X     |     X     |     X     |   1   |   1   |   1   |   1   |   1   |   1   |   1   |   0   |   1   |

<br />

---

<br />

## EXTRAÇÃO DAS EQUAÇÕES BOOLEANAS USANDO SOMA DE PRODUTOS

<br />

<!-- $$
\begin{aligned}
    <\text{OUTPUT}> \ = \ & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ BCD\_IN[0] + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0]
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20%3C%5Ctext%7BOUTPUT%7D%3E%20%5C%20%3D%20%5C%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT A

<!-- $$
\begin{aligned}
    A \ = \ & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ BCD\_IN[0] + \\

    

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ BCD\_IN[0] + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0]
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20A%20%5C%20%3D%20%5C%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT B

<!-- $$
\begin{aligned}
    B \ = \ & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ BCD\_IN[0] + \\

    

    

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ BCD\_IN[0] + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0]
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20B%20%5C%20%3D%20%5C%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT C

<!-- $$
\begin{aligned}
    C \ = \ & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \\

    

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ BCD\_IN[0] + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0]
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20C%20%5C%20%3D%20%5C%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT D

<!-- $$
\begin{aligned}
    D \ = \ & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ BCD\_IN[0] + \\

    

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0]
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20D%20%5C%20%3D%20%5C%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT E

<!-- $$
\begin{aligned}
    E \ = \ & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    

    

    

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]}


\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20E%20%5C%20%3D%20%5C%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%0A%0A%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT F

<!-- $$
\begin{aligned}
    F \ = \ & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    

    

    

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0]
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20F%20%5C%20%3D%20%5C%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT G

<!-- $$
\begin{aligned}
    G \ = \ 

    

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0]
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20G%20%5C%20%3D%20%5C%20%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%0A%5Cend%7Baligned%7D"></div>

<br />

---

<br />

## SIMPLIFICAÇÃO USANDO MAPAS K

<br />

### OUTPUT A

<!-- $$
\begin{aligned}
    A & = BCD\_IN[1] + BCD\_IN[2] BCD\_IN[0] + BCD\_IN[3] + \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} \\
    & = BCD\_IN[1] + BCD\_IN[2] BCD\_IN[0] + BCD\_IN[3] + \overline{BCD\_IN[2]} \ \overline{BCD\_IN[0]} \\
    & = \overline{RST} \ \left( BCD\_IN[1] + BCD\_IN[3] + \left( BCD\_IN[2] \ \bigodot \ BCD\_IN[0] \right) \right)
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20A%20%26%20%3D%20BCD%5C_IN%5B1%5D%20%2B%20BCD%5C_IN%5B2%5D%20BCD%5C_IN%5B0%5D%20%2B%20BCD%5C_IN%5B3%5D%20%2B%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5C%5C%0A%20%20%20%20%26%20%3D%20BCD%5C_IN%5B1%5D%20%2B%20BCD%5C_IN%5B2%5D%20BCD%5C_IN%5B0%5D%20%2B%20BCD%5C_IN%5B3%5D%20%2B%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5C%5C%0A%20%20%20%20%26%20%3D%20%5Coverline%7BRST%7D%20%5C%20%5Cleft(%20BCD%5C_IN%5B1%5D%20%2B%20BCD%5C_IN%5B3%5D%20%2B%20%5Cleft(%20BCD%5C_IN%5B2%5D%20%5C%20%5Cbigodot%20%5C%20BCD%5C_IN%5B0%5D%20%5Cright)%20%5Cright)%0A%5Cend%7Baligned%7D"></div>


<br />

### OUTPUT B

<!-- $$
\begin{aligned}
    B & = \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} + BCD\_IN[1] BCD\_IN[0] + BCD\_IN[3] + \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} \\
    & = \overline{RST} \ \left( \overline{BCD\_IN[2]} + BCD\_IN[3] + \left( BCD\_IN[1] \ \bigodot \ BCD\_IN[0] \right) \right)
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20B%20%26%20%3D%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%2B%20BCD%5C_IN%5B1%5D%20BCD%5C_IN%5B0%5D%20%2B%20BCD%5C_IN%5B3%5D%20%2B%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5C%5C%0A%20%20%20%20%26%20%3D%20%5Coverline%7BRST%7D%20%5C%20%5Cleft(%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%2B%20BCD%5C_IN%5B3%5D%20%2B%20%5Cleft(%20BCD%5C_IN%5B1%5D%20%5C%20%5Cbigodot%20%5C%20BCD%5C_IN%5B0%5D%20%5Cright)%20%5Cright)%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT C

<!-- $$
\begin{aligned}
    C & = BCD\_IN[2] + BCD\_IN[0] + BCD\_IN[3] + \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} \\
    & = \overline{RST} \ \left( BCD\_IN[3] + BCD\_IN[2] + \overline{BCD\_IN[1]} + BCD\_IN[0] \right)
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20C%20%26%20%3D%20BCD%5C_IN%5B2%5D%20%2B%20BCD%5C_IN%5B0%5D%20%2B%20BCD%5C_IN%5B3%5D%20%2B%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5C%5C%0A%20%20%20%20%26%20%3D%20%5Coverline%7BRST%7D%20%5C%20%5Cleft(%20BCD%5C_IN%5B3%5D%20%2B%20BCD%5C_IN%5B2%5D%20%2B%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%2B%20BCD%5C_IN%5B0%5D%20%5Cright)%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT D

<!-- $$
\begin{aligned}
    D & = \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] + BCD\_IN[1] \ \overline{BCD\_IN[0]} + BCD\_IN[3] \\
    & \qquad \qquad + BCD\_IN[2] \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} \\
    & = BCD\_IN[1] \left( \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} + \overline{BCD\_IN[0]} \right) + BCD\_IN[3] \\
    & \qquad \qquad + \overline{BCD\_IN[1]} \left( BCD\_IN[2] \ BCD\_IN[0] + \overline{BCD\_IN[2]} \ \overline{BCD\_IN[0]} \right) \\
    & = \overline{RST} \ \left( BCD\_IN[1] \left( \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} + \overline{BCD\_IN[0]} \right) + BCD\_IN[3] \right. \\
    & \qquad \qquad + \left. \overline{BCD\_IN[1]} \left( BCD\_IN[2] \ \bigodot \ BCD\_IN[0] \right) \right)
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20D%20%26%20%3D%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%2B%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20BCD%5C_IN%5B3%5D%20%5C%5C%0A%20%20%20%20%26%20%5Cqquad%20%5Cqquad%20%2B%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5C%5C%0A%20%20%20%20%26%20%3D%20BCD%5C_IN%5B1%5D%20%5Cleft(%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%2B%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5Cright)%20%2B%20BCD%5C_IN%5B3%5D%20%5C%5C%0A%20%20%20%20%26%20%5Cqquad%20%5Cqquad%20%2B%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5Cleft(%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5Cright)%20%5C%5C%0A%20%20%20%20%26%20%3D%20%5Coverline%7BRST%7D%20%5C%20%5Cleft(%20BCD%5C_IN%5B1%5D%20%5Cleft(%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%2B%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5Cright)%20%2B%20BCD%5C_IN%5B3%5D%20%5Cright.%20%5C%5C%0A%20%20%20%20%26%20%5Cqquad%20%5Cqquad%20%2B%20%5Cleft.%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5Cleft(%20BCD%5C_IN%5B2%5D%20%5C%20%5Cbigodot%20%5C%20BCD%5C_IN%5B0%5D%20%5Cright)%20%5Cright)%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT E

<!-- $$
\begin{aligned}
    E & = BCD\_IN[1] \ \overline{BCD\_IN[0]} + BCD\_IN[3] \ BCD\_IN[1] + BCD\_IN[3] \ BCD\_IN[2] \\
    & \qquad \qquad + \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} \\
    & = \overline{BCD\_IN[0]} \left( BCD\_IN[1] + \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \right) + BCD\_IN[3] \ BCD\_IN[1] \\
    & \qquad \qquad + BCD\_IN[3] \ BCD\_IN[2] \\
    & = \overline{RST} \ \left( \overline{BCD\_IN[0]} \left( BCD\_IN[1] + \overline{BCD\_IN[2]} \right) + BCD\_IN[3] \left( BCD\_IN[1] + BCD\_IN[2] \right) \right)
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20E%20%26%20%3D%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20BCD%5C_IN%5B3%5D%20%5C%20BCD%5C_IN%5B1%5D%20%2B%20BCD%5C_IN%5B3%5D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%5C%0A%20%20%20%20%26%20%5Cqquad%20%5Cqquad%20%2B%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5C%5C%0A%20%20%20%20%26%20%3D%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5Cleft(%20BCD%5C_IN%5B1%5D%20%2B%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5Cright)%20%2B%20BCD%5C_IN%5B3%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%5C%0A%20%20%20%20%26%20%5Cqquad%20%5Cqquad%20%2B%20BCD%5C_IN%5B3%5D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%5C%0A%20%20%20%20%26%20%3D%20%5Coverline%7BRST%7D%20%5C%20%5Cleft(%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5Cleft(%20BCD%5C_IN%5B1%5D%20%2B%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5Cright)%20%2B%20BCD%5C_IN%5B3%5D%20%5Cleft(%20BCD%5C_IN%5B1%5D%20%2B%20BCD%5C_IN%5B2%5D%20%5Cright)%20%5Cright)%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT F

<!-- $$
\begin{aligned}
    F & = BCD\_IN[2] \ \overline{BCD\_IN[0]} + BCD\_IN[3] + BCD\_IN[2] \ \overline{BCD\_IN[1]} + \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} \\
    & = \overline{RST} \ \left( BCD\_IN[2] \ \left( \overline{BCD\_IN[0]} + \overline{BCD\_IN[1]} \right) + BCD\_IN[3] + \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} \right)
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20F%20%26%20%3D%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20BCD%5C_IN%5B3%5D%20%2B%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%2B%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5C%5C%0A%20%20%20%20%26%20%3D%20%5Coverline%7BRST%7D%20%5C%20%5Cleft(%20BCD%5C_IN%5B2%5D%20%5C%20%5Cleft(%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5Cright)%20%2B%20BCD%5C_IN%5B3%5D%20%2B%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%5Cright)%0A%5Cend%7Baligned%7D"></div>

<br />

### OUTPUT G

<!-- $$
\begin{aligned}
    G & = BCD\_IN[1] \ \overline{BCD\_IN[0]} + \overline{BCD\_IN[2]} \ BCD\_IN[1] + BCD\_IN[3] + BCD\_IN[2] \ \overline{BCD\_IN[1]} \\
    & = \overline{RST} \ \left( BCD\_IN[1] \ \overline{BCD\_IN[0]} + BCD\_IN[3] + \left( BCD\_IN[2] \ \bigoplus \ BCD\_IN[1] \right) \right)
\end{aligned}
$$ --> 

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20G%20%26%20%3D%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%2B%20BCD%5C_IN%5B3%5D%20%2B%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%5C%0A%20%20%20%20%26%20%3D%20%5Coverline%7BRST%7D%20%5C%20%5Cleft(%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20BCD%5C_IN%5B3%5D%20%2B%20%5Cleft(%20BCD%5C_IN%5B2%5D%20%5C%20%5Cbigoplus%20%5C%20BCD%5C_IN%5B1%5D%20%5Cright)%20%5Cright)%0A%5Cend%7Baligned%7D"></div>


<br>

---

<br>

## IMPLEMENTAÇÃO E TESTE DO CIRCUITO USANDO SIMULADOR DO TIPO ARRASTAR E SOLTAR (EX.EASY EDA) OU USANDO VHDL (EX. EDA PLAYGROUND)

<br>

<div align="center">

| [<img src="https://github.com/leosoli/ED-SevenSegDisplay/blob/main/Imagens/simulation_behavioral.png?raw=true" alt="KingCountyInWA"/>](https://github.com/leosoli/ED-SevenSegDisplay/blob/main/Imagens/simulation_behavioral.png) |
|:---:|
| Imagem do resultado da simulação da arquitetura **behavioral** |

</div>