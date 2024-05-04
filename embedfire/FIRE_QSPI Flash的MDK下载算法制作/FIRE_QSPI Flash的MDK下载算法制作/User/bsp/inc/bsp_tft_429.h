/*
*********************************************************************************************************
*
*	ģ������ : STM32F429����Һ��
*	�ļ����� : LCD429_tft_429.h
*	��    �� : V2.0
*	˵    �� : ͷ�ļ�
*
*	Copyright (C), 2015-2020, ���������� www.armfly.com
*
*********************************************************************************************************
*/

#ifndef _BSP_TFT_429_H
#define _BSP_TFT_429_H

#define LCD_LAYER_1     0x0000		/* ���� */
#define LCD_LAYER_2		0x0001		/* ��2�� */

/* �ɹ��ⲿģ����õĺ��� */
void LCD429_InitHard(void);
void LCD429_GetChipDescribe(char *_str);
void LCD429_DispOn(void);
void LCD429_DispOff(void);
void LCD429_ClrScr(uint16_t _usColor);
void LCD429_PutPixel(uint16_t _usX, uint16_t _usY, uint16_t _usColor);
uint16_t LCD429_GetPixel(uint16_t _usX, uint16_t _usY);
void LCD429_DrawLine(uint16_t _usX1 , uint16_t _usY1 , uint16_t _usX2 , uint16_t _usY2 , uint16_t _usColor);
void LCD429_DrawPoints(uint16_t *x, uint16_t *y, uint16_t _usSize, uint16_t _usColor);
void LCD429_DrawRect(uint16_t _usX, uint16_t _usY, uint16_t _usHeight, uint16_t _usWidth, uint16_t _usColor);
void LCD429_DrawCircle(uint16_t _usX, uint16_t _usY, uint16_t _usRadius, uint16_t _usColor);
void LCD429_DrawBMP(uint16_t _usX, uint16_t _usY, uint16_t _usHeight, uint16_t _usWidth, uint16_t *_ptr);
void LCD429_FillRect(uint16_t _usX, uint16_t _usY, uint16_t _usHeight, uint16_t _usWidth, uint16_t _usColor);

void LCD429_SetDirection(uint8_t _dir);

void LCD429_SetLayer(uint8_t _ucLayer);

void LCD429_SetDispWin(uint16_t _usX, uint16_t _usY, uint16_t _usHeight, uint16_t _usWidth);
void LCD429_QuitWinMode(void);

#endif


