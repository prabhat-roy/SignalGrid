{{- define "number-portability.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "number-portability.labels" -}}
app.kubernetes.io/name: number-portability
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: regulatory
{{- end -}}

{{- define "number-portability.selectorLabels" -}}
app.kubernetes.io/name: number-portability
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
