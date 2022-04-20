: "${PARTNO:=$1}" "${VENDOR:=$2}"
cat <<-EOF
## мини-печь StarWind
:::::::::::::: {.columns}
::: {.column }
* вендор: ${VENDOR}
* модель: ${MODEL}
* артикул: ${PARTNO} 
* цена: ${PRICE}
:::
::: {.column }

![фото товара](${PARTNO}.png)
:::
::::::::::::::
EOF
