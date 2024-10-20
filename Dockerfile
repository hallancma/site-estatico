
# Use a imagem do nginx como base
FROM nginx:alpine

# Remova o conteúdo padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copie os arquivos estáticos para o diretório padrão do Nginx
COPY src/ /usr/share/nginx/html/

# Exponha a porta 80
EXPOSE 80

# Inicie o servidor Nginx
CMD ["nginx", "-g", "daemon off;"]
