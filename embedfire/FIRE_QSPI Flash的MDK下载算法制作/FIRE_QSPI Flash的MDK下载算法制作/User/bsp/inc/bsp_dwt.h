/*
*********************************************************************************************************
*
*	ģ������ : ���ݹ۲�������(DWT)ģ��
*	�ļ����� : bsp_dwt.c
*	��    �� : V1.0
*	˵    �� : ��CM3��CM4��CM7�п�����3�ָ���Դ��ETM, ITM ��DWT����������Ҫʵ��
*              DWT�е�ʱ�����ڣ�CYCCNT���������ܣ��˹��ܷǳ���Ҫ�����Ժܷ����
*              �������ִ�е�ʱ�����ڸ�����
*	�޸ļ�¼ :
*		�汾��    ����        ����     ˵��
*		V1.0    2019-02-24   Eric2013 ��ʽ����
*
*	Copyright (C), 2019-2030, ���������� www.armfly.com
*
*********************************************************************************************************
*/

#ifndef __BSP_DWT_H
#define __BSP_DWT_H

/* �궨�� */
#define  DWT_CYCCNT  *(volatile unsigned int *)0xE0001004
#define  DWT_CR      *(volatile unsigned int *)0xE0001000
#define  DEM_CR      *(volatile unsigned int *)0xE000EDFC
#define  DBGMCU_CR   *(volatile unsigned int *)0xE0042004
	
/* ��������*/
void bsp_InitDWT(void);
//void bsp_DelayDWT(uint32_t _ulDelayTime);
//void bsp_DelayUS(uint32_t _ulDelayTime);
//void bsp_DelayMS(uint32_t _ulDelayTime);

#endif

/***************************** ���������� www.armfly.com (END OF FILE) *********************************/
