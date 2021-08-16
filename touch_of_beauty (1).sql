-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 19, 2021 at 11:03 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `touch_of_beauty`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_profile`
--

CREATE TABLE `accounts_profile` (
  `id` int(11) NOT NULL,
  `username` varchar(200) DEFAULT NULL,
  `firstname` varchar(200) DEFAULT NULL,
  `lastname` varchar(200) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `accounts_profile`
--

INSERT INTO `accounts_profile` (`id`, `username`, `firstname`, `lastname`, `email`, `phone`, `profile_pic`, `created_date`, `user_id`) VALUES
(1, 'RiyaRanjit', NULL, NULL, NULL, NULL, 'static/images/touchup1.jpg', '2021-04-02 16:59:03.518257', 1),
(14, 'Pradip', 'Pradip', 'Kandel', 'pradip1@gmail.com', '9812345666', 'static/uploads/patient2.jpg', '2021-04-10 11:58:30.785034', 14),
(32, 'Vedant', 'Vedant', 'Ranjit', 'ved@gmail.com', '123456789', 'static/uploads/IMG20190522172344_Mco3yk0.jpg', '2021-04-19 01:35:23.584164', 32);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add services2', 7, 'add_services2'),
(26, 'Can change services2', 7, 'change_services2'),
(27, 'Can delete services2', 7, 'delete_services2'),
(28, 'Can view services2', 7, 'view_services2'),
(29, 'Can add appointment2', 8, 'add_appointment2'),
(30, 'Can change appointment2', 8, 'change_appointment2'),
(31, 'Can delete appointment2', 8, 'delete_appointment2'),
(32, 'Can view appointment2', 8, 'view_appointment2'),
(33, 'Can add profile', 9, 'add_profile'),
(34, 'Can change profile', 9, 'change_profile'),
(35, 'Can delete profile', 9, 'delete_profile'),
(36, 'Can view profile', 9, 'view_profile'),
(37, 'Can add services2', 10, 'add_services2'),
(38, 'Can change services2', 10, 'change_services2'),
(39, 'Can delete services2', 10, 'delete_services2'),
(40, 'Can view services2', 10, 'view_services2'),
(41, 'Can add teams', 11, 'add_teams'),
(42, 'Can change teams', 11, 'change_teams'),
(43, 'Can delete teams', 11, 'delete_teams'),
(44, 'Can view teams', 11, 'view_teams');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$bAjfHEROtilJ$qJoLXm7lYlKiI2fGW/RqpJ5xhDW+yPjs560L+z7quLw=', '2021-04-19 01:31:43.810837', 0, 'RiyaRanjit', '', '', '', 1, 1, '2021-04-02 16:59:03.259127'),
(14, 'pbkdf2_sha256$216000$o09sSVwJ7n5a$I+GugCioMk8bi6nQBY0h+kHnvY7Zh5u01G2Whw8hWGE=', '2021-04-10 12:12:35.222847', 0, 'Pradip', '', '', '', 1, 1, '2021-04-10 11:58:30.253632'),
(32, 'pbkdf2_sha256$216000$87i1nz33PNpt$rKRPp6D0Ex2L6hyLTRRn+qoVzj9pbxhMZw6gLbFYugU=', '2021-04-19 01:35:31.782126', 0, 'Vedant', '', '', '', 0, 1, '2021-04-19 01:35:22.660757');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(9, 'accounts', 'profile'),
(1, 'admin', 'logentry'),
(10, 'admins', 'services2'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'Saloon', 'appointment2'),
(7, 'Saloon', 'services2'),
(11, 'Saloon', 'teams'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-02 16:58:15.734924'),
(2, 'auth', '0001_initial', '2021-04-02 16:58:15.972320'),
(3, 'accounts', '0001_initial', '2021-04-02 16:58:16.564983'),
(4, 'Saloon', '0001_initial', '2021-04-02 16:58:16.748022'),
(5, 'admin', '0001_initial', '2021-04-02 16:58:16.872078'),
(6, 'admin', '0002_logentry_remove_auto_add', '2021-04-02 16:58:17.023999'),
(7, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-02 16:58:17.044993'),
(8, 'admins', '0001_initial', '2021-04-02 16:58:17.097445'),
(9, 'admins', '0002_auto_20210402_2243', '2021-04-02 16:58:17.137479'),
(10, 'contenttypes', '0002_remove_content_type_name', '2021-04-02 16:58:17.241542'),
(11, 'auth', '0002_alter_permission_name_max_length', '2021-04-02 16:58:17.309651'),
(12, 'auth', '0003_alter_user_email_max_length', '2021-04-02 16:58:17.347425'),
(13, 'auth', '0004_alter_user_username_opts', '2021-04-02 16:58:17.359503'),
(14, 'auth', '0005_alter_user_last_login_null', '2021-04-02 16:58:17.435873'),
(15, 'auth', '0006_require_contenttypes_0002', '2021-04-02 16:58:17.439799'),
(16, 'auth', '0007_alter_validators_add_error_messages', '2021-04-02 16:58:17.461138'),
(17, 'auth', '0008_alter_user_username_max_length', '2021-04-02 16:58:17.496833'),
(18, 'auth', '0009_alter_user_last_name_max_length', '2021-04-02 16:58:17.531252'),
(19, 'auth', '0010_alter_group_name_max_length', '2021-04-02 16:58:17.574627'),
(20, 'auth', '0011_update_proxy_permissions', '2021-04-02 16:58:17.605795'),
(21, 'auth', '0012_alter_user_first_name_max_length', '2021-04-02 16:58:17.647549'),
(22, 'sessions', '0001_initial', '2021-04-02 16:58:17.695058'),
(23, 'admins', '0003_delete_services2', '2021-04-04 02:17:49.129661'),
(24, 'Saloon', '0002_auto_20210404_1900', '2021-04-04 13:15:42.546275'),
(25, 'accounts', '0002_auto_20210404_1939', '2021-04-04 13:54:34.925964'),
(26, 'Saloon', '0003_auto_20210404_1939', '2021-04-04 13:54:35.001124'),
(27, 'Saloon', '0004_auto_20210404_2015', '2021-04-04 14:30:08.827926'),
(28, 'accounts', '0003_auto_20210405_1509', '2021-04-05 09:26:19.845287');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0viz484qpzlzlitaeoo365b4puyeumxy', '.eJxVjEEOwiAQRe_C2pAyBQou3XsGMgOMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIsrDj9boTxkesO0h3rrcnY6rrMJHdFHrTLa0v5eTncv4OCvXxr0ATIxhEzuGmA5F12icbsWWkzGM9Os1NWMUTyoBSwNtbwBGQjjqN4fwDjJDeH:1lT3aY:iIt3bqQRgla9nuWdlYBXdGlzqvHRKWCgFKJKKIIaPQM', '2021-04-18 14:18:54.209035'),
('anppnc3sv42qxzzfrbiqa14gfxadn5be', '.eJxVjEEOwiAQRe_C2pAyBQou3XsGMgOMVA0kpV0Z765NutDtf-_9lwi4rSVsPS9hTuIsrDj9boTxkesO0h3rrcnY6rrMJHdFHrTLa0v5eTncv4OCvXxr0ATIxhEzuGmA5F12icbsWWkzGM9Os1NWMUTyoBSwNtbwBGQjjqN4fwDjJDeH:1lT2kh:ZRoK_i4c2GyN1kxSP08uUMPG49tes07ugc9eJp2joAo', '2021-04-18 13:25:19.282398');

-- --------------------------------------------------------

--
-- Table structure for table `saloon_appointment2`
--

CREATE TABLE `saloon_appointment2` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `Service` varchar(30) DEFAULT NULL,
  `AppointDate` date DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `Desc` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saloon_appointment2`
--

INSERT INTO `saloon_appointment2` (`id`, `Name`, `Email`, `Service`, `AppointDate`, `Phone`, `Desc`, `user_id`) VALUES
(20, 'Pradip', 'pradip@gmail.com', 'Hair Cut', '2021-11-25', '9812283888', 'simple haircut', 14),
(39, 'Vedant', 'ved@gmail.com', 'Hair Cut', '2021-06-24', '123456789', 'Simple haircut', 32);

-- --------------------------------------------------------

--
-- Table structure for table `saloon_services2`
--

CREATE TABLE `saloon_services2` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saloon_services2`
--

INSERT INTO `saloon_services2` (`id`, `name`, `price`, `image`) VALUES
(7, 'Threading', 'Rs.80', 'static/uploads/threading_y7450RF.jpg'),
(8, 'Facial', 'Rs.1000', 'static/uploads/facial_7z4K9hD.jpg'),
(9, 'Manicure Pedicure', 'Rs.1500', 'static/uploads/manipedi.jpg'),
(10, 'Hair Cut', 'Rs.350', 'static/uploads/haircut.jpg'),
(11, 'Hair Color', 'Rs.3400', 'static/uploads/hcolour.jpg'),
(26, 'MakeUp', 'Rs.4000', 'static/uploads/bridalmakeup_J8Fa13r.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `saloon_teams`
--

CREATE TABLE `saloon_teams` (
  `id` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `expert` varchar(100) DEFAULT NULL,
  `experience` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `saloon_teams`
--

INSERT INTO `saloon_teams` (`id`, `image`, `name`, `expert`, `experience`) VALUES
(6, 'static/uploads/20200120_104943_iDs4l4q.jpg', 'Richa Shrestha', 'Facial and Hair', '5years+'),
(10, 'static/uploads/20200120_180810.jpg', 'Sharmila Sharma', 'Manicure Pedicure', '7years+'),
(13, 'static/uploads/20200124_100135.jpg', 'Komal Gurung', 'Makeup and Color', '3years+');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `accounts_profile_user_id_49a85d32_uniq` (`user_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `saloon_appointment2`
--
ALTER TABLE `saloon_appointment2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `Saloon_appointment2_user_id_d13f07ba_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `saloon_services2`
--
ALTER TABLE `saloon_services2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saloon_teams`
--
ALTER TABLE `saloon_teams`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `saloon_appointment2`
--
ALTER TABLE `saloon_appointment2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `saloon_services2`
--
ALTER TABLE `saloon_services2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `saloon_teams`
--
ALTER TABLE `saloon_teams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_profile`
--
ALTER TABLE `accounts_profile`
  ADD CONSTRAINT `accounts_profile_user_id_49a85d32_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `saloon_appointment2`
--
ALTER TABLE `saloon_appointment2`
  ADD CONSTRAINT `Saloon_appointment2_user_id_d13f07ba_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
