{{- define "elasticsearchBindingName" -}}
  {{- .Values.elasticsearch.binding.name -}}
{{- end -}}

{{- define "inventoryServiceUrl" -}}
  {{- if .Values.inventory.service.url -}}
    {{ .Values.inventory.service.url }}
  {{- else -}}
    {{/* assume one is installed with release */}}
    {{- printf "http://%s-inventory:8080" .Release.Name -}}
  {{- end }}
{{- end -}}
