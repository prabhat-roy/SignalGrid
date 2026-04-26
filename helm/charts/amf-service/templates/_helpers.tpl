{{- define "amf-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "amf-service.labels" -}}
app.kubernetes.io/name: amf-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: 5g-core
{{- end -}}

{{- define "amf-service.selectorLabels" -}}
app.kubernetes.io/name: amf-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
