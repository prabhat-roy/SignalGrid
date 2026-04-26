{{- define "dunning-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "dunning-service.labels" -}}
app.kubernetes.io/name: dunning-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: billing
{{- end -}}

{{- define "dunning-service.selectorLabels" -}}
app.kubernetes.io/name: dunning-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
