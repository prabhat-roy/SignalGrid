{{- define "alarm-correlation.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "alarm-correlation.labels" -}}
app.kubernetes.io/name: alarm-correlation
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: nms
{{- end -}}

{{- define "alarm-correlation.selectorLabels" -}}
app.kubernetes.io/name: alarm-correlation
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
