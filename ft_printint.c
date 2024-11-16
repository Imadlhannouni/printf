/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printint.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ilhannou <ilhannou@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/11/13 17:43:59 by ilhannou          #+#    #+#             */
/*   Updated: 2024/11/14 17:12:49 by ilhannou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_printint(int n)
{
	int		len;
	char	*number;

	len = 0;
	number = ft_itoa(n);
	len = ft_printstr(number);
	free(number);
	return (len);
}
