{{- define "tap-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "tap-service.labels" -}}
app.kubernetes.io/name: tap-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: roaming
{{- end -}}

{{- define "tap-service.selectorLabels" -}}
app.kubernetes.io/name: tap-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
