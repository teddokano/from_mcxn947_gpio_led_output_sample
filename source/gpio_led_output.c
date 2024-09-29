#include "pin_mux.h"
#include "clock_config.h"
#include "board.h"
#include "fsl_debug_console.h"
#include "fsl_gpio.h"

void	delay( float sec );
void	mcu_init( void );
void	set_pin( uint32_t addr, uint32_t value );

int main(void)
{
	mcu_init();
	
	PRINTF( "GPIO Driver example\r\n"  );
	PRINTF( "The LED is blinking.\r\n" );

	while (1)
	{
		set_pin( 0x40096000 + 0x48, 1 << 10 );
		delay( 0.1 );
		set_pin( 0x40096000 + 0x44, 1 << 10 );
		delay( 0.9 );

		set_pin( 0x40096000 + 0x48, 1 << 27 );
		delay( 0.1 );
		set_pin( 0x40096000 + 0x44, 1 << 27 );
		delay( 0.9 );

		set_pin( 0x40098000 + 0x48, 1 << 2 );
		delay( 0.1 );
		set_pin( 0x40098000 + 0x44, 1 << 2 );
		delay( 0.9 );
	}
}

void set_pin( uint32_t addr, uint32_t value )
{
	uint32_t*	reg	= (uint32_t*)addr;	
	*reg	= value;
}

void mcu_init( void )
{
	/* Board pin, clock, debug console init */
	/* attach FRO 12M to FLEXCOMM4 (debug console) */
	CLOCK_SetClkDiv( kCLOCK_DivFlexcom4Clk, 1u );
	CLOCK_AttachClk( BOARD_DEBUG_UART_CLK_ATTACH );

	/* enable clock for GPIO*/
	CLOCK_EnableClock( kCLOCK_Gpio0 );
	CLOCK_EnableClock( kCLOCK_Gpio1 );

	BOARD_InitPins();
	BOARD_InitBootClocks();
	BOARD_InitDebugConsole();

	/* Init output LED GPIO. */
	gpio_pin_config_t led_config = {
		kGPIO_DigitalOutput,
		0,
	};

	GPIO_PinInit( BOARD_LED_RED_GPIO,   BOARD_LED_RED_GPIO_PIN,   &led_config );
	GPIO_PinInit( BOARD_LED_GREEN_GPIO, BOARD_LED_GREEN_GPIO_PIN, &led_config );
	GPIO_PinInit( BOARD_LED_BLUE_GPIO,  BOARD_LED_BLUE_GPIO_PIN,  &led_config );
}

void delay( float sec )
{
	volatile uint32_t	i = 0;
	
	for ( i = 0; i < (uint32_t)(1188100.0 * sec); i++ )
	{
		__asm( "NOP" ); /* delay */
	}
}

