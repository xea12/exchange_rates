-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 20 Cze 2023, 08:39
-- Wersja serwera: 10.4.25-MariaDB
-- Wersja PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kursy_walut`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `exchange_rates`
--

CREATE TABLE `exchange_rates` (
  `id` int(11) NOT NULL,
  `currency` text NOT NULL,
  `code` text NOT NULL,
  `mid` float NOT NULL,
  `effectiveDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `exchange_rates`
--

INSERT INTO `exchange_rates` (`id`, `currency`, `code`, `mid`, `effectiveDate`) VALUES
(1, 'afgani (Afganistan)', 'AFN', 0.04814, '2023-06-14'),
(2, 'ariary (Madagaskar)', 'MGA', 0.000918, '2023-06-14'),
(3, 'balboa (Panama)', 'PAB', 4.1393, '2023-06-14'),
(4, 'birr etiopski', 'ETB', 0.0754, '2023-06-14'),
(5, 'boliwar soberano (Wenezuela)', 'VES', 0.1536, '2023-06-14'),
(6, 'boliwiano (Boliwia)', 'BOB', 0.5984, '2023-06-14'),
(7, 'colon kostarykański', 'CRC', 0.00765, '2023-06-14'),
(8, 'colon salwadorski', 'SVC', 0.4734, '2023-06-14'),
(9, 'cordoba oro (Nikaragua)', 'NIO', 0.1133, '2023-06-14'),
(10, 'dalasi (Gambia)', 'GMD', 0.0662, '2023-06-14'),
(11, 'denar (Macedonia Północna)', 'MKD', 0.072578, '2023-06-14'),
(12, 'dinar algierski', 'DZD', 0.030437, '2023-06-14'),
(13, 'dinar bahrajski', 'BHD', 10.9919, '2023-06-14'),
(14, 'dinar iracki', 'IQD', 0.003163, '2023-06-14'),
(15, 'dinar jordański', 'JOD', 5.8417, '2023-06-14'),
(16, 'dinar kuwejcki', 'KWD', 13.4846, '2023-06-14'),
(17, 'dinar libijski', 'LYD', 0.8606, '2023-06-14'),
(18, 'dinar serbski', 'RSD', 0.0381, '2023-06-14'),
(19, 'dinar tunezyjski', 'TND', 1.337, '2023-06-14'),
(20, 'dirham marokański', 'MAD', 0.4108, '2023-06-14'),
(21, 'dirham ZEA (Zjednoczone Emiraty Arabskie)', 'AED', 1.1283, '2023-06-14'),
(22, 'dobra (Wyspy Świętego Tomasza i Książęca)', 'STN', 0.1807, '2023-06-14'),
(23, 'dolar bahamski', 'BSD', 4.1393, '2023-06-14'),
(24, 'dolar barbadoski', 'BBD', 2.0524, '2023-06-14'),
(25, 'dolar belizeński', 'BZD', 2.0559, '2023-06-14'),
(26, 'dolar brunejski', 'BND', 3.0886, '2023-06-14'),
(27, 'dolar Fidżi', 'FJD', 1.8717, '2023-06-14'),
(28, 'dolar gujański', 'GYD', 0.019594, '2023-06-14'),
(29, 'dolar jamajski', 'JMD', 0.0268, '2023-06-14'),
(30, 'dolar liberyjski', 'LRD', 0.0233, '2023-06-14'),
(31, 'dolar namibijski', 'NAD', 0.2236, '2023-06-14'),
(32, 'dolar surinamski', 'SRD', 0.1109, '2023-06-14'),
(33, 'dolar Trynidadu i Tobago', 'TTD', 0.6112, '2023-06-14'),
(34, 'dolar wschodniokaraibski', 'XCD', 1.5287, '2023-06-14'),
(35, 'dolar Wysp Salomona', 'SBD', 0.4876, '2023-06-14'),
(36, 'dolar Zimbabwe', 'ZWL', 0.000628, '2023-06-14'),
(37, 'dong (Wietnam)', 'VND', 0.00017629, '2023-06-14'),
(38, 'dram (Armenia)', 'AMD', 0.010702, '2023-06-14'),
(39, 'escudo Zielonego Przylądka', 'CVE', 0.0404, '2023-06-14'),
(40, 'florin arubański', 'AWG', 2.2896, '2023-06-14'),
(41, 'frank burundyjski', 'BIF', 0.001467, '2023-06-14'),
(42, 'frank CFA BCEAO ', 'XOF', 0.006824, '2023-06-14'),
(43, 'frank CFA BEAC', 'XAF', 0.006707, '2023-06-14'),
(44, 'frank CFP  ', 'XPF', 0.037458, '2023-06-14'),
(45, 'frank Dżibuti', 'DJF', 0.023275, '2023-06-14'),
(46, 'frank gwinejski', 'GNF', 0.000482, '2023-06-14'),
(47, 'frank Komorów', 'KMF', 0.009084, '2023-06-14'),
(48, 'frank kongijski (Dem. Republika Konga)', 'CDF', 0.001769, '2023-06-14'),
(49, 'frank rwandyjski', 'RWF', 0.00364, '2023-06-14'),
(50, 'funt egipski', 'EGP', 0.1341, '2023-06-14'),
(51, 'funt gibraltarski', 'GIP', 5.2298, '2023-06-14'),
(52, 'funt libański', 'LBP', 0.000276, '2023-06-14'),
(53, 'funt południowosudański', 'SSP', 0.004328, '2023-06-14'),
(54, 'funt sudański', 'SDG', 0.0069, '2023-06-14'),
(55, 'funt syryjski', 'SYP', 0.0016, '2023-06-14'),
(56, 'Ghana cedi ', 'GHS', 0.3651, '2023-06-14'),
(57, 'gourde (Haiti)', 'HTG', 0.0297, '2023-06-14'),
(58, 'guarani (Paragwaj)', 'PYG', 0.000572, '2023-06-14'),
(59, 'gulden Antyli Holenderskich', 'ANG', 2.2994, '2023-06-14'),
(60, 'kina (Papua-Nowa Gwinea)', 'PGK', 1.1529, '2023-06-14'),
(61, 'kip (Laos)', 'LAK', 0.000227, '2023-06-14'),
(62, 'kwacha malawijska', 'MWK', 0.004037, '2023-06-14'),
(63, 'kwacha zambijska', 'ZMW', 0.2184, '2023-06-14'),
(64, 'kwanza (Angola)', 'AOA', 0.006, '2023-06-14'),
(65, 'kyat (Myanmar, Birma)', 'MMK', 0.001973, '2023-06-14'),
(66, 'lari (Gruzja)', 'GEL', 1.5847, '2023-06-14'),
(67, 'lej Mołdawii', 'MDL', 0.2325, '2023-06-14'),
(68, 'lek (Albania)', 'ALL', 0.041721, '2023-06-14'),
(69, 'lempira (Honduras)', 'HNL', 0.1691, '2023-06-14'),
(70, 'leone (Sierra Leone)', 'SLE', 0.1826, '2023-06-14'),
(71, 'lilangeni (Eswatini)', 'SZL', 0.2235, '2023-06-14'),
(72, 'loti (Lesotho)', 'LSL', 0.2235, '2023-06-14'),
(73, 'manat azerbejdżański', 'AZN', 2.4377, '2023-06-14'),
(74, 'metical (Mozambik)', 'MZN', 0.0645, '2023-06-14'),
(75, 'naira (Nigeria)', 'NGN', 0.008953, '2023-06-14'),
(76, 'nakfa (Erytrea)', 'ERN', 0.2749, '2023-06-14'),
(77, 'nowy dolar tajwański', 'TWD', 0.1348, '2023-06-14'),
(78, 'nowy manat (Turkmenistan)', 'TMT', 1.1845, '2023-06-14'),
(79, 'ouguiya (Mauretania)', 'MRU', 0.1203, '2023-06-14'),
(80, 'pa\'anga (Tonga)', 'TOP', 1.7067, '2023-06-14'),
(81, 'pataca (Makau)', 'MOP', 0.5132, '2023-06-14'),
(82, 'peso argentyńskie', 'ARS', 0.0168, '2023-06-14'),
(83, 'peso dominikańskie', 'DOP', 0.0756, '2023-06-14'),
(84, 'peso kolumbijskie', 'COP', 0.000991, '2023-06-14'),
(85, 'peso kubańskie', 'CUP', 4.1393, '2023-06-14'),
(86, 'peso urugwajskie', 'UYU', 0.1072, '2023-06-14'),
(87, 'pula (Botswana)', 'BWP', 0.3096, '2023-06-14'),
(88, 'quetzal (Gwatemala)', 'GTQ', 0.5289, '2023-06-14'),
(89, 'rial irański', 'IRR', 0.000099, '2023-06-14'),
(90, 'rial jemeński', 'YER', 0.016561, '2023-06-14'),
(91, 'rial katarski', 'QAR', 1.1366, '2023-06-14'),
(92, 'rial omański', 'OMR', 10.7779, '2023-06-14'),
(93, 'rial saudyjski', 'SAR', 1.1049, '2023-06-14'),
(94, 'riel (Kambodża)', 'KHR', 0.001007, '2023-06-14'),
(95, 'rubel białoruski', 'BYN', 1.2955, '2023-06-14'),
(96, 'rubel rosyjski', 'RUB', 0.049, '2023-06-14'),
(97, 'rupia lankijska', 'LKR', 0.013325, '2023-06-14'),
(98, 'rupia (Malediwy)', 'MVR', 0.2681, '2023-06-14'),
(99, 'rupia Mauritiusu', 'MUR', 0.0909, '2023-06-14'),
(100, 'rupia nepalska', 'NPR', 0.031499, '2023-06-14'),
(101, 'rupia pakistańska', 'PKR', 0.0146, '2023-06-14'),
(102, 'rupia seszelska', 'SCR', 0.3124, '2023-06-14'),
(103, 'sol (Peru)', 'PEN', 1.1348, '2023-06-14'),
(104, 'som (Kirgistan)', 'KGS', 0.0473, '2023-06-14'),
(105, 'somoni (Tadżykistan)', 'TJS', 0.3793, '2023-06-14'),
(106, 'sum (Uzbekistan)', 'UZS', 0.000361, '2023-06-14'),
(107, 'szyling kenijski', 'KES', 0.029665, '2023-06-14'),
(108, 'szyling somalijski', 'SOS', 0.00729, '2023-06-14'),
(109, 'szyling tanzański', 'TZS', 0.001738, '2023-06-14'),
(110, 'szyling ugandyjski', 'UGX', 0.001114, '2023-06-14'),
(111, 'taka (Bangladesz)', 'BDT', 0.037915, '2023-06-14'),
(112, 'tala (Samoa)', 'WST', 1.534, '2023-06-14'),
(113, 'tenge (Kazachstan)', 'KZT', 0.009201, '2023-06-14'),
(114, 'tugrik (Mongolia)', 'MNT', 0.001193, '2023-06-14'),
(115, 'vatu (Vanuatu)', 'VUV', 0.034766, '2023-06-14'),
(116, 'wymienialna marka (Bośnia i Hercegowina)', 'BAM', 2.2807, '2023-06-14');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `exchange_result`
--

CREATE TABLE `exchange_result` (
  `id` int(11) NOT NULL,
  `from_currency` text NOT NULL,
  `to_currency` text NOT NULL,
  `amount` float NOT NULL,
  `result` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `exchange_result`
--

INSERT INTO `exchange_result` (`id`, `from_currency`, `to_currency`, `amount`, `result`) VALUES
(2, 'ETB', 'SVC', 1588, 252.926),
(3, 'AFN', 'LYD', 1588, 88.8291),
(4, 'BOB', 'GMD', 1588, 14354.4),
(5, 'MGA', 'CRC', 1588, 190.56),
(6, 'GMD', 'MKD', 1588, 1448.45),
(7, 'BOB', 'NIO', 1952, 10309.6),
(8, 'BOB', 'CRC', 1588, 124217),
(9, 'ETB', 'BOB', 1500, 189.004),
(10, 'ETB', 'VES', 100, 49.0885),
(11, 'ETB', 'VES', 100, 49.0885),
(12, 'ETB', 'VES', 100, 49.0885),
(13, 'VES', 'ETB', 100, 203.714),
(14, 'MGA', 'DZD', 100, 3.01607),
(15, 'ETB', 'LYD', 199, 17.435);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `exchange_rates`
--
ALTER TABLE `exchange_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `exchange_result`
--
ALTER TABLE `exchange_result`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `exchange_rates`
--
ALTER TABLE `exchange_rates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT dla tabeli `exchange_result`
--
ALTER TABLE `exchange_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
