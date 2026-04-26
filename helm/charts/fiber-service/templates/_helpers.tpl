{{- define "fiber-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "fiber-service.labels" -}}
app.kubernetes.io/name: fiber-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: inventory
{{- end -}}

{{- define "fiber-service.selectorLabels" -}}
app.kubernetes.io/name: fiber-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
