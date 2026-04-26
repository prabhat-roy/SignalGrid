{{- define "support-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "support-service.labels" -}}
app.kubernetes.io/name: support-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: customer
{{- end -}}

{{- define "support-service.selectorLabels" -}}
app.kubernetes.io/name: support-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
