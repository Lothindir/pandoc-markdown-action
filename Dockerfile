FROM texlive/texlive:latest

COPY ./res /pandoc-readme-action

WORKDIR /pandoc-readme-action

ENTRYPOINT [ "./generate-pdf $1 $2 $3 $4" ]