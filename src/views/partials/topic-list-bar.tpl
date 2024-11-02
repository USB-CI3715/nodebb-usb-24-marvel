<div class="{{{ if config.theme.stickyToolbar }}}sticky-tools{{{ end }}} mb-3">
    <nav class="topic-list-header d-flex flex-nowrap my-2 p-0 border-0 rounded">
        <!-- Contenido original omitido para brevedad -->
    </nav>
</div>

<!-- Menú de Trimestres -->
<div class="d-flex flex-row p-2 text-bg-light gap-1 border rounded w-100 align-items-center mb-3">
    <nav class="d-flex gap-2">
        <a href="#trimestre-1" class="btn btn-secondary btn-sm" onclick="showTrimester('trimestre-1')">Primer Trimestre</a>
        <a href="#trimestre-2" class="btn btn-secondary btn-sm" onclick="showTrimester('trimestre-2')">Segundo Trimestre</a>
        <a href="#trimestre-3" class="btn btn-secondary btn-sm" onclick="showTrimester('trimestre-3')">Tercer Trimestre</a>
    </nav>
</div>

<!-- Lista de Cursos por Trimestre -->
<div class="mt-3">
    <!-- Primer Trimestre -->
    <section id="trimestre-1" class="mb-4 trimester-section hidden">
        <h5>Primer Trimestre</h5>
        <ul class="list-group">
            <li class="list-group-item" onclick="showCourseInfo('MA1111')">MA1111: Matemáticas I</li>
            <li class="list-group-item" onclick="showCourseInfo('ID1111')">ID1111: Inglés I</li>
            <li class="list-group-item" onclick="showCourseInfo('LLA111')">LLA111: Lenguaje I</li>
            <li class="list-group-item" onclick="showCourseInfo('CSA211')">CSA211: Venezuela ante el Siglo XXI</li>
        </ul>
    </section>

    <!-- Segundo Trimestre -->
    <section id="trimestre-2" class="mb-4 trimester-section hidden">
        <h5>Segundo Trimestre</h5>
        <ul class="list-group">
            <li class="list-group-item" onclick="showCourseInfo('MA1112')">MA1112: Matemáticas II</li>
            <li class="list-group-item" onclick="showCourseInfo('FS1111')">FS1111: Física I</li>
            <li class="list-group-item" onclick="showCourseInfo('ID1112')">ID1112: Inglés II</li>
            <li class="list-group-item" onclick="showCourseInfo('LLA112')">LLA112: Lenguaje II</li>
            <li class="list-group-item" onclick="showCourseInfo('CSA212')">CSA212: Venezuela ante el Siglo XXI</li>
        </ul>
    </section>

    <!-- Tercer Trimestre -->
    <section id="trimestre-3" class="mb-4 trimester-section hidden">
        <h5>Tercer Trimestre</h5>
        <ul class="list-group">
            <li class="list-group-item" onclick="showCourseInfo('MA1113')">MA1113: Matemáticas III</li>
            <li class="list-group-item" onclick="showCourseInfo('FS1112')">FS1112: Física II</li>
            <li class="list-group-item" onclick="showCourseInfo('ID1113')">ID1113: Inglés III</li>
            <li class="list-group-item" onclick="showCourseInfo('LLA113')">LLA113: Lenguaje III</li>
            <li class="list-group-item" onclick="showCourseInfo('CSA213')">CSA213: Venezuela ante el Siglo XXI</li>
        </ul>
    </section>
</div>

<!-- Descripción del Curso -->
<div id="course-info" class="mt-4 hidden">
    <h5>Descripción del Curso</h5>
    <p id="course-description"></p>
</div>

<!-- CSS para ocultar elementos -->
<style>
    .hidden {
        display: none;
    }
</style>

<!-- Script para mostrar solo el trimestre seleccionado y la descripción del curso -->
<script>
    function showTrimester(id) {
        document.querySelectorAll('.trimester-section').forEach(section => {
            section.classList.add('hidden');
        });
        document.getElementById(id).classList.remove('hidden');
        document.getElementById('course-info').classList.add('hidden');
    }




function showCourseInfo(courseCode) {
	const courseDescriptions = {
		'MA1111': 'Matemáticas I: Introducción a conceptos básicos de álgebra y cálculo.',
		'ID1111': 'Inglés I: Curso básico de inglés enfocado en gramática y vocabulario.',
		'LLA111': 'Lenguaje I: Desarrollo de habilidades de comprensión lectora y escritura.',
		'CSA211': 'Venezuela ante el Siglo XXI: Análisis de la situación política y social actual.',
		'MA1112': 'Matemáticas II: Continuación de álgebra y principios de trigonometría.',
		'FS1111': 'Física I: Fundamentos de mecánica y termodinámica.',
		'ID1112': 'Inglés II: Curso intermedio de inglés con énfasis en conversación.',
		'LLA112': 'Lenguaje II: Avance en técnicas de expresión oral y escrita.',
		'CSA212': 'Venezuela ante el Siglo XXI II: Profundización en aspectos económicos.',
		'MA1113': 'Matemáticas III: Introducción al cálculo diferencial e integral.',
		'FS1112': 'Física II: Principios de electricidad y magnetismo.',
		'ID1113': 'Inglés III: Inglés avanzado con enfoque en comprensión auditiva.',
		'LLA113': 'Lenguaje III: Redacción y análisis crítico de textos complejos.',
		'CSA213': 'Venezuela ante el Siglo XXI III: Perspectiva histórica y cultural.'
	};

	document.getElementById('course-description').innerText = courseDescriptions[courseCode];
	document.getElementById('course-info').classList.remove('hidden');
}
</script>
