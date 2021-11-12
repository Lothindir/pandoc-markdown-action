FROM texlive/texlive:latest

COPY ./res /pandoc-readme-action

WORKDIR /pandoc-readme-action

ENTRYPOINT [ "./generate-pdf -e tex" ]