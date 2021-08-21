baselines
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec baseline: 'Mocketry' with: [
				spec repository: 'github://dionisiydk/Mocketry' ].
		spec package: #HtmlLink with: [
				spec requires: #('Mocketry' ). ]. ]