{{- define "sim-swap.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "sim-swap.labels" -}}
app.kubernetes.io/name: sim-swap
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: fraud
{{- end -}}

{{- define "sim-swap.selectorLabels" -}}
app.kubernetes.io/name: sim-swap
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
