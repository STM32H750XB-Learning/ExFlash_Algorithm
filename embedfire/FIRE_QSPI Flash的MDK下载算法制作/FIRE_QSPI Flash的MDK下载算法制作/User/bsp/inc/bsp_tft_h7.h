/*
*********************************************************************************************************
*
*	ģ������ : STM32H7����Һ��
*	�ļ����� : bsp_tft_h7.h
*	��    �� : V2.0
*	˵    �� : ͷ�ļ�
*
*	Copyright (C), 2015-2020, ���������� www.armfly.com
*
*********************************************************************************************************
*/

#ifndef _BSP_TFT_H7_H
#define _BSP_TFT_H7_H

#define LCD_LAYER_1     0x0000		/* ���� */
#define LCD_LAYER_2		0x0001		/* ��2�� */

/* �ɹ��ⲿģ����õĺ��� */
void LCDH7_InitHard(void);
void LCDH7_GetChipDescribe(char *_str);
void LCDH7_DispOn(void);
void LCDH7_DispOff(void);
void LCDH7_ClrScr(uint16_t _usColor);
void LCDH7_PutPixel(uint16_t _usX, uint16_t _usY, uint16_t _usColor);
uint16_t LCDH7_GetPixel(uint16_t _usX, uint16_t _usY);
void LCDH7_DrawLine(uint16_t _usX1 , uint16_t _usY1 , uint16_t _usX2 , uint16_t _usY2 , uint16_t _usColor);
void LCDH7_DrawPoints(uint16_t *x, uint16_t *y, uint16_t _usSize, uint16_t _usColor);
void LCDH7_DrawRect(uint16_t _usX, uint16_t _usY, uint16_t _usHeight, uint16_t _usWidth, uint16_t _usColor);
void LCDH7_DrawCircle(uint16_t _usX, uint16_t _usY, uint16_t _usRadius, uint16_t _usColor);
void LCDH7_DrawBMP(uint16_t _usX, uint16_t _usY, uint16_t _usHeight, uint16_t _usWidth, uint16_t *_ptr);
void LCDH7_FillRect(uint16_t _usX, uint16_t _usY, uint16_t _usHeight, uint16_t _usWidth, uint16_t _usColor);

void LCDH7_SetDirection(uint8_t _dir);

void LCDH7_SetLayer(uint8_t _ucLayer);

void LCDH7_SetDispWin(uint16_t _usX, uint16_t _usY, uint16_t _usHeight, uint16_t _usWidth);
void LCDH7_QuitWinMode(void);
void _LCD_DrawCamera16bpp(int x, int y, uint16_t * p, int xSize, int ySize, int SrcOffLine);
#endif


