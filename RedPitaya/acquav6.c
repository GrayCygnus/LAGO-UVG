/* Prueba de adquisicion en Red Pitaya basada en el ejemplo
 * on trigger signal acquisition. */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include "redpitaya/rp.h"

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
        rp_AcqSetTriggerLevel(-0.05); //Trig level is set in Volts
        rp_AcqSetTriggerDelay(30);
        while(1){
		rp_AcqStart();
		/*Se indica que el trigger se activara cuando en el canal 1 se tenga un flanco positivo*/

		rp_AcqSetTriggerSrc(RP_TRIG_SRC_CHA_NE);
		uint32_t buff_size=100;
		float *buff = (float *)malloc(buff_size * sizeof(float));
		uint32_t *pos1 = (uint32_t *)malloc(sizeof(uint32_t));
		rp_acq_trig_state_t state = RP_TRIG_STATE_TRIGGERED;
		        while(1){
		                rp_AcqGetTriggerState(&state);
		                if(state == RP_TRIG_STATE_TRIGGERED){
		                break;
		                }
		        }

		        rp_AcqGetWritePointerAtTrig(pos1);
		/*Al dispararse el trigger se recogen los siguientes 30 eventos ya que este numero de pulsos$
		 *muestrearan al utilizar un PMT*/
		        uint32_t start_pos = pos1[0]-30;
		        uint32_t end_pos = pos1[0]+30;
		        printf("%d\n", pos1[0]);
		rp_AcqGetDataPosV(RP_CH_1,start_pos,end_pos,buff,&buff_size);
		        int i;
		        for(i=0; i<buff_size;i++){
		                printf("%f\n",buff[i]);
		        }
		/*rp_AcqGetOldestDataV(RP_CH_1, &buff_size, buff);
		int i;
		for(i = 0; i < buff_size; i++){
		        printf("%f\n", buff[i]);
		}

		printf("Separacion");
		rp_AcqGetLatestDataV(RP_CH_1, &buff_size, buff);
		for(i = 0; i < buff_size; i++){
		        printf("%f\n", buff[i]);
		}
		*/
		/* Releasing resources */
		free(buff);
        }
        rp_Release();
        return 0;
}


