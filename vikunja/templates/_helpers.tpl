{{/*
Common labels
*/}}
{{- define "vikunja.commonLabels" -}}
helm.sh/chart: {{ .Chart.Name }}
{{ include "application.labels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/name: vikunja
{{- end }}

{{/*
resources
*/}}
{{- define "vikunja.resources" -}}
limits:
  memory: {{ .memory }}
requests:
  cpu: {{ .cpu }}
  memory: {{ .memory }}
{{- end }}
