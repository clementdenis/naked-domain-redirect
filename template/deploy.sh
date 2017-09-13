#!/usr/bin/env bash
gcloud app deploy --project ${projectId}
gcloud app deploy --project ${projectId} dispatch.yaml