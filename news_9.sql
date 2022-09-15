-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 07 2022 г., 06:30
-- Версия сервера: 10.5.11-MariaDB-log
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `news`
--

-- --------------------------------------------------------

--
-- Структура таблицы `category`
--

CREATE TABLE `category` (
  `CategoryID` int(20) NOT NULL,
  `CategoryName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `category`
--

INSERT INTO `category` (`CategoryID`, `CategoryName`) VALUES
(1, 'Политика'),
(2, 'Происшествия'),
(3, 'Спорт'),
(4, 'Культура');

-- --------------------------------------------------------

--
-- Структура таблицы `demands`
--

CREATE TABLE `demands` (
  `DemandID` int(20) NOT NULL,
  `DemandTitle` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `DemandDescription` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `DemandIMG` longblob NOT NULL,
  `DemandUserID` int(20) NOT NULL,
  `DemandCategoryID` int(20) NOT NULL,
  `DemandStatusID` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `demands`
--

INSERT INTO `demands` (`DemandID`, `DemandTitle`, `DemandDescription`, `DemandIMG`, `DemandUserID`, `DemandCategoryID`, `DemandStatusID`) VALUES
(32, 'VVV', 'VVV', 0x89504e470d0a1a0a0000000d49484452000000fc000000fc080600000053abc967000000097048597300000b1300000b1301009a9c18000000017352474200aece1ce90000000467414d410000b18f0bfc610500001966494441547801ed9d4d8c5cd595c7cf7dafaa1508b19f0d2262c4473b62341ae18feeb523b9d9320a34bb219ac866354620d96c406216b61720311b6c8968b2c316a3f112c328d9ba2dc1badb1f5112311a171f4a945162971d10a8abdebb73cfab2abbbabbbeebbdfbcebdf7ff93ec6eb7cb50fdfafddfffdc73ce3d57117092e4a64ea849491ca74b4459926ab518914a48d16eadf462fe22f3b5fbff422f8efe2faa46e7836e9adf9b9d4fcdd734ddc9483763a51b696afebc60fefec17aa3b94f3509388722209a645d2fc6716b2517b4524f19312f19112ef25f51b534cdddb3c11f75465763a536d2386b349f59d8202016085e10c96f3797a84d2b918a0e7585bd442e621e04263ad8c874769532b5d15caeaf111001045f117948fe4d7b29cad4aa8ef4a1aeb8ab76edf250b4a6327535cbf4254a6a1b58125403046f91e47a6b25223aa289568cc0572864cc03c02c05ae50466b8800ec01c19708bb78fcb774c508fc054d7a957c76f0b9500d7323ae995f1fa73f8ad7e0fee501c1174c47e4add54ca9a3de87e965a1e892d6fa63fa51fd12c45f2c107c41e4e1ba5647e1e4c5a2489dcf527d01617f3140f07390ac6f2e4535f582d6749220f292e984fd593d3ed3fcc76ecf00981a087e06d8cdcd853b157ce2ad2a38e1a78deb1f5c384f602a20f809e1b579f44dfb04dc5c12aaa1293b43f5fa1a5c7f3220f83124bffb6e316ad78e42e8b2c9d7fa08f7c702c10f2117fa667c5a73b61d3803843f1a087e1b10ba1f40f88381e0bb40e87e02e16f2578c123191706e6463f9bd56be742177ed0824fae6f9e505a9d26083d103a59fd90cb79410a3eafa36bf5c1f8a110c04f58f8f47af360ed1205465082e775ba6ad5de339fae12089e10d7f7c1081ee13b188c717bdd3ed73cf483b31400de0b3e77f576ed03b4c1829128dad0b5da8bbebb7d441e93bb7aabb60eb183b1685a52adf6cdbdd75ba7c863bc7478b83a980bde9c53abbdeca3db7be7f0c98df651b83a980b73efa8567a39b9b6798c3cc31b87cf1b68fed63e65ca2d27098082c81b76d2da99e6b21f9377bc107ca7dc56bf8cba3a280793c9afc7cffa10e23b1fd2df0be12176501ada184a7b3db9fabdf3d1a3d30ebff75aeb3d84f0c0264ad1e95b07ea67c8519c143cafd7d537ed8f90980395e07016df39c163bd0e64e0e6badea9357cbee905eb7520025ed79bd21d9f07e810ce083e4fce69ba4ce885076230a24f9553c93c27046f9cfd94caf4790240204ac5efb9d2922b7e0d9f8b5dd3690240382e64f0450b1e6537e01adc9977eb60fd75128a58c1efbdd1fe4067fa1801e0182a52e76fedafbd4c02112978881db88e54d18b133cc40e7c41a2e845091e6207be214df462ca7279820e62079ec1f734dfdb24041182e7d21bb2f1c057f8de9652a7af3ca4479d1d8482843a7da582ef8e8e0e623c30008c8ed4b1e6feda05aa88ca04cf9b0eb80f9900080c9dd2b3cde5fa1a5540256bf87c8b6b1a7d440004888ae9a3e477d5ecf8b4eef0d8cf0e00a31a3a8d976d0fc7b4eef0f9bc78881d048f5e54b5b6f528d7aae039238fb1540074315ab05da3b716d223230fc0606c66eead08be7b4c3367e431ad06809d3475bdb66c633e5ee9217d3e61364fd241ec000c21c9e7e3adebd23552bae0f9f82724e90018875e8ce276e9edb7a586f47c189f22f501010026a2ecf57c698247bd1d809928753d5f5a488f7a3b003391a876bbb4a8b814c1a3de0ec01c18ed9435ebbef090be5b82bb490080792825b42fdce14d288f4d3100cc4f29a17da182e76e3a138e3875d61600622921b42f2ca447561e80522834b42fcce1a3cdf834c40e40e170685fd8069b421c3eb9d65e55a4b17607a0248a9a925388c39ba7869831bc00f8888a8be9589d5bf0dc3e8b501e80b2d18b4524f0e60ae991a803c02a4d9dd6f6cd33166b2e878f5ab513103b00d648a2a83d97cbcfecf0e8a803a012e62ad3cdecf09d321c00c03249d44a67de373f93c3c3dd01a816e3f2fb6671f9991c1eee0e40b5cceaf2533b3cdc1d0019cce2f2533b3cdc1d0019cce2f253393cdc1d00594cebf2359a0276775df989f2e1b03b56f4449de8c003444fd6cde70bca7ccd7cbe40f9c71efc7793f2654be71fefa4f77f7db9497437d5f9dff1e7fcb51bdf6b02f28936dbc7cc87d393be7ee23b05ee6e87c33f54f4dcae887efa9011fa0faa7bbab2f03ffd56d3c5db197df62dc42f98a9baef265fc3b7e21502a5c142ffe42731fdb7f9f5ca23aa52b1331c45fc7c8fcadfcf874fc5e6cf08ed843255f7ddc43fc53dd7da37d1465b0eeffc5d44c71fb67e90ef54b0e33f7f33351fe1f60269de3e58df33c90b27bacbb023ae3cae3c5d132f76861dff937df196dc01104392acb7562679e144493ba5d451b2f060df6fc2584e50d9a693a422ebeec5ce5ec5f73b2b2c7a7e38bdfb7f190159a81a71896e6decebc6bdc046b28ed787ec1e7c4355492749d54954950d7fcf1bffe09e5d7268bff487364982ab192f997c031b064720554721bdcac767df66568d44c77ab9f9ccc2c6a8d78c75781ba5b8e30fabcac5cefcd424cef8d79b8f46a5af579fac9393f0cf891f5612d6f22cf4e326c1c95187c4a5c62b8f74de144744effeb97c1389da6ad57c1829f8b18b47ada2235432fc839304dfd4579e8e8d6b94b7b6e66862eff536fdec7f537aeb4f99a98193331c7e50c6cf8ba3427e384bcf2bf07bb451e530c67c62dc6b46ded19d444098c93abe897ef978943b7e99708dfb577fc968e9f71df17fea40cd5b4234c60f6397f21f4fd889e8c626ef460a3e8af431b2c0f5efe4dee4ef3f6e2f33cde27fbeebf89291e0a8ec9a6000b149b08f60e8554bd675a2d5e87f5c14179b726f7076b3371eb57b87b3e31ff93ccd933f12a97a09c6ee2e21ca9886bb966e71457a95b53becef873f26e3d62a59826f6cc9a12c77bed9ee34bbfebd46f96b08aeb93bdfdf16a3d884e274a876875e39a59535c133fffe67d9373757126cc34e2ff141f84485eeca2dc8aeb9bbedbd084ae9a191f940c1e72181a217c8227c634bce54731859c5da95450fee5366e5a42c7e7dd7f2435bd3d2b0b07ef0d58bd315aa808bb7e4dedc2cf62a5a60d91da4aee56dc33f03ded0e31abfb96bfdbe4e866978e01d1ce9cc6a38dfe3577fcd44dfdcbc6dd536f9fa4fd8def4af36a912aab8fef3c29d9b15ddd30323f48157d046b3cd20f8c2480e61b9ee5b765d7e103704972d6df29283ee5e55e295b3f583bebe43f05537db5c6ccabeb99fdb65ffa693e6f055c055922a1eb6f390e7a5aa6b411ed884b3d3e1235aa10ae10b24b9445745f28e376084ce1b0e36dabc5b71e5291aa0e51d575145544938df8fe4121d8bddf6341a694327eea4f6df8f8bee5ef568303d40cb5b049fa7f275b50ecff0c592ecf26ffcd8aedb484b64da7e3f2e76d655edee3946cbdbcb73dbeedcf612094172f28eddc67658df9b361b22ae25eb38332f67f0e7564d6f157ca42a29c70de2377765d79f5d184be503071e702f5927a9253aaa6dd5f496bb5645fa100942b2cb1f7f245cc17f69b10effaf8e3d58d9dd25e55c346dd574b4ed6f574810921b7138a477cd795c834b712e75d6716bb8b80d4f9a0687f4934ebdb489f4461cdbc9bbd070ad14c7893a8163bc4d3d7ef39ee8ef5fd1488b49d8f523d9e57b33f06cf06545edac55e1a2bbdb187e3a137df5f8a8ef13918287cbcbc346c5c03577e749456251d1bd75fcbdabaa23252a61d70fbbbc546cba7c28b8e6ee4243f97b28a50784f45aa6c333ecf29cfd948a0d970f698bac4bee2e3251b79d3e6de75736f9eda658b1f7907c516db8fcdd4004cf8749b8e4eeffd270e30793ac7736c4751ea569b448c291bea90619fb62f8cfa7dc398d87734b375cd9c9d81d88d1b94bb5cc0cfd76246faa61877771fc92245cea99ef84f20eb53beb3e87574233f4db91bea9e69dc7e49f8222151e7dedd2345aceca57b16b7066947a8a3f74aeb0b94fc911a46f9d458ffd6c1c7fc49d69b4d2b3f283e865eabb21bd1b0ecf487779eeb12fc3e577791c397019ce157777222b3f084d8bfc21eaee974dc821a4bbfcdb8f15af4e494b85a287b0befd985ba1bca324acf588165a8be418d25d9ecb4a3e37e314d913c089ba7fdae5c6b5723194df8611fca672cadd7b483fa90665baf1b814caf37c06e78ffe8ad3a58862378f8396eef2ecf045ee99776dc4d324b892a8e375bbf4137d27c438bc568be428d25d9eddaba8b5f7eec8af2502bbbb2b158d57bf4a5d0fe53b985abcb9e26e86f48c749767b11775d4b46ff5fd4ff6b9f10df1ba5dce7cbaf98822651c9e326705cf4877793e6a7ade049eeda3aacbe6cd1fbbd15177fd7b474b7043c834078a51a703c755d8e125efa463de7f3c9ecba19fa89328e6793fae24ea78ddfe8b2ffcdab1a4142d7a914a96fe1466379b27b49716ce731becacffcea550de8b75fb3658f04e87f40cff60a49fa33e4f686ffba49b71ec9ed126b8c1c685509ec52e765cd53c687678ed6ed2ae1f7679e94322660dedf73f204bf07c8aeeb47089d2857deeceb6ce4e8837dd21d267df31ec6e1fceb0df5b9ac34f9b44e4d7bfe340fbec9dcce9d6d98988aa3c1aba68244fb8edc161fd9b5374e1f1c92bd2c2e0c3532c4d58ecaeacdbdffaa39febf6fb683f92763d5c707986b3d4930ecb38fca0bc3078d243387a493a17d6ed7cdf78b96edf86770ddfecf2bc0e93ce2f1f8f26128dd423adfe79cc03cb25b13b37bd660ebc133cbbbc88a37a27e0939fc4239d9ec52e5530a37604f6c43e4b72af0a9c9b5e33075e6ee9e2d04c72cb6d3fecf483d6f4bc4e96dea0c25587ed093c7edf579e7647ecbed6db87a1f65cf3f3e071761f765057e0a3a4f821f595b9f90e3fe4ce7e7a7edf9d64a9a6e776b9b3b79de1d6d9239fb72924bc153cc382c7a93060184b7ff06417dc14783da5e1b5afe597e940358416caf7e0edb10df214175a6e817d7cefa61b8e6a783f87c985661c601757aa3865e0bde059ec9e8c27020520fa1cf7b251ba1999df1ae4392e95e940b984ecee46f1cd6046ab4a9f8c03ece0cbb8aa598974a6bfa000608747022f6cb8ee1e6266be87d6c449bba84981e0c29e79501ea1b4cf0e23527487b7c706237824f0c2e6c97ad84d58591648d2ae1f24f0c2853722057d9cb7526185f43dd081172e411fe79d6a23f8b4b54181810ebc7029eb386f37e0909e7e109cc3339cc073615006281616fb2c7305fda0de889acb8a051fa4e85ffb0a717d884c3b57d0139aacf5ce77ada8410182da7cb84c3357d00b94ca97eef977ac337d950205a17db8f0e86c6923c0cb4267e91dfed87dc4f9bb45761c9cad47681f26bc9ee7212961883ebaeff0a1d5e2b783d03e5c82117d7f484f69ba468183d03e5c82107d9a35f8c3bdefd0e7d97693c23ff02b7f1f722b56d8f0f28e47565fffde3f29dc3ed8e92bbe9fa654145c03ce76f8078d5efb70f1d6e9fbb47d4ff02167eafbe1b53c7aedc3c547d16bad760ade10bcc3f740af7dd878277a9ddd33f3fb82afd11a811ceeb5ffc517507cc87825faecbec36ff96e4ce2eeb6f99010c8e1c60ca98739023bf890c8eb25ec98ad773312775be0041ed6f361e3bcd32bb5d6ffc72d82d79942e26e1bbc9e477d3e6c5c16bd79c75b34bdd5e1337d89c016f2f57c03ebf9d0e96dabdd7e5aae74b2f6564d6f5ba0d610d20f00f579c0f0882c3ef7de2dd16fd5f48e77bee77aeb32695a21b003de5219e03eea89e17c07cf0ce423a45914bceffca53dfeb5abf2f7f7fc4d074e9e35ebf7db076acff67f69c7ddab33ba426020dc6f1fec31456378eb8f599ecdbe785be7873df0757af5ebb47324b367391076fa0f9f923f2a4b677a879677da55867afc2838b4f7b1d77a1e58ec7c68e720d805977edff66e372227f0de7e4cb8e207687960bc857afc68385ce5aced93750a1e767476f249f07149f41f7fd1f46f7f9298d4558ddb076bfbb67f75e0d5d75a7f4c6028ec5a1cbea25c37dd39ebfc5adf0e737ce51125b239cbc4a06b83be3ef89daa08e5b931f4ca7521f7dcb3bb4f9bb8f251f4dc91c9094a610c34edc1824fe3350a7492ed34f05afeb5afc355fc7fcd98c064d1fbb6a61757a3ef68780703059f8fae469bed44fcfaaecebbf14283239b798e5ee6e4275f3b5fe834e6c8c8dc6b9d7ddc1d3fbf8368f83fd217084c043b5d68a22fe29c758e8e7cca8370e6fe8d4705285ea9a14bf2e1d986b4ceff0861fd848426fa4fbf995ff0bd9d683e895e4412afa3dd810c7d671c12205b3f1d2cfa239f8791c82baa17c1c7bd0a5c7eac6a3daf499d1f16ce33a31f45993a4f602a580847fec7ff92dd8d029b8f7cdbabc0ebf8f71fafc8e5d3d14bf191efaab95c5f2384f553e37b9d9e2398a2a318cedafb94b9e7329dfdd05e35ba9a1dcad877a4359d2330352cfa239fb7f35ab56f94f520f36de088edd07e58b34d3fe31f41d8233f33ec82dc76ea5ba3c99db43c51f22c415f22a37c70c6bed85ea92e8dcf8c7bc958c1379717364c4d7e8dc0cc70a3894fbbc6bedaa4d2f02d73cf3beb8e3f6c21b4576acd24eb1ae35e36d13bd16d1afbe400a3f139c42f1adfda966dace5b5ce26ea9b99e89d2079570cbd10ff55c7e7e49519d2f7e0ccbd2fa3c239a42fb7d7de24eb0e2e9c9fe495133f7a90bc2b8e8b79bdbeedecdade96f37202cf9766a6e7769527784dd9c411f8e4b146563b4b70f9c260d1f4d6f6ae85f936436d5f3a1877c7253a7c3aba14d7cfc482ef74dec1e58b86d7ab1ce6ffcc24aa5c2949d99ef8c3a2e7441e8effda49b7b3ae31e9eba7cb2664edf3044a8137a3f04ded82f06f5430e28baf89cb1d8ca5fd4c2728c5f53395e09bcb0f341476d1954a4ff852437dbe71ab72da5e07a3734ba0ac98dd85db99d6dd99a91716c9fa778b2aaedd246005eed43adc1df72c61aa0a47209f098840b8d4c59d6cd227c732a3867cce834e6bfb4a173cb3f7eae679add4510256a95afc5c559866865dd9f0f5e0f1526566c0e7a534b1b3bb1facbd4c5332d39582cb570f677d0fff90ebbb111d7e884a3bf78cc351defbce1b5b2438fb205edad399862b698a70afa458d66115b3b83b33f35d02979707bb3f87b82cfefd0f743ee7d64e7e38ec1e91adf9b2d5b929796dcea7aa70eb2c7fedfa77da24e8ec34da14017fff3f37e2dfff00593ff8b173bda87b08872ef59acdeaeecccc57a5ebf2eb84f9f5005865567767666ef2e58c3deaf200d84529756e56b133f375f5a3fb0e008ba846d68ecfd21ccc25f8eedc3beca403c002dc333f8fbb33856436f65c6b9b8cbd5e240040490c3e2b6e5a0ad9a8ab533d53c61000301946a8af53011422f8ee7e798cc202a004b80cf7d783b542f455d8280e9db6f90984041e008562d6ec536e9019456182ef94e990c003a048b4cececd9ba8eba7f076a43dd75b974d0cb2420080f950d1c6ed03f1321548e1d3f574bbcd093c84f600cc896e472f52c1142e7884f600cc8fd274a6c850fede7f974a02a13d00b3a179c6fc81dab35402a50dcc46680fc02c18576fc7a5f5b59426f83cb4275d48b30000a15044fbec284a3d128387e36badb0a30e8009c877c24d78a0c4ac947f064e169fcec31400c008f29d70a7a9644a177cbea32e6d710202eb7900066334123fcb5aa192b172623dd6f3000c87cbd865aedbfbb1227806eb79007692d7db0f2dcc35d462aaff1f5906f579003a94596f1f863587efa1dbb51791c403a0dc7afb30ac0b1e493c0054a39ba46b90652a3bb223596fada8982e130081a153bddc5c5ed8a00ab0eef03d784a8ec9dc633416080a93917fbd2ab13395099ee964ee093beb4010d8cec80f7c0f2480e46aebb452748a00f01416fbad43f5d35431628edd4caeb6cf2aa54f10009ec13df2b70ed44e9200449db3bbf7dae6794d38a012f883227de1d6c18563240471076b43f4c017a4899d11277806a207ae2351ec8c48c133103d7015a962672a2dcb8d822f1836db00d7c8137442c5ce88153cd33c543b893a3d7085bcf426241b3f0cb1217d3fa8d303e948a9b38fc309c133c9d5cd93265c7a8f001006b788973d8bae289c113c93ac6f2ea938fa0867d1032134b5a2179b07f2d3939dc029c133c9fa778b2aae5f86e841b554b7c5751e4427ed0691cfc7e3fdf48ad608800ae0493546eccbae899d71cee1fb41320fd846525ffc2c382d78a69bcc63d1270440793479f2b22bc9b961382f7806eb7a502e6eaed707e1dc1a7e109d757dbc8cce3c50341cc2bbba5e1f84170edf4f726df398a2e814dc1ecc891721fc76bc133c9387f8b5da07987f0f6681b3f03c42da1757efc74bc1f740161f4c49333ff6a9e2b97365e2b5e099aedb7f64dc7e89001882cfaede8ff782efd129df4527b0b607dbf0ded5fb0946f00cbb7d14c5a7cdd31c83358009fae812a5b5d77d77f57e82127c8fe45a7bd57ce3efc1ed43c5d4d5957ed9a54d2f4511a4e07ba084171c4185ef83085af00c87f914d54f6226bed718a1d339ca6a67f930530a98e005df03eb7b3fd1a4ce531a9f09699d3e0a087e1b10be1f40e88381e08700e1bb09843e1a087e0c10be13f4d6e8e721f4d140f0139227f7e27805597d512019372510fc0c70398f54745469bd42c03a791b2c99f25a8075f47981e0e7e07eb81f1d81eb974ec7cd6bfa52f399850d023301c11744b2de5a89227d0c6bfd42699a24dc2552fa02dcbc1820f88249d67542716b95287a41915e25302d4df3d0dc887576214deb97b0362f1608be443ae24f57229dad22ec1f49c7c9893e3625b53588bc3c20788b70d84f11995fea48e809bf3cf196e92be67aac215cb707045f11b9fb537b298ad46a16d121cf1f0079981e6574358bf4256ad736e0e2d500c10ba21301e8a58868298b947908b839a5472bda30bf995fd955ca8c832f23ab2e05085e387c8026c5d12269bd444a1d323fb144f1e7d51fbcc10729363ac2d65fc44a374c926d0d9d6eb281e01da5b324682d9a1f6112c77a31d56a31329f678a769b9fea62e755da3c1c54f7c1302e61785fa8b990f34fa81169ba93916ee682a6a869926aecd64d84e46ef2ffd531a1d400c9c4150000000049454e44ae426082, 82, 2, 1),
(34, 'FFFF', 'FFFF', 0x89504e470d0a1a0a0000000d49484452000000fc000000fc080600000053abc967000000097048597300000b1300000b1301009a9c18000000017352474200aece1ce90000000467414d410000b18f0bfc610500001966494441547801ed9d4d8c5cd595c7cf7dafaa1508b19f0d2262c4473b62341ae18feeb523b9d9320a34bb219ac866354620d96c406216b61720311b6c8968b2c316a3f112c328d9ba2dc1badb1f5112311a171f4a945162971d10a8abdebb73cfab2abbbabbbeebbdfbcebdf7ff93ec6eb7cb50fdfafddfffdc73ce3d57117092e4a64ea849491ca74b4459926ab518914a48d16eadf462fe22f3b5fbff422f8efe2faa46e7836e9adf9b9d4fcdd734ddc9483763a51b696afebc60fefec17aa3b94f3509388722209a645d2fc6716b2517b4524f19312f19112ef25f51b534cdddb3c11f75465763a536d2386b349f59d8202016085e10c96f3797a84d2b918a0e7585bd442e621e04263ad8c874769532b5d15caeaf111001045f117948fe4d7b29cad4aa8ef4a1aeb8ab76edf250b4a6327535cbf4254a6a1b58125403046f91e47a6b25223aa289568cc0572864cc03c02c05ae50466b8800ec01c19708bb78fcb774c508fc054d7a957c76f0b9500d7323ae995f1fa73f8ad7e0fee501c1174c47e4add54ca9a3de87e965a1e892d6fa63fa51fd12c45f2c107c41e4e1ba5647e1e4c5a2489dcf527d01617f3140f07390ac6f2e4535f582d6749220f292e984fd593d3ed3fcc76ecf00981a087e06d8cdcd853b157ce2ad2a38e1a78deb1f5c384f602a20f809e1b579f44dfb04dc5c12aaa1293b43f5fa1a5c7f3220f83124bffb6e316ad78e42e8b2c9d7fa08f7c702c10f2117fa667c5a73b61d3803843f1a087e1b10ba1f40f88381e0bb40e87e02e16f2578c123191706e6463f9bd56be742177ed0824fae6f9e505a9d26083d103a59fd90cb79410a3eafa36bf5c1f8a110c04f58f8f47af360ed1205465082e775ba6ad5de339fae12089e10d7f7c1081ee13b188c717bdd3ed73cf483b31400de0b3e77f576ed03b4c1829128dad0b5da8bbebb7d441e93bb7aabb60eb183b1685a52adf6cdbdd75ba7c863bc7478b83a980bde9c53abbdeca3db7be7f0c98df651b83a980b73efa8567a39b9b6798c3cc31b87cf1b68fed63e65ca2d27098082c81b76d2da99e6b21f9377bc107ca7dc56bf8cba3a280793c9afc7cffa10e23b1fd2df0be12176501ada184a7b3db9fabdf3d1a3d30ebff75aeb3d84f0c0264ad1e95b07ea67c8519c143cafd7d537ed8f90980395e07016df39c163bd0e64e0e6badea9357cbee905eb7520025ed79bd21d9f07e810ce083e4fce69ba4ce885076230a24f9553c93c27046f9cfd94caf4790240204ac5efb9d2922b7e0d9f8b5dd3690240382e64f0450b1e6537e01adc9977eb60fd75128a58c1efbdd1fe4067fa1801e0182a52e76fedafbd4c02112978881db88e54d18b133cc40e7c41a2e845091e6207be214df462ca7279820e62079ec1f734dfdb24041182e7d21bb2f1c057f8de9652a7af3ca4479d1d8482843a7da582ef8e8e0e623c30008c8ed4b1e6feda05aa88ca04cf9b0eb80f9900080c9dd2b3cde5fa1a5540256bf87c8b6b1a7d440004888ae9a3e477d5ecf8b4eef0d8cf0e00a31a3a8d976d0fc7b4eef0f9bc78881d048f5e54b5b6f528d7aae039238fb1540074315ab05da3b716d223230fc0606c66eead08be7b4c3367e431ad06809d3475bdb66c633e5ee9217d3e61364fd241ec000c21c9e7e3adebd23552bae0f9f82724e90018875e8ce276e9edb7a586f47c189f22f501010026a2ecf57c698247bd1d809928753d5f5a488f7a3b003391a876bbb4a8b814c1a3de0ec01c18ed9435ebbef090be5b82bb490080792825b42fdce14d288f4d3100cc4f29a17da182e76e3a138e3875d61600622921b42f2ca447561e80522834b42fcce1a3cdf834c40e40e170685fd8069b421c3eb9d65e55a4b17607a0248a9a925388c39ba7869831bc00f8888a8be9589d5bf0dc3e8b501e80b2d18b4524f0e60ae991a803c02a4d9dd6f6cd33166b2e878f5ab513103b00d648a2a83d97cbcfecf0e8a803a012e62ad3cdecf09d321c00c03249d44a67de373f93c3c3dd01a816e3f2fb6671f9991c1eee0e40b5cceaf2533b3cdc1d0019cce2f2533b3cdc1d0019cce2f253393cdc1d00594cebf2359a0276775df989f2e1b03b56f4449de8c003444fd6cde70bca7ccd7cbe40f9c71efc7793f2654be71fefa4f77f7db9497437d5f9dff1e7fcb51bdf6b02f28936dbc7cc87d393be7ee23b05ee6e87c33f54f4dcae887efa9011fa0faa7bbab2f03ffd56d3c5db197df62dc42f98a9baef265fc3b7e21502a5c142ffe42731fdb7f9f5ca23aa52b1331c45fc7c8fcadfcf874fc5e6cf08ed843255f7ddc43fc53dd7da37d1465b0eeffc5d44c71fb67e90ef54b0e33f7f33351fe1f60269de3e58df33c90b27bacbb023ae3cae3c5d132f76861dff937df196dc01104392acb7562679e144493ba5d451b2f060df6fc2584e50d9a693a422ebeec5ce5ec5f73b2b2c7a7e38bdfb7f190159a81a71896e6decebc6bdc046b28ed787ec1e7c4355492749d54954950d7fcf1bffe09e5d7268bff487364982ab192f997c031b064720554721bdcac767df66568d44c77ab9f9ccc2c6a8d78c75781ba5b8e30fabcac5cefcd424cef8d79b8f46a5af579fac9393f0cf891f5612d6f22cf4e326c1c95187c4a5c62b8f74de144744effeb97c1389da6ad57c1829f8b18b47ada2235432fc839304dfd4579e8e8d6b94b7b6e66862eff536fdec7f537aeb4f99a98193331c7e50c6cf8ba3427e384bcf2bf07bb451e530c67c62dc6b46ded19d444098c93abe897ef978943b7e99708dfb577fc968e9f71df17fea40cd5b4234c60f6397f21f4fd889e8c626ef460a3e8af431b2c0f5efe4dee4ef3f6e2f33cde27fbeebf89291e0a8ec9a6000b149b08f60e8554bd675a2d5e87f5c14179b726f7076b3371eb57b87b3e31ff93ccd933f12a97a09c6ee2e21ca9886bb966e71457a95b53becef873f26e3d62a59826f6cc9a12c77bed9ee34bbfebd46f96b08aeb93bdfdf16a3d884e274a876875e39a59535c133fffe67d9373757126cc34e2ff141f84485eeca2dc8aeb9bbedbd084ae9a191f940c1e72181a217c8227c634bce54731859c5da95450fee5366e5a42c7e7dd7f2435bd3d2b0b07ef0d58bd315aa808bb7e4dedc2cf62a5a60d91da4aee56dc33f03ded0e31abfb96bfdbe4e866978e01d1ce9cc6a38dfe3577fcd44dfdcbc6dd536f9fa4fd8def4af36a912aab8fef3c29d9b15ddd30323f48157d046b3cd20f8c2480e61b9ee5b765d7e103704972d6df29283ee5e55e295b3f583bebe43f05537db5c6ccabeb99fdb65ffa693e6f055c055922a1eb6f390e7a5aa6b411ed884b3d3e1235aa10ae10b24b9445745f28e376084ce1b0e36dabc5b71e5291aa0e51d575145544938df8fe4121d8bddf6341a694327eea4f6df8f8bee5ef568303d40cb5b049fa7f275b50ecff0c592ecf26ffcd8aedb484b64da7e3f2e76d655edee3946cbdbcb73dbeedcf612094172f28eddc67658df9b361b22ae25eb38332f67f0e7564d6f157ca42a29c70de2377765d79f5d184be503071e702f5927a9253aaa6dd5f496bb5645fa100942b2cb1f7f245cc17f69b10effaf8e3d58d9dd25e55c346dd574b4ed6f574810921b7138a477cd795c834b712e75d6716bb8b80d4f9a0687f4934ebdb489f4461cdbc9bbd070ad14c7893a8163bc4d3d7ef39ee8ef5fd1488b49d8f523d9e57b33f06cf06545edac55e1a2bbdb187e3a137df5f8a8ef13918287cbcbc346c5c03577e749456251d1bd75fcbdabaa23252a61d70fbbbc546cba7c28b8e6ee4243f97b28a50784f45aa6c333ecf29cfd948a0d970f698bac4bee2e3251b79d3e6de75736f9eda658b1f7907c516db8fcdd4004cf8749b8e4eeffd270e30793ac7736c4751ea569b448c291bea90619fb62f8cfa7dc398d87734b375cd9c9d81d88d1b94bb5cc0cfd76246faa61877771fc92245cea99ef84f20eb53beb3e87574233f4db91bea9e69dc7e49f8222151e7dedd2345aceca57b16b7066947a8a3f74aeb0b94fc911a46f9d458ffd6c1c7fc49d69b4d2b3f283e865eabb21bd1b0ecf487779eeb12fc3e577791c397019ce157777222b3f084d8bfc21eaee974dc821a4bbfcdb8f15af4e494b85a287b0befd985ba1bca324acf588165a8be418d25d9ecb4a3e37e314d913c089ba7fdae5c6b5723194df8611fca672cadd7b483fa90665baf1b814caf37c06e78ffe8ad3a58862378f8396eef2ecf045ee99776dc4d324b892a8e375bbf4137d27c438bc568be428d25d9eddaba8b5f7eec8af2502bbbb2b158d57bf4a5d0fe53b985abcb9e26e86f48c749767b11775d4b46ff5fd4ff6b9f10df1ba5dce7cbaf98822651c9e326705cf4877793e6a7ade049eeda3aacbe6cd1fbbd15177fd7b474b7043c834078a51a703c755d8e125efa463de7f3c9ecba19fa89328e6793fae24ea78ddfe8b2ffcdab1a4142d7a914a96fe1466379b27b49716ce731becacffcea550de8b75fb3658f04e87f40cff60a49fa33e4f686ffba49b71ec9ed126b8c1c685509ec52e765cd53c687678ed6ed2ae1f7679e94322660dedf73f204bf07c8aeeb47089d2857deeceb6ce4e8837dd21d267df31ec6e1fceb0df5b9ac34f9b44e4d7bfe340fbec9dcce9d6d98988aa3c1aba68244fb8edc161fd9b5374e1f1c92bd2c2e0c3532c4d58ecaeacdbdffaa39febf6fb683f92763d5c707986b3d4930ecb38fca0bc3078d243387a493a17d6ed7cdf78b96edf86770ddfecf2bc0e93ce2f1f8f26128dd423adfe79cc03cb25b13b37bd660ebc133cbbbc88a37a27e0939fc4239d9ec52e5530a37604f6c43e4b72af0a9c9b5e33075e6ee9e2d04c72cb6d3fecf483d6f4bc4e96dea0c25587ed093c7edf579e7647ecbed6db87a1f65cf3f3e071761f765057e0a3a4f821f595b9f90e3fe4ce7e7a7edf9d64a9a6e776b9b3b79de1d6d9239fb72924bc153cc382c7a93060184b7ff06417dc14783da5e1b5afe597e940358416caf7e0edb10df214175a6e817d7cefa61b8e6a783f87c985661c601757aa3865e0bde059ec9e8c27020520fa1cf7b251ba1999df1ae4392e95e940b984ecee46f1cd6046ab4a9f8c03ece0cbb8aa598974a6bfa000608747022f6cb8ee1e6266be87d6c449bba84981e0c29e79501ea1b4cf0e23527487b7c706237824f0c2e6c97ad84d58591648d2ae1f24f0c2853722057d9cb7526185f43dd081172e411fe79d6a23f8b4b54181810ebc7029eb386f37e0909e7e109cc3339cc073615006281616fb2c7305fda0de889acb8a051fa4e85ffb0a717d884c3b57d0139aacf5ce77ada8410182da7cb84c3357d00b94ca97eef977ac337d950205a17db8f0e86c6923c0cb4267e91dfed87dc4f9bb45761c9cad47681f26bc9ee7212961883ebaeff0a1d5e2b783d03e5c82117d7f484f69ba468183d03e5c82107d9a35f8c3bdefd0e7d97693c23ff02b7f1f722b56d8f0f28e47565fffde3f29dc3ed8e92bbe9fa654145c03ce76f8078d5efb70f1d6e9fbb47d4ff02167eafbe1b53c7aedc3c547d16bad760ade10bcc3f740af7dd878277a9ddd33f3fb82afd11a811ceeb5ffc517507cc87825faecbec36ff96e4ce2eeb6f99010c8e1c60ca98739023bf890c8eb25ec98ad773312775be0041ed6f361e3bcd32bb5d6ffc72d82d79942e26e1bbc9e477d3e6c5c16bd79c75b34bdd5e1337d89c016f2f57c03ebf9d0e96dabdd7e5aae74b2f6564d6f5ba0d610d20f00f579c0f0882c3ef7de2dd16fd5f48e77bee77aeb32695a21b003de5219e03eea89e17c07cf0ce423a45914bceffca53dfeb5abf2f7f7fc4d074e9e35ebf7db076acff67f69c7ddab33ba426020dc6f1fec31456378eb8f599ecdbe785be7873df0757af5ebb47324b367391076fa0f9f923f2a4b677a879677da55867afc2838b4f7b1d77a1e58ec7c68e720d805977edff66e372227f0de7e4cb8e207687960bc857afc68385ce5aced93750a1e767476f249f07149f41f7fd1f46f7f9298d4558ddb076bfbb67f75e0d5d75a7f4c6028ec5a1cbea25c37dd39ebfc5adf0e737ce51125b239cbc4a06b83be3ef89daa08e5b931f4ca7521f7dcb3bb4f9bb8f251f4dc91c9094a610c34edc1824fe3350a7492ed34f05afeb5afc355fc7fcd98c064d1fbb6a61757a3ef68780703059f8fae469bed44fcfaaecebbf14283239b798e5ee6e4275f3b5fe834e6c8c8dc6b9d7ddc1d3fbf8368f83fd217084c043b5d68a22fe29c758e8e7cca8370e6fe8d4705285ea9a14bf2e1d986b4ceff0861fd848426fa4fbf995ff0bd9d683e895e4412afa3dd810c7d671c12205b3f1d2cfa239f8791c82baa17c1c7bd0a5c7eac6a3daf499d1f16ce33a31f45993a4f602a580847fec7ff92dd8d029b8f7cdbabc0ebf8f71fafc8e5d3d14bf191efaab95c5f2384f553e37b9d9e2398a2a318cedafb94b9e7329dfdd05e35ba9a1dcad877a4359d2330352cfa239fb7f35ab56f94f520f36de088edd07e58b34d3fe31f41d8233f33ec82dc76ea5ba3c99db43c51f22c415f22a37c70c6bed85ea92e8dcf8c7bc958c1379717364c4d7e8dc0cc70a3894fbbc6bedaa4d2f02d73cf3beb8e3f6c21b4576acd24eb1ae35e36d13bd16d1afbe400a3f139c42f1adfda966dace5b5ce26ea9b99e89d2079570cbd10ff55c7e7e49519d2f7e0ccbd2fa3c239a42fb7d7de24eb0e2e9c9fe495133f7a90bc2b8e8b79bdbeedecdade96f37202cf9766a6e7769527784dd9c411f8e4b146563b4b70f9c260d1f4d6f6ae85f936436d5f3a1877c7253a7c3aba14d7cfc482ef74dec1e58b86d7ab1ce6ffcc24aa5c2949d99ef8c3a2e7441e8effda49b7b3ae31e9eba7cb2664edf3044a8137a3f04ded82f06f5430e28baf89cb1d8ca5fd4c2728c5f53395e09bcb0f341476d1954a4ff852437dbe71ab72da5e07a3734ba0ac98dd85db99d6dd99a91716c9fa778b2aaedd246005eed43adc1df72c61aa0a47209f098840b8d4c59d6cd227c732a3867cce834e6bfb4a173cb3f7eae679add4510256a95afc5c559866865dd9f0f5e0f1526566c0e7a534b1b3bb1facbd4c5332d39582cb570f677d0fff90ebbb111d7e884a3bf78cc351defbce1b5b2438fb205edad399862b698a70afa458d66115b3b83b33f35d02979707bb3f87b82cfefd0f743ee7d64e7e38ec1e91adf9b2d5b929796dcea7aa70eb2c7fedfa77da24e8ec34da14017fff3f37e2dfff00593ff8b173bda87b08872ef59acdeaeecccc57a5ebf2eb84f9f5005865567767666ef2e58c3deaf200d84529756e56b133f375f5a3fb0e008ba846d68ecfd21ccc25f8eedc3beca403c002dc333f8fbb33856436f65c6b9b8cbd5e240040490c3e2b6e5a0ad9a8ab533d53c61000301946a8af53011422f8ee7e798cc202a004b80cf7d783b542f455d8280e9db6f90984041e008562d6ec536e9019456182ef94e990c003a048b4cececd9ba8eba7f076a43dd75b974d0cb2420080f950d1c6ed03f1321548e1d3f574bbcd093c84f600cc896e472f52c1142e7884f600cc8fd274a6c850fede7f974a02a13d00b3a179c6fc81dab35402a50dcc46680fc02c18576fc7a5f5b59426f83cb4275d48b30000a15044fbec284a3d128387e36badb0a30e8009c877c24d78a0c4ac947f064e169fcec31400c008f29d70a7a9644a177cbea32e6d710202eb7900066334123fcb5aa192b172623dd6f3000c87cbd865aedbfbb1227806eb79007692d7db0f2dcc35d462aaff1f5906f579003a94596f1f863587efa1dbb51791c403a0dc7afb30ac0b1e493c0054a39ba46b90652a3bb223596fada8982e130081a153bddc5c5ed8a00ab0eef03d784a8ec9dc633416080a93917fbd2ab13395099ee964ee093beb4010d8cec80f7c0f2480e46aebb452748a00f01416fbad43f5d35431628edd4caeb6cf2aa54f10009ec13df2b70ed44e9200449db3bbf7dae6794d38a012f883227de1d6c18563240471076b43f4c017a4899d11277806a207ae2351ec8c48c133103d7015a962672a2dcb8d822f1836db00d7c8137442c5ce88153cd33c543b893a3d7085bcf426241b3f0cb1217d3fa8d303e948a9b38fc309c133c9d5cd93265c7a8f001006b788973d8bae289c113c93ac6f2ea938fa0867d1032134b5a2179b07f2d3939dc029c133c9fa778b2aae5f86e841b554b7c5751e4427ed0691cfc7e3fdf48ad608800ae0493546eccbae899d71cee1fb41320fd846525ffc2c382d78a69bcc63d1270440793479f2b22bc9b961382f7806eb7a502e6eaed707e1dc1a7e109d757dbc8cce3c50341cc2bbba5e1f84170edf4f726df398a2e814dc1ecc891721fc76bc133c9387f8b5da07987f0f6681b3f03c42da1757efc74bc1f740161f4c49333ff6a9e2b97365e2b5e099aedb7f64dc7e89001882cfaede8ff782efd129df4527b0b607dbf0ded5fb0946f00cbb7d14c5a7cdd31c83358009fae812a5b5d77d77f57e82127c8fe45a7bd57ce3efc1ed43c5d4d5957ed9a54d2f4511a4e07ba084171c4185ef83085af00c87f914d54f6226bed718a1d339ca6a67f930530a98e005df03eb7b3fd1a4ce531a9f09699d3e0a087e1b10be1f40e88381e08700e1bb09843e1a087e0c10be13f4d6e8e721f4d140f0139227f7e27805597d512019372510fc0c70398f54745469bd42c03a791b2c99f25a8075f47981e0e7e07eb81f1d81eb974ec7cd6bfa52f399850d023301c11744b2de5a89227d0c6bfd42699a24dc2552fa02dcbc1820f88249d67542716b95287a41915e25302d4df3d0dc887576214deb97b0362f1608be443ae24f57229dad22ec1f49c7c9893e3625b53588bc3c20788b70d84f11995fea48e809bf3cf196e92be67aac215cb707045f11b9fb537b298ad46a16d121cf1f0079981e6574358bf4256ad736e0e2d500c10ba21301e8a58868298b947908b839a5472bda30bf995fd955ca8c832f23ab2e05085e387c8026c5d12269bd444a1d323fb144f1e7d51fbcc10729363ac2d65fc44a374c926d0d9d6eb281e01da5b324682d9a1f6112c77a31d56a31329f678a769b9fea62e755da3c1c54f7c1302e61785fa8b990f34fa81169ba93916ee682a6a869926aecd64d84e46ef2ffd531a1d400c9c4150000000049454e44ae426082, 82, 3, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `stat`
--

CREATE TABLE `stat` (
  `StatusID` int(11) NOT NULL,
  `StatusName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `stat`
--

INSERT INTO `stat` (`StatusID`, `StatusName`) VALUES
(1, 'Новая'),
(3, 'Решена'),
(4, 'Отклонена');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `UserID` int(20) NOT NULL,
  `UserName` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserSurname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserMiddleName` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `UserLogin` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserPassword` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserPassword_Confirm` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserEmail` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UserAdmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`UserID`, `UserName`, `UserSurname`, `UserMiddleName`, `UserLogin`, `UserPassword`, `UserPassword_Confirm`, `UserEmail`, `UserAdmin`) VALUES
(80, 'admin', 'admin', NULL, 'admin', '21232f297a57a5a743894a0e4a801fc3', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin', 1),
(81, 'vvv', 'vvv', 'vvv', 'vvv', '4786f3282f04de5b5c7317c490c6d922', '4786f3282f04de5b5c7317c490c6d922', 'vvv@b', 0),
(82, 'ddd', 'ddd', 'ddd', 'ddd', '77963b7a931377ad4ab5ad6a9cd718aa', '77963b7a931377ad4ab5ad6a9cd718aa', 'ddd@d', 0),
(83, 'САНЯ', 'САНЯ', 'САНЯ', 'SANYA', '202cb962ac59075b964b07152d234b70', '202cb962ac59075b964b07152d234b70', 'SANYA2S2@S', 0),
(84, 'zzz', 'zzz', 'zzz', 'zzz', 'f3abb86bd34cf4d52698f14c0da1dc60', 'f3abb86bd34cf4d52698f14c0da1dc60', 'zzz@z', 0),
(85, 'bbb', 'bbb', 'bbb', 'bbb', '08f8e0260c64418510cefb2b06eee5cd', '08f8e0260c64418510cefb2b06eee5cd', 'bbb@b', 0),
(86, 'mmm', 'mmm', 'mmm', 'mmm', 'c4efd5020cb49b9d3257ffa0fbccc0ae', 'c4efd5020cb49b9d3257ffa0fbccc0ae', 'mmm@m', 0),
(88, 'ooo', 'ooo', 'ooo', 'ooo', '7f94dd413148ff9ac9e9e4b6ff2b6ca9', '7f94dd413148ff9ac9e9e4b6ff2b6ca9', 'ooo@o', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Индексы таблицы `demands`
--
ALTER TABLE `demands`
  ADD PRIMARY KEY (`DemandID`),
  ADD KEY `news_ibfk_1` (`DemandUserID`),
  ADD KEY `NewsCategoryID` (`DemandCategoryID`),
  ADD KEY `DemandStatusID` (`DemandStatusID`);

--
-- Индексы таблицы `stat`
--
ALTER TABLE `stat`
  ADD PRIMARY KEY (`StatusID`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `demands`
--
ALTER TABLE `demands`
  MODIFY `DemandID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `stat`
--
ALTER TABLE `stat`
  MODIFY `StatusID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `demands`
--
ALTER TABLE `demands`
  ADD CONSTRAINT `demands_ibfk_1` FOREIGN KEY (`DemandUserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `demands_ibfk_2` FOREIGN KEY (`DemandCategoryID`) REFERENCES `category` (`CategoryID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `demands_ibfk_3` FOREIGN KEY (`DemandStatusID`) REFERENCES `stat` (`StatusID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;