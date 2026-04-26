{{- define "revenue-assurance.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "revenue-assurance.labels" -}}
app.kubernetes.io/name: revenue-assurance
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: fraud
{{- end -}}

{{- define "revenue-assurance.selectorLabels" -}}
app.kubernetes.io/name: revenue-assurance
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
