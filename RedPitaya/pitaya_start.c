/* Prueba de adquisicion en Red Pitaya basada en el ejemplo
 * on trigger signal acquisition. */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
//#include <curses.h>
#include <time.h>
#include "redpitaya/rp.h"
//hola

clock_t clock(void);

int main(int argc, char **argv){

        /* Print error, if rp_Init() function failed */
        if(rp_Init() != RP_OK){
                fprintf(stderr, "Rp api init failed!\n");
        }

	/*Se configura el canal de adquisicion 1 para muestrear a 125MHz*/
        rp_AcqReset();
	/*Se debe especificar que se esta trabajando con el jumper en posicion HV*/
	rp_AcqSetGain(RP_CH_1,RP_HIGH);
        rp_AcqSetSamplingRate(RP_SMP_125M);
        rp_AcqSetTriggerLevel(-0.4); //Trig level is set in Volts
        rp_AcqSetTriggerDelay(30);

	FILE *f = fopen("PitayaFinal.dat", "a");
	//clock_t clock_count;

	if(f == NULL){
        	printf("Error de lectura");
                exit(1);
        }

	uint32_t contador = 0;
	uint32_t contador2 = 0;
	uint32_t total = 0;
	//uint32_t buff_size = 100;
	//float *buff = (float *)malloc(buff_size*sizeof(float));
	//uint32_t *pos1 = (uint32_t *)malloc(sizeof(uint32_t));

	//implementar threads
	printf("Capturando datos...");
	while(1){


		rp_AcqStart();
		//printf("Holas");
		//Capturar hasta que se presione una tecla, modificar esto para equivalente a lago-stop.sh
		//while(1/*!kbhit()*/){
		/*Se indica que el trigger se activara cuando en el canal 1 se tenga un flanco positivo*/
	        rp_AcqSetTriggerSrc(RP_TRIG_SRC_CHA_NE);

		//reservar memoria para el buffer
		uint32_t buff_size=100;
		float *buff = (float *)malloc(buff_size*sizeof(float));
		uint32_t *pos1 = (uint32_t *)malloc(sizeof(uint32_t));

	        rp_acq_trig_state_t state = RP_TRIG_STATE_TRIGGERED;

	        while(1){
	                rp_AcqGetTriggerState(&state);
	                if(state == RP_TRIG_STATE_TRIGGERED){
			//printf("ahiviene el dato");
				//clock_count = clock();
				contador = contador2+0;
				contador2 = rp_AcqGetWritePointerAtTrig(pos1);
				total = contador2 + contador;
				//verificar fin de segundo
				if(total > 124999999){
					//ya paso un segundo
					//la cuenta se resetea
					contador = 0;
					total = contador2+0;
					fprintf(f, "#x h %lu\n", (unsigned long)time(NULL));
				}
	       	        	break;
	                }
	        }

		rp_AcqGetWritePointerAtTrig(pos1);
		/*Al dispararse el trigger se recogen los siguientes 30 eventos ya que este numero de pulsos se
		 *muestrearan al utilizar un PMT*/
		uint32_t start_pos = pos1[0]-10;
		uint32_t end_pos = pos1[0]+30;

		//printf("%d\n", pos1[0]);
		rp_AcqGetDataPosV(RP_CH_1,start_pos,end_pos,buff,&buff_size);
		int i;

		for(i=0; i<buff_size;i++){
			//printf("%f\n",buff[i]);
			fprintf(f, "%f\n", buff[i]);
		}
		fprintf(f, "# t %d\n", total/*clock_count*/);
		//fclose(f);
	        /* Releasing resources */
	        free(buff);
	}
	fclose(f);
	rp_Release();
        return 0;
}
