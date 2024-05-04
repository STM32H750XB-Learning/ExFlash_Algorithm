/*
*********************************************************************************************************
*
*	ģ������ : ��Ϣ����ģ��
*	�ļ����� : bsp_msg.h
*	��    �� : V1.0
*	˵    �� : ͷ�ļ�
*
*	Copyright (C), 2013-2014, ���������� www.armfly.com
*
*********************************************************************************************************
*/

#ifndef __BSP_MSG_H
#define __BSP_MSG_H

#define MSG_FIFO_SIZE    40	   		/* ��Ϣ���� */

enum 
{
	MSG_NONE = 0,
	
	MSG_485_RX_RTU,		/* ���յ�RS485 MODBUS RTU���ݰ�*/
	MSG_485_RX_NOT_RTU,	/* ���յ�RS485���ݰ���CRCδ�� */
	
	MSG_CAN1_RX,		/* �յ�CAN1���ݰ���can_netword.c ������ */
	MSG_CAN2_RX,		/* �յ�CAN2���ݰ���can_netword.c ������ */
	
	MSG_WM8978_DMA_END,	/* DMA������� */
};

/* ����FIFO�õ����� */
typedef struct
{
	uint16_t MsgCode;		/* ��Ϣ���� */
	uint32_t MsgParam;		/* ��Ϣ��������, Ҳ������ָ�루ǿ��ת���� */
}MSG_T;

/* ����FIFO�õ����� */
typedef struct
{
	MSG_T Buf[MSG_FIFO_SIZE];	/* ��Ϣ������ */
	uint8_t Read;					/* ��������ָ��1 */
	uint8_t Write;					/* ������дָ�� */
	uint8_t Read2;					/* ��������ָ��2 */
}MSG_FIFO_T;

/* ���ⲿ���õĺ������� */
void bsp_InitMsg(void);
void bsp_PutMsg(uint16_t _MsgCode, uint32_t _MsgParam);
uint8_t bsp_GetMsg(MSG_T *_pMsg);
uint8_t bsp_GetMsg2(MSG_T *_pMsg);
void bsp_ClearMsg(void);

#endif

/***************************** ���������� www.armfly.com (END OF FILE) *********************************/
