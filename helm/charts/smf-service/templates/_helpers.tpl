{{- define "smf-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "smf-service.labels" -}}
app.kubernetes.io/name: smf-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: 5g-core
{{- end -}}

{{- define "smf-service.selectorLabels" -}}
app.kubernetes.io/name: smf-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
