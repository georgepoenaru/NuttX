
pipeline {
  agent none
  stages {

    stage('Build') {

      parallel {

        stage('freedom-k64f') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make freedom-k64f/netnsh'
            sh 'make freedom-k64f/nsh'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('freedom-k66f') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make freedom-k66f/netnsh'
            sh 'make freedom-k66f/nsh'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm3210e-eval') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm3210e-eval/composite'
            sh 'make stm3210e-eval/nsh'
            sh 'make stm3210e-eval/usbmsc'
            sh 'make stm3210e-eval/usbserial'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm3220g-eval') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm3220g-eval/dhcpd'
            sh 'make stm3220g-eval/nsh'
            sh 'make stm3220g-eval/telnetd'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm3240g-eval') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm3240g-eval/dhcpd'
            sh 'make stm3240g-eval/discover'
            sh 'make stm3240g-eval/nsh'
            sh 'make stm3240g-eval/telnetd'
            sh 'make stm3240g-eval/webserver'
            sh 'make stm3240g-eval/xmlrpc'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32butterfly2') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32butterfly2/nsh'
            sh 'make stm32butterfly2/nshnet'
            sh 'make stm32butterfly2/nshusbdev'
            sh 'make stm32butterfly2/nshusbhost'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32f051-discovery') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'


            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32f072-discovery') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'


            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32f103-minimum') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32f103-minimum/apds9960'
            sh 'make stm32f103-minimum/audio_tone'
            sh 'make stm32f103-minimum/buttons'
            sh 'make stm32f103-minimum/hello'
            sh 'make stm32f103-minimum/mcp2515'
            sh 'make stm32f103-minimum/nrf24'
            sh 'make stm32f103-minimum/nsh'
            sh 'make stm32f103-minimum/pwm'
            sh 'make stm32f103-minimum/rfid-rc522'
            sh 'make stm32f103-minimum/rgbled'
            sh 'make stm32f103-minimum/usbnsh'
            sh 'make stm32f103-minimum/userled'
            sh 'make stm32f103-minimum/veml6070'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32f334-disco') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32f334-disco/nsh'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32f3discovery') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32f3discovery/nsh'
            sh 'make stm32f3discovery/usbnsh'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32f411e-disco') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32f411e-disco/nsh'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32f429i-disco') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32f429i-disco/adc'
            sh 'make stm32f429i-disco/extflash'
            sh 'make stm32f429i-disco/highpri'
            sh 'make stm32f429i-disco/lcd'
            sh 'make stm32f429i-disco/nsh'
            sh 'make stm32f429i-disco/usbmsc'
            sh 'make stm32f429i-disco/usbnsh'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32f4discovery') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32f4discovery/audio'
            sh 'make stm32f4discovery/canard'
            sh 'make stm32f4discovery/hciuart'
            sh 'make stm32f4discovery/ipv6'
            sh 'make stm32f4discovery/max31855'
            sh 'make stm32f4discovery/module'
            sh 'make stm32f4discovery/netnsh'
            sh 'make stm32f4discovery/nsh'
            sh 'make stm32f4discovery/pseudoterm'
            sh 'make stm32f4discovery/rgbled'
            sh 'make stm32f4discovery/rndis'
            sh 'make stm32f4discovery/usbmsc'
            sh 'make stm32f4discovery/usbnsh'
            sh 'make stm32f4discovery/xen1210'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32f746g-disco') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32f746g-disco/nsh'
            sh 'make stm32f746g-disco/nsh-ethernet'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32f746-ws') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32f746-ws/nsh'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32f769i-disco') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32f769i-disco/nsh'
            sh 'make stm32f769i-disco/nsh-ethernet'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32l476-mdk') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'


            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32l476vg-disco') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'


            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32l4r9ai-disco') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'


            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32ldiscovery') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'


            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32_tiny') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32_tiny/nsh'
            sh 'make stm32_tiny/usbnsh'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }

        stage('stm32vldiscovery') {

          agent {
            docker {
              image 'px4io/px4-dev-nuttx:2018-11-25'
              args '-e CCACHE_BASEDIR=$WORKSPACE -v ${CCACHE_DIR}:${CCACHE_DIR}:rw -e HOME=$WORKSPACE'
            }
          }
          steps {
            sh 'export'
            sh 'git clean -ff -x -d .'
            sh 'ccache -z'
            sh 'git clone --branch pr-cmake --depth 1 https://github.com/PX4/NuttX-apps.git'

            sh 'make stm32vldiscovery/nsh'

            sh 'ccache -s'
            sh 'git clean -ff -x -d .'
          }
        }



      } // parallel
    } // stage Analysis

  }
  environment {
    CCACHE_DIR = '/tmp/ccache'
    APPSDIR = 'NuttX-apps'
  }
  options {
    buildDiscarder(logRotator(numToKeepStr: '5'))
    timeout(time: 60, unit: 'MINUTES')
  }
}

