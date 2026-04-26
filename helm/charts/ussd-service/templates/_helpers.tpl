{{- define "ussd-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ussd-service.labels" -}}
app.kubernetes.io/name: ussd-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: vas
{{- end -}}

{{- define "ussd-service.selectorLabels" -}}
app.kubernetes.io/name: ussd-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
