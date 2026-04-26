{{- define "api-key.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "api-key.labels" -}}
app.kubernetes.io/name: api-key
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: identity
{{- end -}}

{{- define "api-key.selectorLabels" -}}
app.kubernetes.io/name: api-key
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
