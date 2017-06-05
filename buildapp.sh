if [[ -e /home/lenovo/prod ]]; then
   cd /home/lenovo/prod/manageiq
   docker run --name lenovo_prod --privileged -d -p 8443:443 lenovo_miq_prod
fi
