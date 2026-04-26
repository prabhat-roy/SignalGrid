{{- define "fra-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "fra-service.labels" -}}
app.kubernetes.io/name: fra-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: fraud
{{- end -}}

{{- define "fra-service.selectorLabels" -}}
app.kubernetes.io/name: fra-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
