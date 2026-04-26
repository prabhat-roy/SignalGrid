{{- define "bypass-detection.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "bypass-detection.labels" -}}
app.kubernetes.io/name: bypass-detection
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: fraud
{{- end -}}

{{- define "bypass-detection.selectorLabels" -}}
app.kubernetes.io/name: bypass-detection
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
