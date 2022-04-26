FROM bitnami/pytorch
WORKDIR /app

RUN cd ./index_selection_evaluation; ./scripts/install.sh
CMD [ "sh", "-c", "cd ./index_selection_evaluation; python -m selection" ]