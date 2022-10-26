/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft.h                                            :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: azgaoua <azgaoua@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/10/13 09:45:32 by azgaoua           #+#    #+#             */
/*   Updated: 2022/10/24 00:42:35 by azgaoua          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <unistd.h>
# include <stdlib.h>

char							*ft_strdup(const char *s1);
void							*ft_calloc(size_t count, size_t size);
int								ft_memcmp(const void *s1, const void *s2,
									size_t n);
void							*ft_memchr(const void *s, int c, size_t n);
void							*ft_memcpy(void *dst, const void *src,
									size_t len);
void							*ft_memmove(void *dst, const void *src,
									size_t n);
void							*ft_memset(void *b, int c, size_t len);
void							ft_bzero(void *s, size_t n);
int								ft_isalpha(int c);
int								ft_isdigit(int c);
int								ft_isalnum(int c);
int								ft_isascii(int c);
int								ft_isprint(int c);
int								ft_toupper(int c);
int								ft_tolower(int c);
int								ft_strncmp(const char *s1, const char *s2,
									size_t n);
int								ft_atoi(const char *str);
size_t							ft_strlen(const char *s);
size_t							ft_strlcpy(char *dst, const char *src,
									size_t size);
size_t							ft_strlcat(char *dst, const char *src,
									size_t	size);

char							*ft_strchr(const char *s, int c);
char							*ft_strrchr(const char *s, int c);
char							*ft_strnstr(const char *haystack,
									const char *needle, size_t len);

#endif