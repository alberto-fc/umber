
#ifndef __LINUX_I2C_FUSION_F0710A_H
#define __LINUX_I2C_FUSION_F0710A_H

/* Board specific touch screen initial values */
struct fusion_f0710a_init_data {
	int	(*pinmux_fusion_pins)(void);
	int	gpio_int;
	int	gpio_reset;
};

#endif /*  __LINUX_I2C_FUSION_F0710A_H */
