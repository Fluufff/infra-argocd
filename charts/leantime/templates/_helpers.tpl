{{/*
Common labels
*/}}
{{- define "leantime.commonLabels" -}}
helm.sh/chart: {{ .Chart.Name }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/name: leantime
{{- end }}

{{/*
resources
*/}}
{{- define "leantime.resources" -}}
limits:
  memory: {{ .memory }}
requests:
  cpu: {{ .cpu }}
  memory: {{ .memory }}
{{- end }}
