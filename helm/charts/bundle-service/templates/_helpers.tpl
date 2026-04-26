{{- define "bundle-service.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "bundle-service.labels" -}}
app.kubernetes.io/name: bundle-service
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: product
{{- end -}}

{{- define "bundle-service.selectorLabels" -}}
app.kubernetes.io/name: bundle-service
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
