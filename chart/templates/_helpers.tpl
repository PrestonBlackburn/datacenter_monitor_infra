currently have scattered across the template:
{{/*
Expand the name of the chart.
*/}}
{{- define "sensors.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "sensors.labels" -}}
app: database
release: {{ .Release.Name }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Postgres fullname
*/}}
{{- define "sensors.postgres.fullname" -}}
{{- printf "%s-sensor-postgres" .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end }}