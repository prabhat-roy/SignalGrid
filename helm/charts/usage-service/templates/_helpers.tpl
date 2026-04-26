{{- define "usage-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "usage-service.labels" -}}
app.kubernetes.io/name: usage-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: customer
{{- end -}}

{{- define "usage-service.selectorLabels" -}}
app.kubernetes.io/name: usage-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
