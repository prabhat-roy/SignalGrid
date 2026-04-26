{{- define "noc-bff.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "noc-bff.labels" -}}
app.kubernetes.io/name: noc-bff
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: platform
{{- end -}}

{{- define "noc-bff.selectorLabels" -}}
app.kubernetes.io/name: noc-bff
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
