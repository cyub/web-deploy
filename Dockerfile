FROM node:9

WORKDIR /app

RUN  npm install -g hexo-cli
RUN hexo init /app
RUN git clone https://github.com/ppoffice/hexo-theme-icarus.git themes/icarus

RUN rm -rf /app/source/_posts
RUN git clone https://github.com/cyub/blog.git /app/source/_posts
RUN rm -rf /app/source/_posts/README.md

expose 4000

CMD hexo server -p 4000