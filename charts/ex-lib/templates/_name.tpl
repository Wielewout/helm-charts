{{/*
Expand the name of the chart.
*/}}
{{- define "ex-lib.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}
