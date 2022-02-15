curl -Ls https://www.dolarhoy.com | grep -oP '(?<=\$)[0-9]+' | head -2 > preciocv.txt
sed -i '1 s/./Compra: \$&/' preciocv.txt
sed -i '2 s/./Venta: \$&/' preciocv.txt
echo 'Precio dolar Blue:'
cat preciocv.txt
