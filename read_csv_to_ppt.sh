IFS=';'
while read PARTNO VENDOR MODEL PRICE CATEGORY
do  
	[ "$MODEL" = "model" ] && continue
	cat <<-EOF
	## ${MODEL}
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
done < wb.csv >slides.md

