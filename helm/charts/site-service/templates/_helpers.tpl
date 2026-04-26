{{- define "site-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "site-service.labels" -}}
app.kubernetes.io/name: site-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: inventory
{{- end -}}

{{- define "site-service.selectorLabels" -}}
app.kubernetes.io/name: site-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
