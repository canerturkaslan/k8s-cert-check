

now=$(date "+%Y-%m-%d-%H:%M.%S")

certs_path=$1
openssl_command="openssl x509 -noout -in"
for crt in "$certs_path"/*.crt; do
	printf "%s:\n \t%s\n \t%s\n\n" "$crt" "$($openssl_command "$crt" -startdate)" "$($openssl_command "$crt" -enddate)" >> /root/"$now"_cert_date.txt
done
