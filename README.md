# ELETRÔNICA DIGITAL - SEVEN SEGMENT DISPLAY

Este é o projeto final de Eletrônica Digital.

---

## TABELA-VERDADE

| NUM | BCD_IN[3] | BCD_IN[2] | BCD_IN[1] | BCD_IN[0] | RST | A | B | C | D | E | F | G | DP  |
|:---:|:---------:|:---------:|:---------:|:---------:|:---:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:---:|
| 0   | 0         | 0         | 0         | 0         | 0   | 1 | 1 | 1 | 1 | 1 | 1 | 0 |  1  |
| 1   | 0         | 0         | 0         | 1         | 0   | 0 | 1 | 1 | 0 | 0 | 0 | 0 |  1  |
| 2   | 0         | 0         | 1         | 0         | 0   | 1 | 1 | 0 | 1 | 1 | 0 | 1 |  1  |
| 3   | 0         | 0         | 1         | 1         | 0   | 1 | 1 | 1 | 1 | 0 | 0 | 1 |  1  |
| 4   | 0         | 1         | 0         | 0         | 0   | 0 | 1 | 1 | 0 | 0 | 1 | 1 |  1  |
| 5   | 0         | 1         | 0         | 1         | 0   | 1 | 0 | 1 | 1 | 0 | 1 | 1 |  1  |
| 6   | 0         | 1         | 1         | 0         | 0   | 1 | 0 | 1 | 1 | 1 | 1 | 1 |  1  |
| 7   | 0         | 1         | 1         | 1         | 0   | 1 | 1 | 1 | 0 | 0 | 0 | 0 |  1  |
| 8   | 1         | 0         | 0         | 0         | 0   | 1 | 1 | 1 | 1 | 1 | 1 | 1 |  1  |
| 9   | 1         | 0         | 0         | 1         | 0   | 1 | 1 | 1 | 1 | 0 | 1 | 1 |  1  |
| 0   | X         | X         | X         | X         | 1   | 1 | 1 | 1 | 1 | 1 | 1 | 0 |  1  |

<br />

---

<br />

## EXTRAÇÃO DAS EQUAÇÕES BOOLEANAS USANDO SOMA DE PRODUTOS

<br />

<!-- $$
\begin{aligned}
    <\text{INPUT}> \ = \ & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

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

<div align="center"><img src="https://render.githubusercontent.com/render/math?math=%5Cbegin%7Baligned%7D%0A%20%20%20%20%3C%5Ctext%7BINPUT%7D%3E%20%5C%20%3D%20%5C%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20%5Coverline%7BBCD%5C_IN%5B3%5D%7D%20%5C%20BCD%5C_IN%5B2%5D%20%5C%20BCD%5C_IN%5B1%5D%20%5C%20BCD%5C_IN%5B0%5D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B0%5D%7D%20%2B%20%5C%5C%0A%0A%20%20%20%20%26%20BCD%5C_IN%5B3%5D%20%5C%20%5Coverline%7BBCD%5C_IN%5B2%5D%7D%20%5C%20%5Coverline%7BBCD%5C_IN%5B1%5D%7D%20%5C%20BCD%5C_IN%5B0%5D%0A%5Cend%7Baligned%7D"></div>

<br />

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