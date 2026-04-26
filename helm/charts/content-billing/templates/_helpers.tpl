{{- define "content-billing.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "content-billing.labels" -}}
app.kubernetes.io/name: content-billing
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: vas
{{- end -}}

{{- define "content-billing.selectorLabels" -}}
app.kubernetes.io/name: content-billing
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
