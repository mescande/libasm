/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: user42 <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/27 18:28:22 by user42            #+#    #+#             */
/*   Updated: 2021/03/02 11:37:52 by user42           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libasm.h"

int		main(void)
{
	int		fd = open("main.c", O_RDONLY);
	char	*str;
	char	ptr[400];


	str = malloc(491);
	if (fd == -1)
		return (1);
	ft_read(fd, str, 491);
	ft_read(fd, ptr, 400);
	ft_write(1, str, 491);
	ft_write(1, ptr, 400);
	ft_write(1, "PATATE", 6);	
	free(str);
	

	printf("\n\n");
	printf("%d\n", ft_strlen("BOUH"));
	printf("%d\n", ft_strlen("BOUHwefweifjw"));
	printf("%d\n", ft_strlen(""));
//	printf("%d\n", strlen(NULL));
//	printf("%d\n", ft_strlen(NULL));
	printf("\n\n");

	printf("%s\t", strcpy(str, "COUCOU"));
	printf("%s\n", ft_strcpy(ptr, "COUCOU"));

	printf("%d\t", ft_strcmp("", ft_strdup("")));
	printf("%d\n", strcmp("", strdup("")));
	printf("%d\t", ft_strcmp("bonjour", ft_strdup("bonjour")));
	printf("%d\n", strcmp("bonjour", strdup("bonjour")));
	printf("%d\t", ft_strcmp("", "bonjour"));
	printf("%d\n", strcmp("", "bonjour"));
	printf("%d\t", ft_strcmp("bonjour", ""));
	printf("%d\n", strcmp("bonjour", ""));
	printf("%d\t", ft_strcmp("the\0hidden", ""));
	printf("%d\n", strcmp("the\0hidden", ""));
	printf("%d\t", ft_strcmp("Lorem ipsum", "Lodsfsd"));
	printf("%d\n", strcmp("Lorem ipsum", "Lodsfsd"));
	

	return (0);
}
