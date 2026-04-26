{{- define "churn-analytics.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "churn-analytics.labels" -}}
app.kubernetes.io/name: churn-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: analytics
{{- end -}}

{{- define "churn-analytics.selectorLabels" -}}
app.kubernetes.io/name: churn-analytics
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
