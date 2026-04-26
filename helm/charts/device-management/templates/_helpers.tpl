{{- define "device-management.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "device-management.labels" -}}
app.kubernetes.io/name: device-management
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: iot
{{- end -}}

{{- define "device-management.selectorLabels" -}}
app.kubernetes.io/name: device-management
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
