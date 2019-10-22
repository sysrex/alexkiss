<ul class="vulnerabilities">
  {{ $url := .Get "url" }}
  {{ range getJSON $url }}
    {{ $p := . }}
    <li>
      {{ $p.ID }}
      {{ $p.Title  }}
    </li>
    {{ end }}
</ul>
