{{- define "pcf-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "pcf-service.labels" -}}
app.kubernetes.io/name: pcf-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: 5g-core
{{- end -}}

{{- define "pcf-service.selectorLabels" -}}
app.kubernetes.io/name: pcf-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
