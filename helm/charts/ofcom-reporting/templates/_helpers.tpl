{{- define "ofcom-reporting.fullname" -}}
{{- printf "%s-%s" .Release.Name .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ofcom-reporting.labels" -}}
app.kubernetes.io/name: ofcom-reporting
app.kubernetes.io/instance: {{ .Release.Name }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/part-of: signalgrid
signalgrid.io/domain: regulatory
{{- end -}}

{{- define "ofcom-reporting.selectorLabels" -}}
app.kubernetes.io/name: ofcom-reporting
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
