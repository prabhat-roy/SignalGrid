{{- define "sms-gateway.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "sms-gateway.labels" -}}
app.kubernetes.io/name: sms-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: vas
{{- end -}}

{{- define "sms-gateway.selectorLabels" -}}
app.kubernetes.io/name: sms-gateway
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
