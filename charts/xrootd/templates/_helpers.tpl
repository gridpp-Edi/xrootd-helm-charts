{{/*
Expand the name of the chart.
*/}}
{{- define "xrootd.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Create default labels
*/}}
{{- define "xrootd.labels" -}}
helm.sh/chart: {{ include "xrootd.chart" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Expand the name of the chart or use `.Values.nameOverride`
*/}}
{{- define "xrootd.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default chart name
*/}}
{{- define "xrootd.chart" -}}
{{- .Chart.Name }}-{{ .Chart.Version }}
{{- end }}
