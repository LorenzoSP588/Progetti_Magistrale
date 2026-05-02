# Serie di Fourier 
## Introduzione 
Come noto è possibile approssimare una **funzione periodica** mediante una somma di funzioni armoniche: tale rappresentazione prende il nome di _Serie di Fourier_ e risulta di estrema utilità nello studio della risposta dinamica dei sistemi
## Forma trigonometrica
Nel codice è stata implementata la forma trigonometrica della serie di Fourier, con riferimento al testo di _Fasana - Marchesiello | Meccanica delle vibrazioni_. Sia data una funzione $f(t)$ periodica di periodo $T_0$ e si indichi con $\Omega_0 = 2\pi/T_0$ la _pulsazione fondamentale_ o _prima armonica_. La scomposizione della funzione in serie di Fourier è:

$$
f(t) = a_0 + \sum_{n=1}^{\infty} \left( a_n \cos(n\Omega_0 t) + b_n \sin(n\Omega_0 t) \right)
$$

Dove 
### Coefficienti della serie
I coefficienti della forma trigonometrica si calcolano come segue:

**Termine costante (valore medio):**

$$
a_0 = \frac{1}{T_0} \int_{0}^{T_0} f(t) \, dt
$$

**Coefficienti delle armoniche in fase (coseni):**

$$
a_n = \frac{2}{T_0} \int_{0}^{T_0} f(t) \cos(n\Omega_0 t) \, dt \quad \text{con } n=1,2,3,...
$$

**Coefficienti delle armoniche in quadratura (seni):**

$$
b_n = \frac{2}{T_0} \int_{0}^{T_0} f(t) \sin(n\Omega_0 t) \, dt \quad \text{con } n=1,2,3,...
$$
