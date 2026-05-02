# Serie di Fourier 
## Introduzione 
Come noto è possibile approssimare una **funzione periodica** mediante una somma di funzioni armoniche: tale rappresentazione prende il nome di _Serie di Fourier_ e risulta di estrema utilità nello studio della risposta dinamica dei sistemi
## Forma trigonometrica
Nel codice è stata implementata la forma trigonometrica della serie di Fourier, con riferimento al testo di _Fasana - Marchesiello | Meccanica delle vibrazioni_. Sia fata una funzione $$f(t)$$ periodica di periodo $$T_0$$ e si indichi con $$\Omega_0 = 2\pi/T_0$$ la _pulsazione fondamentale_ o _prima armonica_. La scomposizione della funzione in serie di Fourier è 
$$
f(t) = a_0 + \sum_{n=1}^{\infty} \left( a_n \cos(n\Omega_0 t) + b_n \sin(n\Omega_0 t) \right)
$$
