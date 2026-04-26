{{- define "subscriber-sso.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "subscriber-sso.labels" -}}
app.kubernetes.io/name: subscriber-sso
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: identity
{{- end -}}

{{- define "subscriber-sso.selectorLabels" -}}
app.kubernetes.io/name: subscriber-sso
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
