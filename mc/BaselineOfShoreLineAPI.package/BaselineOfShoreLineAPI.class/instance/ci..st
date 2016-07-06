dependencies
ci: spec

	"spec project: 'CI' with: [
		spec
			className: #ConfigurationOfCI;
			versionString: #stable;
			repository: 'http://smalltalkhub.com/mc/Pharo/ci/main/' ]"
	spec project: 'CI' with: [
		spec
			className: 'ConfigurationOfCI';
			repository: 'github://pharo-project/pharo-ci/mc' ]