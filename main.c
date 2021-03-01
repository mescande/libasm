/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: user42 <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/27 18:28:22 by user42            #+#    #+#             */
/*   Updated: 2021/03/01 14:26:28 by user42           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"
#include <stdio.h>

int		main(void)
{
	printf("%d\n", ft_strlen("BOUH"));
	printf("%d\n", ft_strlen("BOUHwefweifjw"));
	printf("%d\n", ft_strlen(""));
	printf("%d\n", ft_strcmp("AA", "AA"));
	printf("%d\n", ft_strcmp("A", "AA"));
	printf("\n\n");
	printf("%d\n", ft_strcmp("bonjour", ""));
	printf("%d\n", strcmp("bonjour", ""));
	printf("%d\n", ft_strcmp("the\0hidden", ""));
	printf("%d\n", strcmp("the\0hidden", ""));
	printf("%d\n", ft_strcmp("Lorem ipsum", "Lodsfsd"));
	printf("%d\n", strcmp("Lorem ipsum", "Lodsfsd"));
	return (0);
}
