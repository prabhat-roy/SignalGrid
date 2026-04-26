{{- define "subscriber-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "subscriber-service.labels" -}}
app.kubernetes.io/name: subscriber-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: subscriber
{{- end -}}

{{- define "subscriber-service.selectorLabels" -}}
app.kubernetes.io/name: subscriber-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
