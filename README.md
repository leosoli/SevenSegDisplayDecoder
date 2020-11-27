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

$$
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
$$

<br />

$$
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
$$

<br />

$$
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
$$

<br />

$$
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
$$

<br />

$$
\begin{aligned}
    D \ = \ & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ BCD\_IN[0] + \\

    

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0]
\end{aligned}
$$

<br />

$$
\begin{aligned}
    E \ = \ & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    

    & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    

    

    

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]}


\end{aligned}
$$

<br />

$$
\begin{aligned}
    F \ = \ & \overline{BCD\_IN[3]} \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    

    

    

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ \overline{BCD\_IN[1]} \ BCD\_IN[0] + \\

    & \overline{BCD\_IN[3]} \ BCD\_IN[2] \ BCD\_IN[1] \ \overline{BCD\_IN[0]} + \\

    

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ \overline{BCD\_IN[0]} + \\

    & BCD\_IN[3] \ \overline{BCD\_IN[2]} \ \overline{BCD\_IN[1]} \ BCD\_IN[0]
\end{aligned}
$$

<br />

$$
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
$$

<br />

