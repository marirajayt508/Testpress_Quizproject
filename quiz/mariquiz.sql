-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2021 at 08:32 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mariquiz`
--

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
(1, 'pbkdf2_sha256$216000$0KqZ1aVAoMBu$SojsKc3EzUkY90wxR8avAb99E0mUOeUSBmvCHzbxpWM=', '2021-02-16 10:26:26.132168', 1, 'admin', '', '', '', 1, 1, '2021-02-16 10:24:05.128902');

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-02-16 10:27:03.947906', '1', 'Course object (1)', 1, '[{\"added\": {}}]', 1, 1),
(2, '2021-02-16 10:37:46.705141', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(3, '2021-02-16 10:37:58.869234', '0', 'Qustion object (0)', 3, '', 2, 1),
(4, '2021-02-16 10:38:17.046620', '1', 'Course object (1)', 3, '', 1, 1),
(5, '2021-02-16 10:53:04.211233', '2', 'Course object (2)', 1, '[{\"added\": {}}]', 1, 1),
(6, '2021-02-16 11:47:17.809778', '3', 'Course object (3)', 1, '[{\"added\": {}}]', 1, 1),
(7, '2021-02-16 14:02:05.677017', '3', 'Course object (3)', 3, '', 1, 1),
(8, '2021-02-16 14:02:05.867002', '2', 'Course object (2)', 3, '', 1, 1),
(9, '2021-02-16 14:02:44.248296', '4', 'Course object (4)', 1, '[{\"added\": {}}]', 1, 1),
(10, '2021-02-16 14:31:40.373218', '5', 'Course object (5)', 1, '[{\"added\": {}}]', 1, 1),
(11, '2021-02-16 14:44:22.068683', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(12, '2021-02-16 14:49:45.569842', '0', 'Qustion object (0)', 2, '[{\"changed\": {\"fields\": [\"Answer\"]}}]', 2, 1),
(13, '2021-02-16 14:59:52.436304', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(14, '2021-02-17 04:07:50.708915', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(15, '2021-02-17 04:10:32.911660', '0', 'Qustion object (0)', 3, '', 2, 1),
(16, '2021-02-17 04:10:32.971648', '0', 'Qustion object (0)', 3, '', 2, 1),
(17, '2021-02-17 04:10:33.031647', '0', 'Qustion object (0)', 3, '', 2, 1),
(18, '2021-02-17 04:10:51.180798', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(19, '2021-02-17 04:14:05.224719', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(20, '2021-02-17 06:05:56.242312', '0', 'Qustion object (0)', 3, '', 2, 1),
(21, '2021-02-17 06:05:56.478871', '0', 'Qustion object (0)', 3, '', 2, 1),
(22, '2021-02-17 06:06:28.444100', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(23, '2021-02-17 06:08:13.197013', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(24, '2021-02-17 06:13:16.158131', '0', 'Qustion object (0)', 3, '', 2, 1),
(25, '2021-02-17 06:13:16.214145', '0', 'Qustion object (0)', 3, '', 2, 1),
(26, '2021-02-17 06:14:01.613377', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(27, '2021-02-17 06:14:50.741105', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(28, '2021-02-17 06:38:41.484372', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(29, '2021-02-17 06:59:48.158950', '6', 'Course object (6)', 1, '[{\"added\": {}}]', 1, 1),
(30, '2021-02-17 06:59:59.862169', '0', 'Qustion object (0)', 3, '', 2, 1),
(31, '2021-02-17 06:59:59.959729', '0', 'Qustion object (0)', 3, '', 2, 1),
(32, '2021-02-17 06:59:59.998889', '0', 'Qustion object (0)', 3, '', 2, 1),
(33, '2021-02-17 07:00:32.939535', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(34, '2021-02-17 07:00:53.809965', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(35, '2021-02-17 07:03:45.009879', '0', 'Qustion object (0)', 3, '', 2, 1),
(36, '2021-02-17 07:03:45.115632', '0', 'Qustion object (0)', 3, '', 2, 1),
(37, '2021-02-17 07:04:12.577073', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(38, '2021-02-17 07:04:38.732197', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(39, '2021-02-17 07:06:19.003193', '0', 'Qustion object (0)', 3, '', 2, 1),
(40, '2021-02-17 07:06:19.105568', '0', 'Qustion object (0)', 3, '', 2, 1),
(41, '2021-02-17 07:12:51.304163', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(42, '2021-02-17 07:22:40.349475', '0', 'Qustion object (0)', 1, '[{\"added\": {}}]', 2, 1),
(43, '2021-02-17 07:48:04.791350', '7', 'Course object (7)', 1, '[{\"added\": {}}]', 1, 1),
(44, '2021-02-17 08:25:41.388855', '3', 'Qustion object (3)', 1, '[{\"added\": {}}]', 2, 1),
(45, '2021-02-17 08:30:19.344829', '3', 'Qustion object (3)', 3, '', 2, 1),
(46, '2021-02-17 13:02:19.992472', '4', 'Course object (4)', 2, '[{\"changed\": {\"fields\": [\"Pass precent\"]}}]', 1, 1);

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
(1, 'quizapp', 'course'),
(2, 'quizapp', 'qustion');

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
(1, 'contenttypes', '0001_initial', '2021-02-16 10:21:52.423208'),
(2, 'auth', '0001_initial', '2021-02-16 10:21:55.400426'),
(3, 'admin', '0001_initial', '2021-02-16 10:22:07.315528'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-02-16 10:22:10.152865'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-02-16 10:22:10.233861'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-02-16 10:22:11.209393'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-02-16 10:22:12.916311'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-02-16 10:22:13.072312'),
(9, 'auth', '0004_alter_user_username_opts', '2021-02-16 10:22:13.146316'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-02-16 10:22:14.374314'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-02-16 10:22:14.460940'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-02-16 10:22:14.531940'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-02-16 10:22:14.741956'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-02-16 10:22:15.159943'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-02-16 10:22:15.336938'),
(16, 'auth', '0011_update_proxy_permissions', '2021-02-16 10:22:15.394945'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-02-16 10:22:15.664964');

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
('od0tf4aadk70gbe39883bu6i0jdf3oi0', '.eJxVjEEOwiAQRe_C2hBKYaAu3fcMZGYAqRqalHZlvLsh6UK3_7333yLgsZdwtLSFJYqrGMTldyPkZ6odxAfW-yp5rfu2kOyKPGmT8xrT63a6fwcFW-m184OxySq07HyGRAQZ2KIy3gJowwlBE5DTOE7WaZ9ZTTFHM2ri7MTnC-JfOBE:1lBxYo:JnE5m4_7I_93OOPCynJfFvIdh704Nf-DccyhrO0Gsi8', '2021-03-02 10:26:26.241169');

-- --------------------------------------------------------

--
-- Table structure for table `quizapp_course`
--

CREATE TABLE `quizapp_course` (
  `id` int(11) NOT NULL,
  `quiz_name` varchar(10000) NOT NULL,
  `pass_precent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizapp_course`
--

INSERT INTO `quizapp_course` (`id`, `quiz_name`, `pass_precent`) VALUES
(4, 'Time Speed Distance', 100),
(5, 'Django', 30),
(6, 'Students', 70),
(7, 'html', 20);

-- --------------------------------------------------------

--
-- Table structure for table `quizapp_qustion`
--

CREATE TABLE `quizapp_qustion` (
  `qustion` text NOT NULL,
  `option1` text NOT NULL,
  `option2` text NOT NULL,
  `option3` text NOT NULL,
  `option4` text NOT NULL,
  `answer` text NOT NULL,
  `explains` text NOT NULL,
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `c_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quizapp_qustion`
--

INSERT INTO `quizapp_qustion` (`qustion`, `option1`, `option2`, `option3`, `option4`, `answer`, `explains`, `id`, `course_id`, `c_name`) VALUES
('What is Addtion 2+2 ?', '1', '2', '3', '4', '4', 'The Addtion Value of 2+2 is 4.', 1, 4, 'Django'),
('What is Answer of 1+1 ?', '1', '2', '3', '4', '2', 'The Addtion Value of 1+1 is 2.', 2, 4, 'Django');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `quizapp_course`
--
ALTER TABLE `quizapp_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quizapp_qustion`
--
ALTER TABLE `quizapp_qustion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `quizapp_course`
--
ALTER TABLE `quizapp_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `quizapp_qustion`
--
ALTER TABLE `quizapp_qustion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
