/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: user42 <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/02/27 16:02:54 by user42            #+#    #+#             */
/*   Updated: 2021/03/01 14:24:00 by user42           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

#include <stdlib.h>

int		ft_strlen(const char *str);
char	*ft_strcpy(char *dest, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
ssize_t	ft_write(int fd, const void *buff, size_t count);
ssize_t	ft_read(int fd, void *buff, size_t count);
char	*ft_strdup(const char *s);
/*
typedef
struct	s_list
{
	void			*data;
	struct s_list	*next;
}		t_list;

ft_atoi_base();
ft_list_push_front();
ft_list_size();
ft_list_sort();
ft_list_remove_if();
*/
#endif
