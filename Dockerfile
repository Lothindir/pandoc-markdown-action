FROM alpine:latest

RUN apk update && apk add --no-cache texlive-latex-extra

RUN tlmgr install adjustbox babel-german background bidi collectbox csquotes everypage filehook footmisc footnotebackref framed fvextra letltxmacro ly1 mdframed mweights needspace pagecolor sourcecodepro sourcesanspro titling ucharcat ulem unicode-math upquote xecjk xurl zref

COPY ./res /pandoc-readme-action

WORKDIR /pandoc-readme-action

ENTRYPOINT [ "./pandoc-generate-styles" ]