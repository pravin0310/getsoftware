#
# TABLE STRUCTURE FOR: acm_account
#

DROP TABLE IF EXISTS `acm_account`;

CREATE TABLE `acm_account` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: acm_invoice
#

DROP TABLE IF EXISTS `acm_invoice`;

CREATE TABLE `acm_invoice` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(20) NOT NULL,
  `total` float NOT NULL,
  `vat` float NOT NULL,
  `discount` float NOT NULL,
  `grand_total` float NOT NULL,
  `paid` float NOT NULL,
  `due` float NOT NULL,
  `created_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: acm_invoice_details
#

DROP TABLE IF EXISTS `acm_invoice_details`;

CREATE TABLE `acm_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `quantity` float NOT NULL,
  `price` float NOT NULL,
  `subtotal` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `acm_invoice_details` (`id`, `invoice_id`, `account_id`, `description`, `quantity`, `price`, `subtotal`) VALUES ('70', '14', '8', 'Visit', '1', '50', '50');
INSERT INTO `acm_invoice_details` (`id`, `invoice_id`, `account_id`, `description`, `quantity`, `price`, `subtotal`) VALUES ('71', '15', '8', 'Doctor visit fee', '1', '500', '500');
INSERT INTO `acm_invoice_details` (`id`, `invoice_id`, `account_id`, `description`, `quantity`, `price`, `subtotal`) VALUES ('73', '16', '8', 'This is demo doctor', '3', '600', '1800');
INSERT INTO `acm_invoice_details` (`id`, `invoice_id`, `account_id`, `description`, `quantity`, `price`, `subtotal`) VALUES ('74', '17', '8', 'Doctor Visit', '1', '5000', '5000');
INSERT INTO `acm_invoice_details` (`id`, `invoice_id`, `account_id`, `description`, `quantity`, `price`, `subtotal`) VALUES ('75', '17', '9', 'Bed Fee', '1', '4000', '4000');


#
# TABLE STRUCTURE FOR: acm_payment
#

DROP TABLE IF EXISTS `acm_payment`;

CREATE TABLE `acm_payment` (
  `id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `pay_to` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `amount` float NOT NULL,
  `created_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `acm_payment` (`id`, `account_id`, `pay_to`, `description`, `amount`, `created_id`, `date`, `status`) VALUES ('8', '10', 'Alamin', 'This is demo doctor This is demo doctor This is demo doctor This is demo doctor ', '500', '2', '2017-01-16', '1');
INSERT INTO `acm_payment` (`id`, `account_id`, `pay_to`, `description`, `amount`, `created_id`, `date`, `status`) VALUES ('9', '11', 'Tanzil', 'This is demo doctor This is demo doctor This is demo doctor This is demo doctor', '400', '2', '2017-01-16', '1');
INSERT INTO `acm_payment` (`id`, `account_id`, `pay_to`, `description`, `amount`, `created_id`, `date`, `status`) VALUES ('10', '10', 'Jon Dye', 'This is demo doctor This is demo doctor This is demo doctor This is demo doctor ', '200', '27', '2017-01-17', '1');
INSERT INTO `acm_payment` (`id`, `account_id`, `pay_to`, `description`, `amount`, `created_id`, `date`, `status`) VALUES ('11', '10', 'Kanye', 'This is demo doctor This is demo doctor This is demo doctor This is demo doctor ', '500', '27', '2017-01-16', '1');
INSERT INTO `acm_payment` (`id`, `account_id`, `pay_to`, `description`, `amount`, `created_id`, `date`, `status`) VALUES ('12', '11', 'MR. RAHIM', '', '10000', '27', '2017-02-27', '1');


#
# TABLE STRUCTURE FOR: admission_details
#

DROP TABLE IF EXISTS `admission_details`;

CREATE TABLE `admission_details` (
  `a_id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `admission_details` (`a_id`, `patient_id`, `type`, `date`, `doctor_id`, `room_id`, `status`) VALUES ('1', 'MED10001', 'in', '2020-03-17', '1', '4', '1');
INSERT INTO `admission_details` (`a_id`, `patient_id`, `type`, `date`, `doctor_id`, `room_id`, `status`) VALUES ('2', 'MED10002', 'in', '2020-03-03', '1', '2', '1');
INSERT INTO `admission_details` (`a_id`, `patient_id`, `type`, `date`, `doctor_id`, `room_id`, `status`) VALUES ('3', 'med10003', 'in', '2020-03-07', '1', '3', '1');


#
# TABLE STRUCTURE FOR: anaesthesian_note
#

DROP TABLE IF EXISTS `anaesthesian_note`;

CREATE TABLE `anaesthesian_note` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `operation_date` date NOT NULL,
  `operation_time` time NOT NULL,
  `operation_name` text NOT NULL,
  `indicators` text NOT NULL,
  `operation_procedure` text NOT NULL,
  `pre_load` text NOT NULL,
  `premedications` text NOT NULL,
  `advice` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `anaesthesian_note` (`id`, `patient_id`, `staff_id`, `operation_date`, `operation_time`, `operation_name`, `indicators`, `operation_procedure`, `pre_load`, `premedications`, `advice`, `status`) VALUES ('1', 'MED10008', '43', '2020-04-21', '10:30:00', 'test', 'sample Test xfvdf', 'sample Test', 'sample Test', 'sample Testsample Testsample Test', 'sample Test sampledsf', '1');


#
# TABLE STRUCTURE FOR: anaestisa_take_details
#

DROP TABLE IF EXISTS `anaestisa_take_details`;

CREATE TABLE `anaestisa_take_details` (
  `id` int(11) NOT NULL,
  `anaesthiesian_id` int(11) NOT NULL,
  `operation_date` date NOT NULL,
  `time` time NOT NULL,
  `bp` varchar(10) NOT NULL,
  `pr` varchar(255) NOT NULL,
  `rr` varchar(255) NOT NULL,
  `oxigen` varchar(255) NOT NULL,
  `iuf` varchar(255) NOT NULL,
  `drugs` varchar(255) NOT NULL,
  `count_of_test` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `anaestisa_take_details` (`id`, `anaesthiesian_id`, `operation_date`, `time`, `bp`, `pr`, `rr`, `oxigen`, `iuf`, `drugs`, `count_of_test`, `status`) VALUES ('1', '1', '2020-04-21', '12:30:00', '100', '45', '55', '55', '33', '55', '1', '1');
INSERT INTO `anaestisa_take_details` (`id`, `anaesthiesian_id`, `operation_date`, `time`, `bp`, `pr`, `rr`, `oxigen`, `iuf`, `drugs`, `count_of_test`, `status`) VALUES ('2', '1', '2020-04-21', '10:00:00', '120', '55', '43', '40', '43', '54', '2', '1');


#
# TABLE STRUCTURE FOR: appoinment_times
#

DROP TABLE IF EXISTS `appoinment_times`;

CREATE TABLE `appoinment_times` (
  `at_id` int(11) NOT NULL,
  `appoinment_time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('1', '08:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('2', '08:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('3', '08:40');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('4', '09:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('5', '09:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('6', '09:40');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('7', '10:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('8', '10:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('9', '10:40');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('10', '11:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('11', '11:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('12', '11:40');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('13', '12:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('14', '12:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('15', '12:40');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('16', '13:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('17', '13:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('18', '13:40');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('19', '14:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('20', '14:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('21', '14:40');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('22', '15:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('23', '15:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('24', '15:40');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('25', '16:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('26', '16:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('27', '16:40');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('28', '17:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('29', '17:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('30', '17:40');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('31', '18:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('32', '18:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('33', '18:40');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('34', '19:00');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('35', '19:20');
INSERT INTO `appoinment_times` (`at_id`, `appoinment_time`) VALUES ('36', '19:40');


#
# TABLE STRUCTURE FOR: appointment
#

DROP TABLE IF EXISTS `appointment`;

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `appointment_id` varchar(20) DEFAULT NULL,
  `patient_id` varchar(20) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `schedule_id` int(11) DEFAULT NULL,
  `serial_no` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `appoinment_time` varchar(50) NOT NULL,
  `problem` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL,
  `revisit_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('127', 'AZROM5LL', 'MED10002', '12', '2', NULL, NULL, '2020-02-10', '08:40', 'yh', '7', '2020-02-10 16:49:24', '1', '1', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('128', 'A60ITKFB', 'PHR2DQW0', '12', '2', '28', '1', '2020-02-12', '', 'fever', '2', '2020-02-12 00:00:00', '1', '0', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('130', 'ADR2EKSS', 'P3GWY7V3', '12', '2', '28', '2', '2020-02-24', '', 'df', '7', '2020-02-12 15:02:15', '1', '2', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('131', 'AR5LSAXU', 'ME10002', '12', '2', '29', '23', '2020-02-17', '', '', '7', '2020-02-14 10:12:19', '1', '1', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('132', 'AUYY5JIQ', 'ME10002', '12', '2', '30', '1', '2020-02-18', '', '', '7', '2020-02-14 10:18:12', '1', '1', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('133', 'AB1XBJ3X', 'ME10002', '12', '2', '31', '1', '2020-02-27', '', '', '7', '2020-02-25 10:23:54', '0', '1', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('134', 'AI7G6LFO', 'MED10145', '12', '2', '30', '1', '2020-02-29', '', 'fever', '7', '2020-02-25 09:21:28', '1', '1', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('135', 'A1CG16ZM', 'me10002', '12', '2', '32', '1', '2020-02-28', '', 'fever', '7', '2020-02-28 10:27:07', '1', '2', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('136', 'A5RUKD60', 'MED10143', '12', '2', '32', '2', '2020-02-28', '', 'fever', '7', '2020-02-28 13:39:39', '1', '2', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('137', 'ADM1Q8X6', 'med10001', '12', '1', '28', '1', '2020-03-04', '', '', '7', '2020-03-02 17:55:03', '1', '1', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('138', 'AVJEWSAQ', 'med10001', '27', '1', '28', '2', '2020-03-11', '', '', '7', '2020-03-11 06:31:35', '1', '2', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('140', 'AH88OMKB', 'med10003', '27', '1', '28', '1', '2020-03-11', '', '', '7', '2020-03-11 09:37:30', '1', '2', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('141', 'A1HV8IAY', 'med10005', '27', '1', '28', '3', '2020-03-18', '', '', '7', '2020-03-11 09:39:52', '1', '1', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('143', 'A1K4D8ZI', 'med10001', '27', '1', '28', '1', '2020-03-11', '', '', '7', '2020-03-11 09:09:22', '1', '2', '1');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('144', 'AC4E4TP0', 'med10007', '27', '1', '34', '1', '2020-03-12', '', '', '7', '2020-03-12 07:46:11', '1', '2', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('145', 'AWPS8R48', 'med10003', '27', '1', '32', '1', '2020-03-13', '', '', '7', '2020-03-13 10:20:13', '1', '2', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('146', 'A58TD0EH', 'med10003', '27', '1', '28', '1', '2020-03-13', '', '', '7', '2020-03-13 10:29:41', '1', '1', '1');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('147', 'AWP6MDZO', 'med10004', '27', '1', '32', '1', '2020-04-03', '', '', '7', '2020-04-03 14:13:53', '1', '1', '2');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('148', 'AI6B9DNO', 'med10006', '27', '1', '32', '2', '2020-04-03', '', '', '7', '2020-04-03 14:17:03', '1', '1', '2');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('149', 'AYQX11LZ', 'med10001', '27', '1', '32', '3', '2020-04-03', '', '', '7', '2020-04-03 14:27:53', '1', '1', '2');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('150', 'AY9JW3TV', 'med10003', '27', '1', '32', '4', '2020-04-03', '', '', '7', '2020-04-03 14:29:26', '1', '1', '2');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('151', 'A5KT2JE4', 'med10008', '27', '1', '32', '5', '2020-04-03', '', '', '7', '2020-04-03 14:31:13', '1', '1', '2');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('152', 'AL65E6BV', 'med10005', '27', '1', '32', '6', '2020-04-03', '', '', '7', '2020-04-03 14:35:35', '1', '1', '2');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('153', 'A74DUFDG', 'med10010', '27', '1', '32', '7', '2020-04-03', '', '', '7', '2020-04-03 14:37:12', '1', '1', '2');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('154', 'AKYWPBGF', 'med10001', '27', '1', '32', '1', '2020-04-24', '', '', '7', '2020-04-03 14:39:08', '1', '1', '2');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('155', 'AD57EQAK', 'med10004', '27', '1', '34', '1', '2020-04-09', '', '', '7', '2020-04-03 14:41:56', '1', '1', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('156', 'ACMFDKIB', 'med10006', '27', '1', '35', '1', '2020-04-13', '', '', '7', '2020-04-13 09:00:12', '1', '2', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('157', 'AXCMZM6B', 'med10008', '27', '1', '28', '1', '2020-04-18', '', '', '7', '2020-04-18 10:01:31', '1', '2', '0');
INSERT INTO `appointment` (`id`, `appointment_id`, `patient_id`, `department_id`, `doctor_id`, `schedule_id`, `serial_no`, `date`, `appoinment_time`, `problem`, `created_by`, `create_date`, `status`, `level`, `revisit_status`) VALUES ('158', 'A4PD983X', 'med10001', '27', '1', '30', '1', '2020-04-23', '', '', '7', '2020-04-23 10:41:56', '1', '2', '0');


#
# TABLE STRUCTURE FOR: bill
#

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `id` bigint(20) unsigned NOT NULL,
  `bill_id` varchar(20) DEFAULT NULL,
  `bill_type` varchar(20) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `admission_id` varchar(20) DEFAULT NULL,
  `discount` float DEFAULT 0,
  `tax` float DEFAULT 0,
  `total` float DEFAULT 0,
  `payment_method` varchar(10) DEFAULT NULL,
  `card_cheque_no` varchar(100) DEFAULT NULL,
  `receipt_no` varchar(100) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: bill_admission
#

DROP TABLE IF EXISTS `bill_admission`;

CREATE TABLE `bill_admission` (
  `id` int(11) unsigned NOT NULL,
  `admission_id` varchar(20) DEFAULT NULL,
  `patient_id` varchar(20) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `discharge_date` date DEFAULT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `policy_no` varchar(100) DEFAULT NULL,
  `agent_name` varchar(255) DEFAULT NULL,
  `guardian_name` varchar(255) DEFAULT NULL,
  `guardian_relation` varchar(255) DEFAULT NULL,
  `guardian_contact` varchar(255) DEFAULT NULL,
  `guardian_address` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: bill_advanced
#

DROP TABLE IF EXISTS `bill_advanced`;

CREATE TABLE `bill_advanced` (
  `id` int(11) unsigned NOT NULL,
  `admission_id` varchar(20) DEFAULT NULL,
  `patient_id` varchar(30) DEFAULT NULL,
  `amount` float DEFAULT 0,
  `payment_method` varchar(255) DEFAULT NULL,
  `cash_card_or_cheque` varchar(10) DEFAULT NULL COMMENT '1 cash, 2 card, 3 cheque',
  `receipt_no` varchar(100) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: bill_details
#

DROP TABLE IF EXISTS `bill_details`;

CREATE TABLE `bill_details` (
  `id` bigint(20) unsigned NOT NULL,
  `bill_id` varchar(20) DEFAULT NULL,
  `admission_id` varchar(20) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `quantity` float DEFAULT 0,
  `amount` float DEFAULT 0,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: bill_package
#

DROP TABLE IF EXISTS `bill_package`;

CREATE TABLE `bill_package` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `services` text DEFAULT NULL,
  `discount` float DEFAULT 0,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: bill_service
#

DROP TABLE IF EXISTS `bill_service`;

CREATE TABLE `bill_service` (
  `id` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` float DEFAULT 0,
  `amount` float DEFAULT 0,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: block
#

DROP TABLE IF EXISTS `block`;

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `block` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

#
# TABLE STRUCTURE FOR: bm_bed
#

DROP TABLE IF EXISTS `bm_bed`;

CREATE TABLE `bm_bed` (
  `id` int(11) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `room_type` varchar(255) NOT NULL,
  `block_id` int(11) NOT NULL,
  `charge` float NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: bm_bed_assign
#

DROP TABLE IF EXISTS `bm_bed_assign`;

CREATE TABLE `bm_bed_assign` (
  `id` int(11) NOT NULL,
  `serial` varchar(20) DEFAULT NULL,
  `patient_id` varchar(20) NOT NULL,
  `bed_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `assign_date` date NOT NULL,
  `discharge_date` date NOT NULL,
  `assign_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: case_details_by_nurse
#

DROP TABLE IF EXISTS `case_details_by_nurse`;

CREATE TABLE `case_details_by_nurse` (
  `id` int(11) NOT NULL,
  `nurse_id` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `case_details` text NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `case_details_by_nurse` (`id`, `nurse_id`, `patient_id`, `case_details`, `date`) VALUES ('1', '29', 'ME10002', 'high fever \r\n\r\n', '2020-02-20');


#
# TABLE STRUCTURE FOR: ci_sessions
#

DROP TABLE IF EXISTS `ci_sessions`;

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('0mbrfap4rk90ikq2dc31rgc0sq', '::1', '1584080106', '__ci_last_regenerate|i:1584080106;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('3dad77q02538c8qha1bp74tirn', '::1', '1584080724', '__ci_last_regenerate|i:1584080724;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('5mnr383560v157k3ve7i84ifmd', '::1', '1584080715', '__ci_last_regenerate|i:1584080715;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('b5bchq2l58gtavvls6hoohnla5', '::1', '1584080330', '__ci_last_regenerate|i:1584080330;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('c25n4sus77jeejsugarpmpvm71', '::1', '1584080700', '__ci_last_regenerate|i:1584080700;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('d0861lr39kb83uh90ne3pvcsf1', '::1', '1584080241', '__ci_last_regenerate|i:1584080241;');
INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('jip5lt1tlmobh47eeg0m2mjmho', '::1', '1584080724', '__ci_last_regenerate|i:1584080724;');


#
# TABLE STRUCTURE FOR: cm_patient
#

DROP TABLE IF EXISTS `cm_patient`;

CREATE TABLE `cm_patient` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `case_manager_id` int(11) NOT NULL,
  `ref_doctor_id` int(11) DEFAULT NULL,
  `hospital_name` varchar(255) DEFAULT NULL,
  `hospital_address` text DEFAULT NULL,
  `doctor_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: cm_status
#

DROP TABLE IF EXISTS `cm_status`;

CREATE TABLE `cm_status` (
  `id` int(11) NOT NULL,
  `critical_status` varchar(255) NOT NULL DEFAULT '1',
  `cm_patient_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: custom_sms_info
#

DROP TABLE IF EXISTS `custom_sms_info`;

CREATE TABLE `custom_sms_info` (
  `custom_sms_id` int(11) NOT NULL,
  `reciver` varchar(100) NOT NULL,
  `gateway` text NOT NULL,
  `message` text NOT NULL,
  `sms_date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('56', '9876543210', 'nexmo', 'Hello, Patient1 Patient1. \r\nYour ID: P6C7OZZR,  \r\nThank you for the registration.', '2020-01-20 08:08:50');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('57', '9876543210', 'nexmo', 'Hello, Patient2 Patient2. \r\nYour ID: PBYTASGQ,  \r\nThank you for the registration.', '2020-01-20 09:32:49');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('58', '9876543210', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Patient2 Patient2. \r\nYour ID: PBYTASGQ, Appointment ID: AWSG24K9, Serial:  and Appointment Date: 21 January 2020. \r\nThank you for the Appointment.', '2020-01-21 06:49:39');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('59', '0123456789', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Test Test. \r\nYour ID: P9XA38LW, Appointment ID: AXBF235V, Serial:  and Appointment Date: 21 January 2020. \r\nThank you for the Appointment.', '2020-01-21 10:58:44');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('60', '0123456789', 'nexmo', 'Doctor, Dr.Mesut  Alzain. \r\nHello, Test Test. \r\nYour ID: P9XA38LW, Appointment ID: AJJJL00L, Serial:  and Appointment Date: 21 January 2020. \r\nThank you for the Appointment.', '2020-01-21 11:01:03');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('61', '9876543210', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Patient2 Patient2. \r\nYour ID: PBYTASGQ, Appointment ID: AB4VS17U, Serial:  and Appointment Date: 22 January 2020. \r\nThank you for the Appointment.', '2020-01-22 06:03:25');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('62', '12345678', 'nexmo', 'Hello, df zx. \r\nYour ID: PA35WGE1,  \r\nThank you for the registration.', '2020-01-30 04:47:05');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('63', '9876543210', 'nexmo', 'Hello, for test . \r\nYour ID: PAC24PT8,  \r\nThank you for the registration.', '2020-02-06 11:44:12');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('64', '0123456789', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Test Test. \r\nYour ID: P9XA38LW, Appointment ID: A1NL7V6O, Serial:  and Appointment Date: 10 February 2020. \r\nThank you for the Appointment.', '2020-02-10 11:12:41');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('65', '9876543210', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, for test . \r\nYour ID: PAC24PT8, Appointment ID: ASDO3RNI, Serial:  and Appointment Date: 10 February 2020. \r\nThank you for the Appointment.', '2020-02-10 03:04:30');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('66', '123963854', 'nexmo', 'Hello, manuja vipin. \r\nYour ID: MED10002,  \r\nThank you for the registration.', '2020-02-10 12:17:54');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('67', '123963854', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, manuja vipin. \r\nYour ID: MED10002, Appointment ID: AZROM5LL, Serial:  and Appointment Date: 10 February 2020. \r\nThank you for the Appointment.', '2020-02-10 04:49:26');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('68', '12345678', 'nexmo', 'Hello, vipin mohan. \r\nYour ID: MED10002,  \r\nThank you for the registration.', '2020-02-11 05:47:47');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('69', '12345678', 'nexmo', 'Hello, manuja mohan. \r\nYour ID: MED10002,  \r\nThank you for the registration.', '2020-02-11 05:49:40');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('70', '12345678', 'nexmo', 'Hello, manuja mohan. \r\nYour ID: MED10002,  \r\nThank you for the registration.', '2020-02-11 05:51:09');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('71', '12345678', 'nexmo', 'Hello, manuja mohan. \r\nYour ID: MED10002,  \r\nThank you for the registration.', '2020-02-11 05:54:27');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('72', '01911112223333', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Jajia Jannat  Rahi. \r\nYour ID: PHR2DQW0, Appointment ID: A60ITKFB, Serial: 1 and Appointment Date: 12 February 2020. \r\nThank you for the Appointment.', '2020-02-12 10:20:28');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('73', '018111111111111', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Znakng  Xinaktar. \r\nYour ID: P3GWY7V3, Appointment ID: A596V7S1, Serial:  and Appointment Date: 12 February 2020. \r\nThank you for the Appointment.', '2020-02-12 02:59:46');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('74', '018111111111111', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Znakng  Xinaktar. \r\nYour ID: P3GWY7V3, Appointment ID: ADR2EKSS, Serial: 2 and Appointment Date: 12 February 2020. \r\nThank you for the Appointment.', '2020-02-12 03:02:18');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('75', '12345678', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, manuja mohan. \r\nYour ID: ME10002, Appointment ID: AR5LSAXU, Serial: 23 and Appointment Date: 17 February 2020. \r\nThank you for the Appointment.', '2020-02-14 10:12:21');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('76', '12345678', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, manuja mohan. \r\nYour ID: ME10002, Appointment ID: AUYY5JIQ, Serial: 1 and Appointment Date: 18 February 2020. \r\nThank you for the Appointment.', '2020-02-14 10:18:14');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('77', '12345678', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, manuja mohan. \r\nYour ID: ME10002, Appointment ID: AB1XBJ3X, Serial: 1 and Appointment Date: 14 February 2020. \r\nThank you for the Appointment.', '2020-02-14 10:23:56');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('78', '1213254', 'nexmo', 'Hello, vipin das. \r\nYour ID: MED10001,  \r\nThank you for the registration.', '2020-02-19 11:06:59');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('79', '2325', 'nexmo', 'Hello, manuja vc. \r\nYour ID: MED10002,  \r\nThank you for the registration.', '2020-02-21 11:53:15');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('80', '0968192686', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Noorjahan Yousuf. \r\nYour ID: MED10145, Appointment ID: AI7G6LFO, Serial: 1 and Appointment Date: 25 February 2020. \r\nThank you for the Appointment.', '2020-02-25 09:21:30');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('81', '0971897969', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, MUTUMBA MUUKA. \r\nYour ID: me10002, Appointment ID: A1CG16ZM, Serial: 1 and Appointment Date: 28 February 2020. \r\nThank you for the Appointment.', '2020-02-28 10:27:07');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('82', '0977753208', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Gladys Chisanga Sumbukeni. \r\nYour ID: MED10143, Appointment ID: A5RUKD60, Serial: 2 and Appointment Date: 28 February 2020. \r\nThank you for the Appointment.', '2020-02-28 01:39:39');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('83', '0971637680', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, judy mubili. \r\nYour ID: med10001, Appointment ID: ADM1Q8X6, Serial: 1 and Appointment Date: 04 March 2020. \r\nThank you for the Appointment.', '2020-03-02 05:55:05');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('84', '0971637680', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, judy mubili. \r\nYour ID: med10001, Appointment ID: AVJEWSAQ, Serial: 1 and Appointment Date: 10 March 2020. \r\nThank you for the Appointment.', '2020-03-10 06:31:37');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('85', '0971637680', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, judy mubili. \r\nYour ID: med10001, Appointment ID: AXJ2IXZ5, Serial: 1 and Appointment Date: 08 April 2020. \r\nThank you for the Appointment.', '2020-03-10 06:58:37');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('86', '0971637680', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, judy mubili. \r\nYour ID: med10001, Appointment ID: A3K4GPJB, Serial: 1 and Appointment Date: 25 March 2020. \r\nThank you for the Appointment.', '2020-03-11 08:48:44');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('87', '0971637680', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, judy mubili. \r\nYour ID: med10001, Appointment ID: A1I4YBJR, Serial: 1 and Appointment Date: 25 March 2020. \r\nThank you for the Appointment.', '2020-03-11 09:07:50');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('88', '0971637680', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, judy mubili. \r\nYour ID: med10001, Appointment ID: A1K4D8ZI, Serial: 1 and Appointment Date: 25 March 2020. \r\nThank you for the Appointment.', '2020-03-11 09:09:24');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('89', '0973089003', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, constance mweene. \r\nYour ID: med10003, Appointment ID: AH88OMKB, Serial: 1 and Appointment Date: 11 March 2020. \r\nThank you for the Appointment.', '2020-03-11 09:37:32');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('90', '0966909858', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Saboi Kalinda. \r\nYour ID: med10005, Appointment ID: A1HV8IAY, Serial: 3 and Appointment Date: 11 March 2020. \r\nThank you for the Appointment.', '2020-03-11 09:39:55');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('91', '0955783874', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Champo Mapoma. \r\nYour ID: med10007, Appointment ID: AC4E4TP0, Serial: 1 and Appointment Date: 12 March 2020. \r\nThank you for the Appointment.', '2020-03-12 07:46:11');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('92', '0973089003', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, constance mweene. \r\nYour ID: med10003, Appointment ID: AWPS8R48, Serial: 1 and Appointment Date: 13 March 2020. \r\nThank you for the Appointment.', '2020-03-13 10:20:15');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('93', '0973089003', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, constance mweene. \r\nYour ID: med10003, Appointment ID: A58TD0EH, Serial: 1 and Appointment Date: 25 March 2020. \r\nThank you for the Appointment.', '2020-03-13 10:29:42');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('94', '0977629938', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Abel  Mukulalwendo. \r\nYour ID: med10004, Appointment ID: AWP6MDZO, Serial: 1 and Appointment Date: 03 April 2020. \r\nThank you for the Appointment.', '2020-04-03 02:13:55');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('95', '0972190716', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Delphine Kibwimana. \r\nYour ID: med10006, Appointment ID: AI6B9DNO, Serial: 2 and Appointment Date: 03 April 2020. \r\nThank you for the Appointment.', '2020-04-03 02:17:05');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('96', '0971637680', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, judy mubili. \r\nYour ID: med10001, Appointment ID: AYQX11LZ, Serial: 3 and Appointment Date: 03 April 2020. \r\nThank you for the Appointment.', '2020-04-03 02:27:54');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('97', '0973089003', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, constance mweene. \r\nYour ID: med10003, Appointment ID: AY9JW3TV, Serial: 4 and Appointment Date: 03 April 2020. \r\nThank you for the Appointment.', '2020-04-03 02:29:27');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('98', '0974462662', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Bwalya .E Chulu. \r\nYour ID: med10008, Appointment ID: A5KT2JE4, Serial: 5 and Appointment Date: 03 April 2020. \r\nThank you for the Appointment.', '2020-04-03 02:31:14');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('99', '0966909858', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Saboi Kalinda. \r\nYour ID: med10005, Appointment ID: AL65E6BV, Serial: 6 and Appointment Date: 03 April 2020. \r\nThank you for the Appointment.', '2020-04-03 02:35:36');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('100', '0975171390', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Adeeba Khamisa. \r\nYour ID: med10010, Appointment ID: A74DUFDG, Serial: 7 and Appointment Date: 03 April 2020. \r\nThank you for the Appointment.', '2020-04-03 02:37:13');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('101', '0971637680', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, judy mubili. \r\nYour ID: med10001, Appointment ID: AKYWPBGF, Serial: 1 and Appointment Date: 24 April 2020. \r\nThank you for the Appointment.', '2020-04-03 02:39:09');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('102', '0977629938', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Abel  Mukulalwendo. \r\nYour ID: med10004, Appointment ID: AD57EQAK, Serial: 1 and Appointment Date: 09 April 2020. \r\nThank you for the Appointment.', '2020-04-03 02:41:57');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('103', '0972190716', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Delphine Kibwimana. \r\nYour ID: med10006, Appointment ID: ACMFDKIB, Serial: 1 and Appointment Date: 11 April 2020. \r\nThank you for the Appointment.', '2020-04-11 09:00:15');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('104', '0974462662', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, Bwalya .E Chulu. \r\nYour ID: med10008, Appointment ID: AXCMZM6B, Serial: 1 and Appointment Date: 15 April 2020. \r\nThank you for the Appointment.', '2020-04-15 10:01:33');
INSERT INTO `custom_sms_info` (`custom_sms_id`, `reciver`, `gateway`, `message`, `sms_date_time`) VALUES ('105', '0971637680', 'nexmo', 'Doctor, Samim Hasan Khan. \r\nHello, judy mubili. \r\nYour ID: med10001, Appointment ID: A4PD983X, Serial: 1 and Appointment Date: 21 April 2020. \r\nThank you for the Appointment.', '2020-04-21 10:41:57');


#
# TABLE STRUCTURE FOR: department
#

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `dprt_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('12', 'Microbiology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.\r\n\r\n', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('13', 'Neonatal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.\r\n\r\n', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('14', 'Nephrology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.\r\n\r\n', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('15', 'Neurology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.\r\n\r\n', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('16', 'Oncology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.\r\n\r\n', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('17', 'Orthopaedics', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.\r\n\r\n', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('18', 'Pharmacy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.\r\n\r\n', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('19', 'Radiotherapy', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.\r\n\r\n', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('21', 'Rheumatology', '\r\n\r\n', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('25', 'ENT', '', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('27', 'Gynocologist', '', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('28', 'GENERAL PHYSICIAN', '', '1');
INSERT INTO `department` (`dprt_id`, `name`, `description`, `status`) VALUES ('29', 'DENTAL DEPARTMENT', '', '1');


#
# TABLE STRUCTURE FOR: department_sub
#

DROP TABLE IF EXISTS `department_sub`;

CREATE TABLE `department_sub` (
  `sub_id` int(11) NOT NULL,
  `sub_department_name` varchar(255) NOT NULL,
  `main_dep_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `department_sub` (`sub_id`, `sub_department_name`, `main_dep_id`, `description`, `status`) VALUES ('1', 'testmicro', '12', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.\r\n\r\n', '1');
INSERT INTO `department_sub` (`sub_id`, `sub_department_name`, `main_dep_id`, `description`, `status`) VALUES ('2', 'test2', '12', 'fg', '1');
INSERT INTO `department_sub` (`sub_id`, `sub_department_name`, `main_dep_id`, `description`, `status`) VALUES ('3', 'testgynk', '22', 'lorem implusdfsdf', '1');


#
# TABLE STRUCTURE FOR: diagnosis
#

DROP TABLE IF EXISTS `diagnosis`;

CREATE TABLE `diagnosis` (
  `d_id` int(11) NOT NULL,
  `diagnosis_name` varchar(255) NOT NULL,
  `diagnosis_code` varchar(100) NOT NULL,
  `dep_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('2', 'NECROTIZING ULCERATIVE STOMATITIS ', 'A69.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('3', 'OTHER VINCENT\'S INFECTIONS', 'A69.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('4', 'HERPESVIRAL GINGIVOSTOMATITIS AND PHARYNGOTONSILLI ', 'B00.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('5', 'HERPESVIRAL INFECTION: UNSPECIFIED', 'B00.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('6', 'CANDIDAL STOMATITIS', 'B37.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('7', 'CANDIDIASIS: UNSPECIFIED ', 'B37.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('8', 'MALIGNANT (PRIMARY) NEOPLASM: UNSPECIFIED ', 'C80.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('9', 'MIGRAINE: UNSPECIFIED: NOT INTRACTABLE: WITHOUT ', 'G43.909', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('10', 'BRUXISM, SLEEP RELATED', 'G47.63', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('11', 'OTHER CHRONIC PAIN ', 'G89.29', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('12', 'CHRONIC SINUSTIS: UNSPECIFIED', 'J32.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('13', 'ANODONTIA', 'K00.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('14', 'SUPERNUMERARY TEETH ', 'K00.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('15', 'ABNORMALITIES OF SIZE AND FORM OF TEETH ', 'K00.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('16', 'MOTTLED TEETH ', 'K00.3', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('17', 'DISTURBANCES OF TOOTH FORMATION ', 'K00.4', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('18', 'HEREDITARY DISTURBANCES IN TOOTH STRUCTURE NOT ELSEWHERE CLASSIFIED', 'K00.5', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('19', 'DISTURBANCES IN TOOTH ERUPTION', 'K00.6', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('20', 'TEETHING SYNDROME', 'K00.7', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('21', 'OTHER SPECIFIED DISORDERS OF TOOTH DEVELOPMENT AND ERUPTION ', 'K00.8', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('22', 'UNSPECIFIED DISORDER OF TOOTH DEVELOPMENT AND ERUPTION', 'K00.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('23', 'EMBEDDED TEETH', 'K01.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('24', 'IMPACTED TEETH', 'K01.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('25', 'ARRESTED DENTAL CARIES', 'K02.3', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('26', 'DENTAL CARIES ON PIT AND FISSURE SURFACE', 'K02.5', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('27', 'DENTAL CARIES ON PIT AND FISSURE SURFACE LIMITED TO ENAMEL ', 'K02.51', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('28', 'DENTAL CARIES ON PIT AND FISSURE SURFACE PENETRATING INTO DENTIN', 'K02.52', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('29', 'DENTAL CARIES ON PIT AND FISSURE SURFACE PENETRATING INTO PULP ', 'K02.53', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('30', 'DENTAL CARIES ON SMOOTH SURFACE ', 'K02.6', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('31', 'DENTAL CARIES ON SMOOTH SURFACE LIMITED TO ENAMEL', 'K02.61', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('32', 'DENTAL CARIES ON SMOOTH SURFACE PENETRATING INTO DENTIN', 'K02.62', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('33', 'DENTAL CARIES ON SMOOTH SURFACE PENETRATING INTO PULP', 'K02.63', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('34', 'DENTAL ROOT CARIES', 'K02.7', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('35', 'UNSPECIFIED DENTAL CARIES', 'K02.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('36', 'EXCESSIVE ATTRITION OF TEETH', 'K03.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('37', 'ABRASION OF TEETH', 'K03.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('38', 'EROSION OF TEETH', 'K03.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('39', 'PATHOLOGICAL RESORPTION OF TEETH', 'K03.3', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('40', 'HYPERCEMENTOSIS', 'K03.4', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('41', 'ANKYLOSIS OF TEETH', 'K03.5', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('42', 'DEPOSITS ON TEETH', 'K03.6', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('43', 'POSTERUPTIVE COLOR CHANGES OF DENTAL HARD TISSUES', 'K03.7', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('44', 'OTHER SPECIFIED DISEASES OF HARD TISSUES OF TEETH ', 'K03.8', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('45', 'CRACKED TOOTH', 'K03.81', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('46', 'UNSPECIFIED DISEASE OF HARD TISSUES OF TEETH', 'K03.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('47', 'PULPITIS', 'K04.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('48', 'REVERSIBLE PULPITIS', 'K04.01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('49', 'IRREVERSIBLE PULPITIS', 'K04.02', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('50', 'NECROSIS OF THE PULP', 'K04.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('51', 'PULP DEGENERATION', 'K04.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('52', 'ABNORMAL HARD TISSUE FORMATION IN PULP ', 'K04.3', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('53', 'ACUTE APICAL PERIODONTITIS OF PULPAL ORIGIN', 'K04.4', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('54', 'CHRONIC APICAL PERIODONTITIS ', 'K04.5', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('55', 'PERIAPICAL ABSCESS WITH SINU', 'K04.6', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('56', 'PERIAPICAL ABSCESS WITHOUT SINUS', 'K04.7', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('57', 'RADICULAR CYST', 'K04.8', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('58', 'OTHER AND UNSPECIFIED LESIONS OF ORAL MUCOSA', 'K04.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('59', 'UNSPECIFIED DISEASES OF PULP AND PERIAPICAL TISSUE', 'K04.90', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('60', 'OTHER DISEASES OF PULP AND PERIAPICAL TISSUES ', 'K04.99', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('61', 'ACUTE GINGIVITIS', 'K05.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('62', 'ACUTE GINGIVITIS, PLAQUE INDUCED ', 'K05.00', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('63', 'ACUTE GINGIVITIS, NON-PLAQUE INDUCED ', 'K05.01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('64', 'CHRONIC GINGIVITIS ', 'K05.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('65', 'CHRONIC GINGIVITIS, PLAQUE INDUCED', 'K05.10', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('66', 'CHRONIC GINGIVITIS, NON-PLAQUE INDUCED', 'K05.11', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('67', 'AGGRESSIVE PERIODONTITIS', 'K05.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('68', 'UNSPECIFIED AGGRESSIVE PERIODONTITIS', 'K05.20', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('69', 'AGGRESSIVE PERIODONTITIS, LOCALIZED ', 'K05.21', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('70', 'AGGRESSIVE PERIODONTITIS, GENERALIZED, SLIGHT', 'K05.221', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('71', 'AGGRESSIVE PERIODONTITIS, GENERALIZED, MODERATE', 'K05.222', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('72', 'AGGRESSIVE PERIODONTITIS, GENERALIZED, SEVERE', 'K05.223', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('73', 'CHRONIC PERIODONTITIS', 'K05.3', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('74', 'CHRONIC PERIODONTITIS, UNSPECIFIED', 'K05.30', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('75', 'CHRONIC PERIODONTITIS, LOCALIZED, SLIGHT ', 'K05.311', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('76', 'CHRONIC PERIODONTITIS, LOCALIZED, MODERATE', 'K05.312', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('77', 'CHRONIC PERIODONTITIS, LOCALIZED, SEVERE', 'K05.313', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('78', 'CHRONIC PERIODONTITIS, LOCALIZED, UNSPECIFIED SEVERITY ', 'K05.319', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('79', 'CHRONIC PERIODONTITIS, GENERALIZED, SLIGHT', 'K05.321', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('80', 'CHRONIC PERIODONTITIS, GENERALIZED, MODERATE', 'K05.322', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('81', 'CHRONIC PERIODONTITIS, GENERALIZED, SEVERE ', 'K05.323', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('82', 'CHRONIC PERIODONTITIS, GENERALIZED, UNSPECIFIED SEVERITY ', 'K05.329', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('83', 'PERIODONTOSIS', 'K05.4', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('84', 'OTHER PERIODONTAL DISEASES', 'K05.5', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('85', 'UNSPECIFIED PERIODONTAL DISEASE', 'K05.6', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('86', 'GINGIVAL RECESSION', 'K06.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('87', 'GINGIVAL ENLARGEMENT', 'K06.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('88', 'GINGIVAL AND EDENTULOUS ALVEOLAR RIDGE LESIONS ASSOCIATED WITH TRAUMA', 'K06.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('89', 'OTHER SPECIFIED DISORDERS OF GINGIVA AND EDENTULOUS ALEVOLAR RIDGE', 'K06.8', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('90', 'DISORDER OF GINGIVA AND EDENTULOUS ALVEOLAR RIDGE, UNSPECIFIED', 'K06.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('91', 'EXFOLIATION OF TEETH DUE TO SYSTEMIC CAUSES ', 'K08.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('92', 'COMPLETE LOSS OF TEETH', 'K08.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('93', 'COMPLETE LOSS OF TEETH, UNSPECIFIC CAUSE ', 'K08.10', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('94', 'COMPLETE LOSS OF TEETH, UNSPECIFIC CAUSE, CLASS I ', 'K08.101', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('95', 'COMPLETE LOSS OF TEETH, UNSPECIFIC CAUSE, CLASS II ', 'K08.102', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('96', 'COMPLETE LOSS OF TEETH, UNSPECIFIC CAUSE, CLASS III ', 'K08.103', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('97', 'COMPLETE LOSS OF TEETH, UNSPECIFIC CAUSE, CLASS IV ', 'K08.104', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('98', 'COMPLETE LOSS OF TEETH, UNSPECIFIC CAUSE, UNSPECIFIED CLASS ', 'K08.109', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('99', 'COMPLETE LOSS OF TEETH DUE TO TRAUMA', 'K08.11', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('100', 'COMPLETE LOSS OF TEETH DUE TO TRAUMA, CLASS I', 'K08.111', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('101', 'COMPLETE LOSS OF TEETH DUE TO TRAUMA, CLASS II', 'K08.112', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('102', 'COMPLETE LOSS OF TEETH DUE TO TRAUMA, CLASS III', 'K08.113', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('103', 'COMPLETE LOSS OF TEETH DUE TO TRAUMA, CLASS IV', 'K08.114', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('104', 'COMPLETE LOSS OF TEETH DUE TO TRAUMA, UNSPECIFIED CLASS', 'K08.119', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('105', 'COMPLETE LOSS OF TEETH DUE TO OTHER SPECIFIED CAUSE', 'K08.191', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('106', 'COMPLETE LOSS OF TEETH DUE TO PERIODONTAL DISEASE', 'K08.12', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('107', 'COMPLETE LOSS OF TEETH DUE TO PERIODONTAL DISEASE, CLASS I', 'K08.121', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('108', 'COMPLETE LOSS OF TEETH DUE TO PERIODONTAL DISEASE, CLASS II', 'K08.122', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('109', 'COMPLETE LOSS OF TEETH DUE TO PERIODONTAL DISEASE, CLASS III', 'K08.123', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('110', 'COMPLETE LOSS OF TEETH DUE TO PERIODONTAL DISEASE, CLASS IV', 'K08.124', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('111', 'COMPLETE LOSS OF TEETH DUE TO PERIODONTAL DISEASE, UNSPECIFIED CLASS ', 'K08.129', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('112', 'COMPLETE LOSS OF TEETH DUE TO CARIES', 'K08.13', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('113', 'COMPLETE LOSS OF TEETH DUE TO CARIES, CLASS I', 'K08.131', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('114', 'COMPLETE LOSS OF TEETH DUE TO CARIES, CLASS II', 'K08.132', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('115', 'COMPLETE LOSS OF TEETH DUE TO CARIES, CLASS III ', 'K08.133', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('116', 'COMPLETE LOSS OF TEETH DUE TO CARIES, CLASS IV', 'K08.134', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('117', 'COMPLETE LOSS OF TEETH DUE TO CARIES, UNSPECIFIED CLASS', 'K08.139', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('118', 'COMPLETE LOSS OF TEETH DUE TO OTHER SPECIFIED CAUSE ', 'K08.19', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('119', 'COMPLETE LOSS OF TEETH DUE TO OTHER SPECIFIED CAUSE, CLASS I ', 'K08.191', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('120', 'COMPLETE LOSS OF TEETH DUE TO OTHER SPECIFIED CAUSE, CLASS II ', 'K08.192', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('121', 'COMPLETE LOSS OF TEETH DUE TO OTHER SPECIFIED CAUSE, CLASS III ', 'K08.193', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('122', 'COMPLETE LOSS OF TEETH DUE TO OTHER SPECIFIED CAUSE, CLASS IV ', 'K08.194', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('123', 'COMPLETE LOSS OF TEETH DUE TO OTHER SPECIFIED CAUSE, UNSPECIFIED CLASS ', 'K08.199', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('124', 'ATROPHY OF EDENTULOUS ALEVEOLAR RIDGE', 'K08.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('125', 'UNSPECIFIED ATROPHY OF EDENTULOUS ALVEOLAR RIDGE ', 'K08.20', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('126', 'MINIMAL ATROPHY OF THE MANDIBLE ', 'K08.21', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('127', 'MODERATE ATROPHY OF THE MANDIBLE', 'K08.22', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('128', 'SEVERE ATROPHY OF THE MANDIBLE', 'K08.23', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('129', 'MINIMAL ATROPHY OF THE MAXILLA', 'K08.24', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('130', 'MODERATE ATROPHY OF THE MAXILLA', 'K08.25', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('131', 'SEVERE ATROPHY OF THE MAXILLA', 'K08.26', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('132', 'RETAINED DENTAL ROOT', 'K08.3', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('133', 'PARTIAL LOSS OF TEETH', 'K08.4', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('134', 'PARTIAL LOSS OF TEETH, UNSPECIFIED CAUSE', 'K08.40', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('135', 'PARTIAL LOSS OF TEETH, UNSPECIFIED CAUSE, CLASS I', 'K08.401', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('136', 'PARTIAL LOSS OF TEETH, UNSPECIFIED CAUSE, CLASS II', 'K08.402', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('137', 'PARTIAL LOSS OF TEETH, UNSPECIFIED CAUSE, CLASS III', 'K08.403', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('138', 'PARTIAL LOSS OF TEETH, UNSPECIFIED CAUSE, CLASS IV', 'K08.404', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('139', 'PARTIAL LOSS OF TEETH, UNSPECIFIED CAUSE, UNSPECIFIED CLASS', 'K08.409', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('140', 'PARTIAL LOSS OF TEETH DUE TO TRAUMA', 'K08.41', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('141', 'PARTIAL LOSS OF TEETH DUE TO TRAUMA, CLASS I', 'K08.411', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('142', 'PARTIAL LOSS OF TEETH DUE TO TRAUMA, CLASS II', 'K08.412', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('143', 'PARTIAL LOSS OF TEETH DUE TO TRAUMA, CLASS III', 'K08.413', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('144', 'PARTIAL LOSS OF TEETH DUE TO TRAUMA, CLASS IV', 'K08.414', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('145', 'PARTIAL LOSS OF TEETH DUE TO TRAUMA, UNSPECIFIED CLASS', 'K08.419', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('146', 'PARTIAL LOSS OF TEETH DUE TO PERIODONTAL DISEASES', 'K08.42', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('147', 'PARTIAL LOSS OF TEETH DUE TO PERIODONTAL DISEASES, CLASS I', 'K08.421', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('148', 'PARTIAL LOSS OF TEETH DUE TO PERIODONTAL DISEASES, CLASS II', 'K08.422', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('149', 'PARTIAL LOSS OF TEETH DUE TO PERIODONTAL DISEASES, CLASS III', 'K08.423', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('150', 'PARTIAL LOSS OF TEETH DUE TO PERIODONTAL DISEASES, CLASS IV', 'K08.424', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('151', 'PARTIAL LOSS OF TEETH DUE TO PERIODONTAL DISEASES, UNSPECIFIED CLASS ', 'K08.429', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('152', 'PARTIAL LOSS OF TEETH DUE TO CARIES', 'K08.43', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('153', 'PARTIAL LOSS OF TEETH DUE TO CARIES, CLASS I', 'K08.431', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('154', 'PARTIAL LOSS OF TEETH DUE TO CARIES, CLASS II', 'K08.432', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('155', 'PARTIAL LOSS OF TEETH DUE TO CARIES, CLASS III', 'K08.433', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('156', 'PARTIAL LOSS OF TEETH DUE TO CARIES, CLASS IV', 'K08.434', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('157', 'PARTIAL LOSS OF TEETH DUE TO CARIES, UNSPECIFIED CLASS', 'K08.439', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('158', 'Acne', 'GA02', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('159', 'Acute cholecystitis', 'GA03', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('160', 'Acute lymphoblastic leukaemia', 'GA04', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('161', 'Acute lymphoblastic leukaemia: Children', 'GA05', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('162', 'Bacterial vaginosis', 'GB01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('163', 'Benign prostate enlargement', 'GB02', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('164', 'Bile duct cancer (cholangiocarcinoma)', 'GB03', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('165', 'Binge eating', 'GB04', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('166', 'Bipolar disorder', 'GB05', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('167', 'Carcinoid syndrome and carcinoid tumours', 'GC01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('168', 'Catarrh', 'GC02', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('169', 'Cellulitis', 'GC03', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('170', 'Cervical cancer', 'GC04', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('171', 'Chest infection', 'GC05', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('172', 'Deafblindness', 'GD01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('173', 'Deep vein thrombosis', 'GD02', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('174', 'Dehydration', 'GD03', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('175', 'Dementia', 'GD04', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('176', 'Dementia with Lewy bodies', 'GD05', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('177', 'Earache', 'GE01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('178', 'Earwax build-up', 'GE02', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('179', 'Ebola virus disease', 'GE03', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('180', 'Ectopic pregnancy', 'GE04', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('181', 'Endometriosis', 'GE05', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('182', 'Febrile seizures', 'GF01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('183', 'Fever in children', 'GF02', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('184', 'Fibroids', 'GF03', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('185', 'Fibromyalgia', 'GF04', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('186', 'Flatulence', 'GF05', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('187', 'Gallbladder cancer', 'GG01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('188', 'Gallstones', 'GG02', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('189', 'Ganglion cyst', 'GG03', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('190', 'Gastroenteritis', 'GG04', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('191', 'Gastro-oesophageal reflux disease (GORD)', 'GG05', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('192', 'Haemorrhoids (piles)', 'GH01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('193', 'Hairy cell leukaemia', 'GH02', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('194', 'Hand, foot and mouth disease', 'GH03', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('195', 'Hay fever', 'GH04', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('196', 'Head and neck cancer', 'GH05', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('197', 'Idiopathic pulmonary fibrosis', 'GI01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('198', 'Impetigo', 'GI02', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('199', 'Indigestion', 'GI03', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('200', 'Ingrown toenail', 'GI04', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('201', 'Inherited heart conditions', 'GI05', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('202', 'Insomnia', 'GI06', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('203', 'Iron deficiency anaemia', 'GI07', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('204', 'Irritable bowel syndrome (IBS)', 'GI08', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('205', 'Irritable hip', 'GI09', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('206', 'Itching', 'GI10', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('207', 'Amenorrhea', 'N91.2                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('208', 'Oligomenorrhea', 'N91.5               ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('209', 'Menorrhagia', 'N92.0                  ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('210', 'Metrorrhagia', 'N92.1                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('211', 'Irregular Menses', 'N92.6                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('212', 'Dysfunctional Uterine Bleeding', 'N93.8                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('213', 'Premenstrual Syndrome', 'N94.3                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('214', 'Dysmenorrhea Disorders Of Genital Area', 'N94.6                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('215', 'Vaginal Itch', 'L29.3                ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('216', 'Pelvic Inflammatory Disease (PID)', 'N73.9                     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('217', 'Bartholin?s Cyst', 'N75.0                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('218', 'Vaginitis, Unspecified', 'N76.0                ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('219', 'Vulvar Abscess', 'N76.4                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('220', 'Vaginal Ulcer', 'N76.5                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('221', 'Ulcer Of Vulva', 'N76.6                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('222', 'Leukoplakia Of Vagina', 'N89.4                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('223', 'Vaginal Cyst', 'N89.8                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('224', 'Vaginal Discharge', 'N89.81                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('225', 'Noninflammatory Disorder Of Vagina', 'N89.9                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('226', 'Vulvar Lesion', 'N90.89                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('227', 'Vaginal Bleeding', 'N93.9                                  ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('228', 'Pelvic Pain', 'N94.9                                ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('229', 'Pelvic Mass Special Screening Examinations', 'R19.00                                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('230', 'Syphilis Screening', 'Z11.3                                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('231', 'Venereal Disease Screening', 'Z11.3                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('232', 'HPV Screening', 'Z11.51                                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('233', 'Hepatitis Screening', 'Z11.59                                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('234', 'HIV Screening', 'Z11.59                                  ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('235', 'Rubella Screening', 'Z11.59                                ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('236', 'Chlamydial Trachomatis Screening', 'Z11.8                                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('237', 'Screening For Yeast Infection', 'Z11.8                                       ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('238', 'Trichomoniasis Screening Disorders Of Cervix', 'Z11.8                                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('239', 'Cervical Intraepithelial Neoplasia III (CIN III)', 'D06.9                                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('240', 'Cervical Inflammation', 'N72                                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('241', 'Cervicitis/Endocervicitis', 'N72                                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('242', 'Cervical Polyp', 'N84.1                                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('243', 'Mild Dysplasia Of Cervix (CIN I)', 'N87.1                                  ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('244', 'Moderate Dysplasia Of Cervix (CIN II) Menopause', 'N87.2                                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('245', 'Postmenopausal Bleeding', 'N95.0                                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('246', 'Menopausal Symptoms', 'N95.1                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('247', 'Senile Atrophic Vaginitis', 'N95.2                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('248', 'Perimenopausal Bleeding', 'N95.8                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('249', 'Postsurgical Menopause Abnormal Pap Smear Results', 'N95.8                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('250', 'ASC-US, Cervix', 'R87.610                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('251', 'ASC-H, Cervix', 'R87.611                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('252', 'LGSIL, Cervix', 'R87.612                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('253', 'HGSIL, Cervix', 'R87.613                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('254', 'Unsatisfactory Cervical Cytology Sample', 'R87.615                          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('255', 'Abnormal Pap Smear Result, Cervix', 'R87.619                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('256', 'Abnormal Pap Smear Result, Vagina', 'R87.628                     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('257', 'Cervical High-Risk HPV DNA Test Positive', 'R87.810                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('258', 'Vaginal High-Risk HPV DNA Test Positive Disorders Of Uterus And Ovary', 'R87.811                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('259', 'Uterine Fibroid/Leiomyoma', ' D25.9                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('260', 'Ovarian Failure', 'E28.39                                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('261', 'Ovarian Dysfunction', 'E28.9                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('262', 'Adenomyosis', 'N80.0                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('263', 'Cervical Endometriosis', 'N80.0                     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('264', 'Endometriosis, Unspecified', 'N80.9                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('265', 'Ovarian Cyst', 'N83.20                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('266', 'Uterine Polyp', 'N84.0                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('267', 'Enlarged Uterus', 'N85.2                                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('268', 'Uterine Cyst', 'N85.8                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('269', 'Ovarian Mass Routine Examination Codes', 'N94.89                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('270', 'Routine Gynecological Examination', 'Z01.149                          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('271', 'Routine Cervical Papanicolau Smear', 'Z12.4                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('272', 'Vaginal Pap Smear Status Post-Hysterectomy', 'Z12.72                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('273', 'High-Risk For Developing Cervical Cancer Disorders Of Breast', 'Z77.9                       ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('274', 'Cyst Of Breast', 'N60.09                               ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('275', 'Fibrocystic Breast', 'N60.19                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('276', 'Breast Abscess', 'N611                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('277', 'Mastitis (Breast Abscess)', 'N61                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('278', 'Galactorrhea Not Associated With Childbirth', 'N64.3                          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('279', 'Mastodynia (Pain In Breast)', 'N64.4                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('280', 'Nipple Discharge', 'N64.52                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('281', 'Breast Tenderness Infectious Diseases', 'N64.59                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('282', 'Genital Syphilis', 'A51.0                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('283', 'Trichomoniasis, Urogenital', 'A59.00                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('284', 'Trichomoniasis, Vulvovaginitis', 'A59.01                       ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('285', 'Herpetic Ulceration Of Vulva', 'A60.04                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('286', 'Herpetic Vulvovaginitis', 'A60.04                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('287', 'Genital Herpes', 'A60.9                                  ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('288', 'Chlamydia Trachomatis', 'A74.89                                ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('289', 'Chlamydial Infection', 'A74.9                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('290', 'Candidiasis, Vulva And Vagina', 'B37.3                     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('291', 'Gram-Negative Anaerobic Infection', 'B96.89                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('292', ' Breast Cancer', 'C50.919                ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('293', 'Vulvar Cancer', 'C51.9                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('294', 'Vaginal Cancer', 'C52                                                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('295', 'Endocervical Cancer', 'C53.0                                     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('296', 'Endometrial Cancer', 'C54.1                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('297', 'Uterine Cancer', 'C55                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('298', 'Ovarian Cancer', 'C56.9                          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('299', 'Advanced Maternal Age, First Trimester', 'O09.511                             ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('300', 'Advanced Maternal Age, Second Trimester', 'O09.512                          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('301', 'Advanced Maternal Age, Third Trimester', 'O09.513                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('302', 'Advanced Maternal Age, Unspecified Trimester', 'O09.519                       ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('303', 'Advanced Maternal Age, Other Than First Pregnancy, First Trimester', 'O09.521                  ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('304', 'Advanced Maternal Age, Other Than First Pregnancy, Second Trimester', 'O09.522                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('305', 'Advanced Maternal Age, Other Than First Pregnancy, Third Trimester', 'O09.523                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('306', 'Advanced Maternal Age, Other Than First Pregnancy, Unspecified Trimester', 'O09.529                     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('307', 'Pregnancy Resulting From In Vitro Fertilization, First Trimester', 'O09.811                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('308', 'Pregnancy Resulting From In Vitro Fertilization, Second Trimester', 'O09.812                       ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('309', 'Pregnancy Resulting From In Vitro Fertilization, Third Trimester', 'O09.813                     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('310', 'Pregnancy Resulting From In Vitro Fertilization, Unspecified Trimester', 'O09.819                     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('311', 'High-Risk Pregnancy, First Trimester', 'O09.891                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('312', 'High-Risk Pregnancy, Second Trimester', 'O09.892                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('313', 'High-Risk Pregnancy, Third Trimester', 'O09.893                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('314', 'High-Risk Pregnancy, Unspecified Trimester', 'O09.899                                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('315', 'Screening', 'Z13.9                       ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('316', 'Normal First Pregnancy, Unspecified Trimester', 'Z34.00                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('317', 'Normal First Pregnancy, First Trimester', 'Z34.01                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('318', 'Normal First Pregnancy, Second Trimester', 'Z34.02                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('319', 'Normal First Pregnancy, Third Trimester', 'Z34.03                     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('320', 'Normal Pregnancy Other Than First, Unspecified, Unspecified Trimester', 'Z34.90                    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('321', 'Normal Pregnancy Other Than First, Unspecified, First Trimester', 'Z34.91                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('322', 'Normal Pregnancy Other Than First, Unspecified, Second Trimester', 'Z34.92                       ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('323', 'Normal Pregnancy Other Than First, Unspecified, Third Trimester', 'Z34.93                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('324', 'Antenatal Screening For Chromosal Anomaly', 'Z36.1                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('325', 'Antenatal Screening For Alpha-Fetoprotein In Amniotic Fluid', 'Z36.2                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('326', 'First Trimester Screen', 'Z36.3                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('327', 'Routine Fetal Ultrasound', 'Z36.4                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('328', 'Routine Postpartum Follow-up', 'Z39.2                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('329', 'Nonprocreative Screening For Genetic Disease Carrier Status', 'Z13.71                                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('330', 'Genetic Screening For Cystic Fibrosis, Female', 'Z31.4301                                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('331', 'Testing Of Female For Genetic Disease Carrier Status, Procreative', 'Z31.430                                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('332', 'Genetic Procreative Testing Of Female', 'Z31.438                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('333', 'Testing Of Male For Genetic Disease Carrier Status, Procreative', 'Z31.440                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('334', 'Testing Of Partner Of Female With Recurrent Pregnancy Loss', 'Z31.441                                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('335', 'Procreative Management Testing', 'Z31.49                                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('336', 'Genetic Counseling', 'Z31.5                                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('337', 'Cystic Fibrosis Gene Carrier', 'Z14.1                                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('338', 'Genetic Carrier Status, Other Than Cystic Fibrosis', 'Z14.8                                       ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('339', 'Family History Of Genetic Disease Carrier', 'Z84.81                                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('340', 'Gestational Hypertension, Without Significant Proteinuria, First Trimester', 'O13.1                                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('341', 'Gestational Hypertension, Without Significant Proteinuria, Second Trimester', 'O13.2                             ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('342', 'Gestational Hypertension, Without Significant Proteinuria, Third Trimester', 'O13.3                                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('343', 'Gestational Hypertension, Without Significant Proteinuria, Unspecified Trimester', 'O13.9                       ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('344', 'Mild Pre-Eclampsia, Unspecified Trimester', 'O14.00                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('345', 'Mild Pre-Eclampsia, Second Trimester', 'O14.02                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('346', 'Mild Pre-Eclampsia, Third Trimester', 'O14.03                                          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('347', 'Gestational Diabetes, Unspecified Control', 'O24.419                             ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('348', 'Habitual Aborter With Current Pregnancy, Unspecified Trimester', 'O26.20                                  ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('349', 'Habitual Aborter With Current Pregnancy, First Trimester', 'O26.21                                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('350', 'Habitual Aborter With Current Pregnancy, Second Trimester', 'O26.22                                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('351', 'Habitual Aborter With Current Pregnancy, Third Trimester', 'O26.23                                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('352', 'Spotting Complicating Pregnancy, First Trimester', 'O26.851                                     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('353', 'Spotting Complicating Pregnancy, Second Trimester', 'O26.852                                ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('354', 'Spotting Complicating Pregnancy, Third Trimester', 'O26.853                                ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('355', 'Spotting Complicating Pregnancy, Unspecified Trimester', 'O26.859                                  ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('356', 'Twin Pregnancy, First Trimester', 'O30.001                               ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('357', 'Twin Pregnancy, Second Trimester', 'O30.002                                   ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('358', 'Twin Pregnancy, Third Trimester', 'O30.003                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('359', 'Twin Pregnancy, Unspecified Trimester', 'O30.009                                  ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('360', 'Rh Incompatibility Affecting Management Of Pregnancy, First Trimester', 'O36.0110                          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('361', 'Rh Incompatibility Affecting Management Of Pregnancy, Second Trimester', 'O36.0120                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('362', 'Rh Incompatibility Affecting Management Of Pregnancy, Third Trimester', 'O36.0130                             ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('363', 'Rh Incompatibility Affecting Management Of Pregnancy, Unspecified Trimester', 'O36.0190                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('364', 'Poor Fetal Growth, First Trimester', 'O36.5910                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('365', 'Poor Fetal Growth, Second Trimester', 'O36.5920                                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('366', 'Poor Fetal Growth, Third Trimester', 'O36.5930                                        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('367', 'Poor Fetal Growth, Unspecified Trimester', 'O36.5990                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('368', 'Excessive Fetal Growth, Unspecified Trimester', 'O36.60X0                                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('369', 'Excessive Fetal Growth, First Trimester', 'O36.61X0                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('370', 'Excessive Fetal Growth, Second Trimester', 'O36.62X0                               ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('371', ' Excessive Fetal Growth, Third Trimester', 'O36.63X0                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('372', 'Placenta Previa Without Hemorrhage, Unspecified Trimester', 'O44.00                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('373', 'Placenta Previa Without Hemorrhage, First Trimester', 'O44.01                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('374', 'Placenta Previa Without Hemorrhage, Second Trimester', 'O44.02                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('375', 'Placenta Previa Without Hemorrhage, Third Trimester', 'O44.03                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('376', 'Hemorrhage From Placenta Previa, Unspecified Trimester', 'O44.10                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('377', 'Hemorrhage From Placenta Previa, First Trimester', 'O44.11                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('378', 'Hemorrhage From Placenta Previa, Second Trimester', 'O44.12                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('379', 'Hemorrhage From Placenta Previa, Third Trimester', 'O44.13                             ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('380', 'Post-Term Pregnancy (Between 40 & 42 Weeks Gestation)', 'O48.0                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('381', 'Postpartum Depression', 'O99.345                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('382', 'Tubal Pregnancy', 'O00.1                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('383', 'Ectopic Pregnancy, Unspecified', 'O00.9                            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('384', 'Hydatidiform Mole', 'O01.9                         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('385', 'Blighted Ovum', 'O02.0                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('386', 'Molar Pregnancy', 'O02.0                                      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('387', 'Missed Abortion', 'O02.1                               ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('388', 'Spontaneous Abortion (Miscarriage)', 'O03.9                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('389', 'Threatened Abortion', 'O20.0                           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('390', 'Intrauterine Death, Unspecified', 'O36.4XX0                 ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('391', 'Abortion', 'Z33.2                              ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('392', 'Acute abdomen', 'R10.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('393', 'Upper abdominal pain, unspecified', 'R10.10', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('394', 'Right upper quadrant pain', 'R10.11', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('395', 'Left upper quadrant pain', 'R10.12', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('396', 'Epigastric pain', 'R10.13', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('397', 'Pelvic and perineal pain', 'R10.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('398', 'Lower abdominal pain', 'R10.30', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('399', 'Right lower quadrant pain', 'R10.31', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('400', 'Left lower quadrant pain', 'R10.321', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('401', 'Periumbilical pain', 'R10.33', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('402', 'Generalized abdominal pain', 'R10.84', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('403', 'Unspecified abdominal pain', 'R10.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('404', 'Acute bronchitis due to Mycoplasma pneumoniae ', 'J20.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('405', 'Acute bronchitis due to Hemophilus influenzae ', 'J20.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('406', 'Acute bronchitis due to streptococcus', 'J20.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('407', 'Acute bronchitis due to coxsackievirus ', 'J20.3', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('408', 'Acute bronchitis due to parainfluenza virus', 'J20.4', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('409', 'Acute bronchitis due to respiratory syncytial virus ', 'J20.5', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('410', 'Acute bronchitis due to rhinovirus', 'J20.6', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('411', 'Acute bronchitis due to echovirus', 'J20.7', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('412', 'Acute bronchitis due to other specified organisms ', 'J20.8', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('413', 'Acute bronchitis, unspecified', 'J20.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('414', 'Streptococcal pharyngitis', 'J02.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('415', 'Acute pharyngitis due to other specified organisms ', 'J02.8', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('416', 'Acute pharyngitis, unspecified', 'J02.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('417', 'Vasomotor rhinitis', 'J30.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('418', 'Allergic rhinitis due to pollen', 'J30.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('419', 'Other seasonal allergic rhinitis', 'J30.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('420', 'Allergic rhinitis due to food', 'J30.5', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('421', 'Allergic rhinitis due to animal (cat) (dog) hair and dander', 'J30.81', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('422', 'Other allergic rhinitis', 'J30.89', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('423', 'Allergic rhinitis, unspecified', 'J30.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('424', 'Mild intermittent asthma, uncomplicated', 'J45.20', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('425', 'Mild intermittent asthma with (acute) exacerbation ', 'J45.21', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('426', 'Mild intermittent asthma with status asthmaticus ', 'J45.22', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('427', 'Mild persistent asthma, uncomplicated', 'J45.301', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('428', 'Mild persistent asthma with (acute) exacerbation ', 'J45.31', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('429', 'Mild persistent asthma with status asthmaticus ', 'J45.32', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('430', 'Moderate persistent asthma, uncomplicated', 'J45.40', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('431', 'Moderate persistent asthma with (acute) exacerbation', 'J45.41', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('432', 'Moderate persistent asthma with status asthmaticus', 'J45.42', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('433', 'Severe persistent asthma, uncomplicated', 'J45.50', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('434', 'Severe persistent asthma with (acute) exacerbation ', 'J45.51', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('435', 'Severe persistent asthma with status asthmaticus ', 'J45.52', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('436', 'Unspecified asthma with (acute) exacerbation', 'J45.901', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('437', 'Unspecified asthma with status asthmaticus', 'J45.902', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('438', 'Unspecified asthma, uncomplicated', 'J45.909', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('439', 'Exercise induced bronchospasm ', 'J45.990', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('440', 'Cough variant asthma', 'J45.991', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('441', 'Other asthma', 'J45.998', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('442', 'Chest pain on breathing', 'R07.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('443', 'Precordial pain', 'R07.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('444', 'Pleurodynia', 'R07.81', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('445', 'Intercostal pain', 'R07.82', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('446', 'Other chest pain', 'R07.89', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('447', 'Chest pain, unspecified', 'R07.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('448', 'Type 1 diabetes mellitus with hyperglycemia', 'E10.65', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('449', 'Type 1 diabetes mellitus without complications', 'E10.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('450', 'Type 2 diabetes mellitus with hyperglycemia', 'E11.65', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('451', 'Type 2 diabetes mellitus without complications', 'E11.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('452', 'Headache', 'R51', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('453', 'Acute serous otitis media, unspecified ear', 'H65.00', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('454', 'Acute serous otitis media, right ear', 'H65.01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('455', 'Acute serous otitis media, left ear', 'H65.02', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('456', 'Acute serous otitis media, bilateral', 'H65.03', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('457', 'Acute serous otitis media, recurrent, right ear', 'H65.04', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('458', 'Acute serous otitis media, recurrent, left ear', 'H65.05', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('459', 'Acute serous otitis media, recurrent, bilateral', 'H65.06', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('460', 'Acute serous otitis media, recurrent, unspecified ear', 'H65.07', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('461', 'Acute and subacute allergic otitis media (mucoid) (sanguinous) (serous), right ear ', 'H65.111', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('462', 'Acute and subacute allergic otitis media (mucoid) (sanguinous) (serous), left ear ', 'H65.112', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('463', 'Acute and subacute allergic otitis media (mucoid) (sanguinous) (serous), bilateral ', 'H65.113', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('464', 'Acute and subacute allergic otitis media (mucoid) (sanguinous) (serous), recurrent, right ear ', 'H65.114', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('465', 'Acute and subacute allergic otitis media (mucoid) (sanguinous) (serous), recurrent, left ear ', 'H65.115', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('466', 'Acute and subacute allergic otitis media (mucoid) (sanguinous) (serous), recurrent, bilateral ', 'H65.116', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('467', 'Acute and subacute allergic otitis media (mucoid) (sanguinous) (serous), recurrent, unspecified ear ', 'H65.117', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('468', 'Acute and subacute allergic otitis media (mucoid) (sanguinous) (serous), unspecified ear', 'H65.119', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('469', 'Other acute nonsuppurative otitis media, right ear', 'H65.191', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('470', 'Other acute nonsuppurative otitis media, left ear ', 'H65.192', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('471', 'Other acute nonsuppurative otitis media, bilateral', 'H65.193', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('472', 'Other acute nonsuppurative otitis media, recurrent, right ear ', 'H65.194', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('473', 'Other acute nonsuppurative otitis media, recurrent, left ear ', 'H65.195', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('474', 'Other acute nonsuppurative otitis media, recurrent, bilateral ', 'H65.196', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('475', 'Other acute nonsuppurative otitis media recurrent, unspecified ear ', 'H65.197', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('476', 'Other acute nonsuppurative otitis media, unspecified ear', 'H65.199', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('477', 'Chronic serous otitis media, unspecified ear', 'H65.20', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('478', 'Chronic serous otitis media, right ear', 'H65.21', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('479', 'Chronic serous otitis media, left ear', 'H65.22', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('480', 'Chronic serous otitis media, bilateral', 'H65.23', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('481', 'Chronic mucoid otitis media, unspecified ear', 'H65.30', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('482', 'Chronic mucoid otitis media, right ear', 'H65.31', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('483', 'Chronic mucoid otitis media, left ear', 'H65.32', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('484', 'Chronic mucoid otitis media, bilateral', 'H65.33', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('485', 'Other chronic nonsuppurative otitis media, right ear ', 'H65.491', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('486', 'Other chronic nonsuppurative otitis media, left ear  ', 'H65.492', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('487', 'Other chronic nonsuppurative otitis media, bilateral ', 'H65.493', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('488', 'Other chronic nonsuppurative otitis media, unspecified ear', 'H65.499', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('489', 'Unspecified nonsuppurative otitis media, unspecified ear ', 'H65.90', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('490', 'Unspecified nonsuppurative otitis media, right ear ', 'H65.91', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('491', 'Unspecified nonsuppurative otitis media, left  ear ', 'H65.92', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('492', 'Unspecified nonsuppurative otitis media, bilateral', 'H65.93', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('493', 'Acute suppurative otitis media without spontaneous rupture of ear drum, right ear ', 'H66.001', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('494', 'Acute suppurative otitis media without spontaneous rupture of ear drum, left ear ', 'H66.002', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('495', 'Acute suppurative otitis media without spontaneous rupture of ear drum, bilateral ', 'H66.003', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('496', 'Acute suppurative otitis media without spontaneous rupture of ear drum, recurrent, right ear ', 'H66.0041', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('497', 'Acute suppurative otitis media without spontaneous rupture of ear drum, recurrent, left ear ', 'H66.005', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('498', 'Acute suppurative otitis media without spontaneous rupture of ear drum, recurrent, bilateral', 'H66.006', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('499', 'Acute suppurative otitis media without spontaneous rupture of ear drum, recurrent, unspecified ear ', 'H66.007', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('500', 'Acute suppurative otitis media without spontaneous rupture of ear drum, unspecified ear ', 'H66.009', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('501', 'Acute suppurative otitis media with spontaneous rupture of ear drum, right ear ', 'H66.011', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('502', 'Acute suppurative otitis media with spontaneous rupture of ear drum, left ear ', 'H66.012', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('503', 'Acute suppurative otitis media with spontaneous rupture of ear drum, bilateral ', 'H66.013', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('504', 'Acute suppurative otitis media with spontaneous rupture of ear drum, recurrent, right ear ', 'H66.014', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('505', 'Acute suppurative otitis media with spontaneous rupture of ear drum, recurrent, left ear ', 'H66.015', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('506', 'Acute suppurative otitis media with spontaneous rupture of ear drum, recurrent, bilateral ', 'H66.016', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('507', 'Acute suppurative otitis media with spontaneous rupture of ear drum, recurrent, unspecified ear ', 'H66.017', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('508', 'Acute suppurative otitis media with spontaneous rupture of ear drum, unspecified ear', 'H66.019', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('509', 'Chronic tubotympanic suppurative otitis media, unspecified ', 'H66.10', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('510', 'Chronic tubotympanic suppurative otitis media, right ear ', 'H66.11', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('511', 'Chronic tubotympanic suppurative otitis media, left ear ', 'H66.12', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('512', 'Chronic tubotympanic suppurative otitis media, bilateral', 'H66.13', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('513', 'Chronic atticoantral suppurative otitis media, unspecified ear ', 'H66.20', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('514', 'Chronic atticoantral suppurative otitis media, right ear  ', 'H66.21', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('515', 'Chronic atticoantral suppurative otitis media, left ear', 'H66.22', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('516', 'Chronic atticoantral suppurative otitis media, bilateral', 'H66.23', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('517', 'Other chronic suppurative otitis media, right ear ', 'H66.3X1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('518', 'Other chronic suppurative otitis media, left ear ', 'H66.3X2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('519', 'Other chronic suppurative otitis media, bilateral ', 'H66.3X3', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('520', 'Other chronic suppurative otitis media, unspecified ear', 'H66.3X9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('521', 'Suppurative otitis media, unspecified, unspecified ear', 'H66.40', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('522', 'Suppurative otitis media, unspecified, right ear ', 'H66.41', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('523', 'Suppurative otitis media, unspecified, left  ear ', 'H66.42', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('524', 'Suppurative otitis media, unspecified, bilateral', 'H66.43', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('525', 'Otitis media, unspecified, unspecified ear ', 'H66.90', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('526', 'Otitis media, unspecified, right ear', 'H66.91', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('527', 'Otitis media, unspecified, left  ear ', 'H66.92', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('528', 'Otitis media, unspecified, bilateral', 'H66.93', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('529', 'Otitis media in diseases classified elsewhere, right ear ', 'H67.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('530', 'Otitis media in diseases classified elsewhere, left ear ', 'H67.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('531', 'Otitis media in diseases classified elsewhere, bilateral', 'H67.3', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('532', 'Otitis media in diseases classified elsewhere, unspecified ear', 'H67.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('533', 'Pain in right arm', 'M79.601', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('534', 'Pain in left arm', 'M79.602', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('535', 'Pain in arm, unspecified', 'M79.603', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('536', 'Pain in right leg', 'M79.6041', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('537', 'Pain in left leg', 'M79.605', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('538', 'Pain in leg, unspecified', 'M79.606', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('539', 'Pain in unspecified limb', 'M79.609', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('540', 'Pain in right upper arm', 'M79.621', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('541', 'Pain in left upper arm', 'M79.622', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('542', 'Pain in unspecified upper arm', 'M79.629', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('543', 'Pain in right forearm', 'M79.631', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('544', 'Pain in left forearm', 'M79.6321', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('545', 'Pain in unspecified forearm', 'M79.639', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('546', 'Pain in right hand', 'M79.641', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('547', 'Pain in left hand', 'M79.642', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('548', 'Pain in unspecified hand', 'M79.643', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('549', 'Pain in right finger(s)', 'M79.644', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('550', 'Pain in left finger(s)', 'M79.645', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('551', 'Pain in unspecified finger(s)', 'M79.646', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('552', 'Pain in right thigh', 'M79.651', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('553', 'Pain in left thigh', 'M79.652', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('554', 'Pain in unspecified thigh', 'M79.659', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('555', 'Pain in right lower leg', 'M79.661', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('556', 'Pain in left lower leg', 'M79.662', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('557', 'Pain in unspecified lower leg', 'M79.669', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('558', 'Pain in right foot', 'M79.671', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('559', 'Pain in left foot', 'M79.672', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('560', 'Pain in unspecified foot', 'M79.673', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('561', 'Pain in right toe(s)', 'M79.674', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('562', 'Pain in left toe(s)', 'M79.675', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('563', 'Pain in unspecified toe(s)', 'M79.676', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('564', 'Encounter for routine child health examination with abnormal findings ', 'Z00.122', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('565', 'Encounter for routine child health examination without abnormal findings', 'Z00.1291', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('566', 'Acute cystitis without hematuria', 'N30.00', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('567', 'Acute cystitis with hematuria', 'N30.01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('568', 'Interstitial cystitis (chronic) without hematuria', 'N30.10', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('569', 'Interstitial cystitis (chronic) with hematuria', 'N30.11', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('570', 'Other chronic cystitis without hematuria', 'N30.20', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('571', 'Other chronic cystitis with hematuria', 'N30.21', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('572', 'Trigonitis without hematuria', 'N30.30', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('573', 'Trigonitis with hematuria', 'N30.31', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('574', 'Irradiation cystitis without hematuria', 'N30.40', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('575', 'Irradiation cystitis with hematuria', 'N30.41', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('576', 'Other cystitis without hematuria', 'N30.80', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('577', 'Other cystitis with hematuria', 'N30.81', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('578', 'Cystitis, unspecified without hematuria', 'N30.90', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('579', 'Cystitis, unspecified with hematuria', 'N30.91', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('580', 'Urinary tract infection, site not specified', 'N39.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('581', 'Mild persistent asthma, uncomplicated ', 'J45.30', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('582', 'Patient’s intentional underdosing of medication regimen due to financial hardship ', 'Z91.120', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('583', 'Underdosing of tetracyclines, initial encounter', 'T36.4x6A', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('584', 'Underdosing of antithrombotic drugs, subsequent encounter', 'T45.526D', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('585', 'Diabetes mellitus due to underlying condition with hyperglycemia  ', 'E08.65', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('586', 'Drug or chemical induced diabetes mellitus with hyperosmolarity with coma ', ' E09.01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('587', 'Transient post-procedural hyperglycemia', 'R73.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('588', 'Hyperglycemia, unspecified', 'R79.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('589', 'Strain of other muscle(s) and tendon(s) at lower leg level, left leg, initial encounter', 'S86.812A     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('590', 'Fall on or from other playground equipment, initial encounter', 'W09.8xxA     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('591', 'Other recreation area as the place of occurrence of the external cause', 'Y92.838        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('592', 'Activities involving rhythmic movement, trampoline jumping', 'Y93.44            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('593', 'Encounter for routine child health examination without abnormal findings ', 'Z00.129', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('594', 'Encounter for routine child health examination with abnormal findings', 'Z00.121', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('595', 'Newborn check under 8 days old', ' Z00.110', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('596', 'Newborn check 8 to 28 days old', 'Z00.111', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('597', 'Acute suppurative otitis media without spontaneous rupture of ear drum, recurrent, right ear', 'H66.004', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('598', 'Total perforations of the tympanic membrane, right ear', 'H72.821', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('599', 'Acute bronchiolitis due to respiratory syncytial virus ', 'J21.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('600', 'Acute bronchiolitis due to human metapneumovirus', 'J21.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('601', 'Regurgitation and rumination of newborn', 'P92.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('602', 'Slow feeding of newborn', 'P92.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('603', 'Neonatal difficulty in feeding at breast', 'P92.5', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('604', ' Left lower quadrant pain', 'R10.32', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('605', 'Lower abdominal pain, unspecified', 'R10.30', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('606', 'Acute bronchitis due to coxsackievirus', 'J20.3', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('607', 'Acute bronchitis due to Hemophilus influenzae', 'J20.1', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('608', 'Acute bronchitis due to Mycoplasma pneumoniae', 'J20.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('609', 'Acute bronchitis due to other specified organisms', 'J20.8', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('610', 'Acute bronchitis due to respiratory syncytial virus', 'J20.5', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('611', 'Acute pharyngitis due to other specified organisms', 'J02.8', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('612', 'Acute upper respiratory infection, unspecified', 'J06.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('613', 'Cervicalgia', 'M54.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('614', 'Dorsalgia, unspecified', 'M54.9', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('615', 'Low back pain', 'M54.5', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('616', 'Other dorsalgia', 'M54.89', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('617', 'Pain in thoracic spine', 'M54.6', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('618', 'Encounter for general adult medical examination with abnormal findings', 'Z00.01', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('619', 'Encounter for general adult medical examination without abnormal findings', 'Z00.00', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('620', 'Essential (primary) hypertension', 'I10', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('621', 'Chronic atrial fibrillation', 'I48.2', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('622', 'Paroxysmal atrial fibrillation', 'I48.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('623', 'Unspecified atrial fibrillation', 'I48.91', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('624', 'Pain in left ankle and joints of left foot', 'M25.572', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('625', 'Pain in left elbow', 'M25.522', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('626', 'Pain in left hip', 'M25.552', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('627', 'Pain in left knee', 'M25.562', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('628', 'Pain in left shoulder', 'M25.512', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('629', 'Pain in left wrist', 'M25.532', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('630', 'Pain in right ankle and joints of right foot', 'M25.571', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('631', 'Pain in right elbow', 'M25.521', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('632', 'Pain in right hip', 'M25.551', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('633', 'Pain in right knee', 'M25.561', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('634', 'Pain in right shoulder', 'M25.511', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('635', 'Pain in right wrist', 'M25.531', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('636', 'Pain in unspecified ankle and joints of unspecified foot', 'M25.579', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('637', 'Pain in unspecified elbow', 'M25.529', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('638', 'Pain in unspecified hip', 'M25.5591', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('639', 'Pain in unspecified joint', 'M25.50', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('640', 'Pain in unspecified knee', 'M25.569', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('641', 'Pain in unspecified shoulder', 'M25.519', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('642', 'Pain in unspecified wrist', 'M25.539', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('643', ' Pain in left forearm', 'M79.632', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('644', ' Pain in right leg', 'M79.604', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('645', 'Anogenital (venereal) warts', 'A63.0', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('646', 'Malignant neoplasm of hepatic flexure', 'C18.3          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('647', 'Malignant neoplasm of rectum', 'C20        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('648', 'Malignant neoplasm of head of pancreas', 'C25.0        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('649', 'Malignant neoplasm of tail of pancreas', 'C25.2          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('650', 'Malignant neoplasm of pancreatic duct', 'C25.3            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('651', 'Malignant neoplasm of endocrine pancreas', 'C25.4        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('652', 'Malignant neoplasm of other parts of pancreas', 'C25.7        ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('653', 'Malignant neoplasm of overlapping sites of pancreas', 'C25.8      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('654', 'Malignant neoplasm of pancreas, unspecified', 'C25.9    ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('655', 'Benign neoplasm of appendix', 'D12.1      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('656', 'Benign neoplasm of ascending colon', 'D12.2     ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('657', 'Benign neoplasm of transverse colon', 'D12.3      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('658', 'Benign neoplasm of descending colon', 'D12.4            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('659', 'Benign neoplasm of sigmoid colon', 'D12.5         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('660', 'Benign neoplasm of colon, unspecified', 'D12.6             ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('661', 'Benign neoplasm of rectosigmoid junction', 'D12.7            ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('662', 'Benign neoplasm of rectum', 'D12.8         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('663', 'Benign neoplasm of anus and anal canal', 'D12.9          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('664', 'Neoplasm of unspecified behaviour of digestive system', 'D49.0           ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('665', 'Morbid (severe) obesity due to excess calories', 'E66.01      ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('666', 'Drug-induced obesity', 'E66.1         ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('667', 'Overweight', 'E66.3          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('668', 'Other obesity', 'E66.8          ', '26', '1');
INSERT INTO `diagnosis` (`d_id`, `diagnosis_name`, `diagnosis_code`, `dep_id`, `status`) VALUES ('669', 'Obesity, unspecified', 'E66.9       ', '26', '1');


#
# TABLE STRUCTURE FOR: diagnosis_sub_category
#

DROP TABLE IF EXISTS `diagnosis_sub_category`;

CREATE TABLE `diagnosis_sub_category` (
  `sub_id` int(11) NOT NULL,
  `diagnosis_id` int(11) NOT NULL,
  `subcatagory` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: doctor_fees
#

DROP TABLE IF EXISTS `doctor_fees`;

CREATE TABLE `doctor_fees` (
  `id` int(11) NOT NULL,
  `doctor_id` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `revist_amount` bigint(255) NOT NULL,
  `other_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `doctor_fees` (`id`, `doctor_id`, `amount`, `revist_amount`, `other_amount`) VALUES ('1', '1', '500', '100', '100');
INSERT INTO `doctor_fees` (`id`, `doctor_id`, `amount`, `revist_amount`, `other_amount`) VALUES ('2', '43', '400', '0', '0');


#
# TABLE STRUCTURE FOR: document
#

DROP TABLE IF EXISTS `document`;

CREATE TABLE `document` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `hidden_attach_file` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `upload_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: enquiry
#

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `enquiry` text DEFAULT NULL,
  `checked` tinyint(1) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('56', 'tanzil4091@gmail.com', '1922296392', 'Tanzil Ahmad', 'Hi ! I want to add your Hospital', '1', '103.225.228.130', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '2', '2017-01-16 05:29:20', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('57', 'sumch@gmail.com', '1922296398', 'Tarek', 'Hi ! I want to work with hospital', '1', '103.225.228.130', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '7', '2017-01-16 05:30:05', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('58', 'jon@gmail.com', '1782296392', 'Jon Doy', 'Hi ! How are you. i want to work with demo hospital limited.', '1', '103.225.228.130', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/55.0.2883.95 Safari/537.36', '7', '2017-01-16 05:31:15', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('59', 'john@doe.com', '01255564757845', 'John Doe', '<p>HELLO</p>', '1', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2', '2017-02-26 09:32:46', '0');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('60', 'john@doe.com', '01255564757845', 'John Doe', '<p>HELLO</p>', '1', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '7', '2017-02-26 09:34:20', '0');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('62', 'john@doe.com', '01312323456', 'John Doe', '<p>Hello World!</p>\r\n<p>Ã‚Â </p>', '1', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2', '2017-02-26 11:25:20', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('63', 'receptionist@demo.com', '0123456789', 'Test', '<p>HELLO ADMIN!</p>', '1', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2', '2017-02-27 09:06:10', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('64', 'test@demo.com', '0123456789', 'Test', 'Need a Doctor for Check-up?\r\nJUST MAKE AN APPOINTMENT & YOU\'RE DONE !', '1', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2', '2017-02-27 10:32:02', '1');
INSERT INTO `enquiry` (`enquiry_id`, `email`, `phone`, `name`, `enquiry`, `checked`, `ip_address`, `user_agent`, `checked_by`, `created_date`, `status`) VALUES ('65', 'swift@example.com', '1234567890', 'Swift', 'Need a Doctor for Check-up?\r\nJUST MAKE AN APPOINTMENT & YOU\'RE DONE !', '1', '::1', 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36', '2', '2017-02-28 11:39:52', '1');


#
# TABLE STRUCTURE FOR: ha_birth
#

DROP TABLE IF EXISTS `ha_birth`;

CREATE TABLE `ha_birth` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ha_category
#

DROP TABLE IF EXISTS `ha_category`;

CREATE TABLE `ha_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ha_death
#

DROP TABLE IF EXISTS `ha_death`;

CREATE TABLE `ha_death` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ha_investigation
#

DROP TABLE IF EXISTS `ha_investigation`;

CREATE TABLE `ha_investigation` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ha_medicine
#

DROP TABLE IF EXISTS `ha_medicine`;

CREATE TABLE `ha_medicine` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL,
  `manufactured_by` varchar(255) NOT NULL,
  `create_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ha_operation
#

DROP TABLE IF EXISTS `ha_operation`;

CREATE TABLE `ha_operation` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: inc_insurance
#

DROP TABLE IF EXISTS `inc_insurance`;

CREATE TABLE `inc_insurance` (
  `id` int(11) NOT NULL,
  `insurance_name` varchar(255) DEFAULT NULL,
  `service_tax` varchar(50) DEFAULT NULL,
  `discount` varchar(50) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `insurance_no` varchar(50) DEFAULT NULL,
  `insurance_code` varchar(50) DEFAULT NULL,
  `disease_charge` text DEFAULT NULL COMMENT 'array(name, charge)',
  `hospital_rate` varchar(50) DEFAULT NULL,
  `insurance_rate` varchar(50) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: inc_limit_approval
#

DROP TABLE IF EXISTS `inc_limit_approval`;

CREATE TABLE `inc_limit_approval` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(30) DEFAULT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `disease_details` text DEFAULT NULL COMMENT 'name, description',
  `consultant_id` int(11) DEFAULT NULL COMMENT 'doctor list',
  `policy_name` varchar(255) DEFAULT NULL,
  `policy_no` varchar(100) DEFAULT NULL,
  `policy_holder_name` varchar(255) DEFAULT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `approval_breakup` text DEFAULT NULL COMMENT 'name, charge',
  `total` varchar(50) DEFAULT NULL,
  `date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: language
#

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) unsigned NOT NULL,
  `phrase` text NOT NULL,
  `english` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('1', 'email', 'Email Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('2', 'password', 'Password');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('3', 'login', 'Log In');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('4', 'incorrect_email_password', 'Incorrect Email/Password!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('5', 'user_role', 'User Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('6', 'please_login', 'Please Log In');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('7', 'setting', 'Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('8', 'profile', 'Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('9', 'logout', 'Log Out');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('10', 'please_try_again', 'Please Try Again');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('11', 'admin', 'Admin');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('12', 'doctor', 'Doctor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('13', 'representative', 'Representative');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('14', 'dashboard', 'Dashboard');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('15', 'department', 'Department');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('16', 'add_department', 'Add Department');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('17', 'department_list', 'Department List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('18', 'add_doctor', 'Add Doctor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('19', 'doctor_list', 'Doctor List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('20', 'add_representative', 'Add Representative');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('21', 'representative_list', 'Representative List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('22', 'patient', 'Patient');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('23', 'add_patient', 'Add Patient');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('24', 'patient_list', 'Patient List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('25', 'schedule', 'Schedule');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('26', 'add_schedule', 'Add Schedule');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('27', 'schedule_list', 'Schedule List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('28', 'appointment', 'Appointment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('29', 'add_appointment', 'Add Appointment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('30', 'appointment_list', 'Appointment List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('31', 'enquiry', 'Enquiry');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('32', 'language_setting', 'Language Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('33', 'appointment_report', 'Appointment Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('34', 'assign_by_all', 'Assign by All');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('35', 'assign_by_doctor', 'Assign by Doctor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('36', 'assign_to_doctor', 'Assign to Doctor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('37', 'assign_by_representative', 'Assign by Representative');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('38', 'report', 'Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('39', 'assign_by_me', 'Assign by Me');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('40', 'assign_to_me', 'Assign to Me');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('41', 'website', 'Website');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('42', 'slider', 'Slider');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('43', 'section', 'Section');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('44', 'section_item', 'Section Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('45', 'comments', 'Comment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('46', 'latest_enquiry', 'Latest Enquiry');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('47', 'total_progress', 'Total Progress');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('48', 'last_year_status', 'Showing status from the last year');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('49', 'department_name', 'Department Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('50', 'description', 'Description');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('51', 'status', 'Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('52', 'active', 'Active');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('53', 'inactive', 'Inactive');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('54', 'cancel', 'Cancel');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('55', 'save', 'Save');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('56', 'serial', 'SL.NO');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('57', 'action', 'Action');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('58', 'edit', 'Edit ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('59', 'delete', 'Delete');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('60', 'save_successfully', 'Save Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('61', 'update_successfully', 'Update Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('62', 'department_edit', 'Department Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('63', 'delete_successfully', 'Delete successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('64', 'are_you_sure', 'Are You Sure ? ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('65', 'first_name', 'First Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('66', 'last_name', 'Last Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('67', 'phone', 'Phone No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('68', 'mobile', 'Mobile No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('69', 'blood_group', 'Blood Group');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('70', 'sex', 'Sex');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('71', 'date_of_birth', 'Date of Birth');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('72', 'address', 'Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('73', 'invalid_picture', 'Invalid Picture');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('74', 'doctor_profile', 'Doctor Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('75', 'edit_profile', 'Edit Profile');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('76', 'edit_doctor', 'Edit Doctor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('77', 'designation', 'Designation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('78', 'short_biography', 'Short Biography');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('79', 'picture', 'Picture');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('80', 'specialist', 'Specialist');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('81', 'male', 'Male');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('82', 'female', 'Female');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('83', 'education_degree', 'Education/Degree');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('84', 'create_date', 'Create Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('85', 'view', 'View');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('86', 'doctor_information', 'Doctor Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('87', 'update_date', 'Update Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('88', 'print', 'Print');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('89', 'representative_edit', 'Representative Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('90', 'patient_information', 'Patient Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('91', 'other', 'Other');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('92', 'patient_id', 'Patient ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('93', 'age', 'Age');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('94', 'patient_edit', 'Patient Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('95', 'id_no', 'ID No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('96', 'select_option', 'Select Option');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('97', 'doctor_name', 'Doctor Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('98', 'day', 'Day');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('99', 'start_time', 'Start Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('100', 'end_time', 'End Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('101', 'per_patient_time', 'Per Patient Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('102', 'serial_visibility_type', 'Serial Visibility');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('103', 'sequential', 'Sequential');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('104', 'timestamp', 'Timestamp');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('105', 'available_days', 'Available Days');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('106', 'schedule_edit', 'Schedule Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('107', 'available_time', 'Available Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('108', 'serial_no', 'Serial No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('109', 'problem', 'Problem');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('110', 'appointment_date', 'Appointment Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('111', 'you_are_already_registered', 'You Are Already Registered');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('112', 'invalid_patient_id', 'Invalid patient ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('113', 'invalid_input', 'Invalid Input');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('114', 'no_doctor_available', 'No Doctor Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('115', 'invalid_department', 'Invalid Department!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('116', 'no_schedule_available', 'No Schedule Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('117', 'please_fillup_all_required_fields', 'Please fillup all required filelds');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('118', 'appointment_id', 'Appointment ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('119', 'schedule_time', 'Schedule Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('120', 'appointment_information', 'Appointment Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('121', 'full_name', 'Full Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('122', 'read_unread', 'Read / Unread');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('123', 'date', 'Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('124', 'ip_address', 'IP Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('125', 'user_agent', 'User Agent');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('126', 'checked_by', 'Checked By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('127', 'enquiry_date', 'Enquirey Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('128', 'enquiry_list', 'Enquiry List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('129', 'filter', 'Filter');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('130', 'start_date', 'Start Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('131', 'end_date', 'End Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('132', 'application_title', 'Application Title');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('133', 'favicon', 'Favicon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('134', 'logo', 'Logo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('135', 'footer_text', 'Footer Text');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('136', 'language', 'Language');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('137', 'appointment_assign_by_all', 'Appointment Assign by All');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('138', 'appointment_assign_by_doctor', 'Appointment Assign by Doctor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('139', 'appointment_assign_by_representative', 'Appointment Assign by Representative');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('140', 'appointment_assign_to_all_doctor', 'Appointment Assign to All Doctor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('141', 'appointment_assign_to_me', 'Appointment Assign to Me');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('142', 'appointment_assign_by_me', 'Appointment Assign by Me');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('143', 'type', 'Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('144', 'website_title', 'Website Title');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('145', 'invalid_logo', 'Invalid Logo');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('146', 'details', 'Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('147', 'website_setting', 'Website Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('148', 'submit_successfully', 'Submit Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('149', 'application_setting', 'Application Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('150', 'invalid_favicon', 'Invalid Favicon');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('151', 'new_enquiry', 'New Enquiry');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('152', 'information', 'Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('153', 'home', 'Home');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('154', 'select_department', 'Select Department');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('155', 'select_doctor', 'Select Doctor');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('156', 'select_representative', 'Select Representative');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('157', 'post_id', 'Post ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('158', 'thank_you_for_your_comment', 'Thank you for your comment!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('159', 'comment_id', 'Comment ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('160', 'comment_status', 'Comment Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('161', 'comment_added_successfully', 'Comment Added Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('162', 'comment_remove_successfully', 'Comment Remove Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('163', 'select_item', 'Section Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('164', 'add_item', 'Add Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('165', 'menu_name', 'Menu Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('166', 'title', 'Title');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('167', 'position', 'Position');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('168', 'invalid_icon_image', 'Invalid Icon Image!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('169', 'about', 'About');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('170', 'blog', 'Blog');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('171', 'service', 'Service');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('172', 'item_edit', 'Item Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('173', 'registration_successfully', 'Registration Successfully');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('174', 'add_section', 'Add Section');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('175', 'section_name', 'Section Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('176', 'invalid_featured_image', 'Invalid Featured Image!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('177', 'section_edit', 'Section Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('178', 'meta_description', 'Meta Description');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('179', 'twitter_api', 'Twitter Api');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('180', 'google_map', 'Google Map');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('181', 'copyright_text', 'Copyright Text');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('182', 'facebook_url', 'Facebook URL');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('183', 'twitter_url', 'Twitter URL');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('184', 'vimeo_url', 'Vimeo URL');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('185', 'instagram_url', 'Instagram Url');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('186', 'dribbble_url', 'Dribbble URL');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('187', 'skype_url', 'Skype URL');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('188', 'add_slider', 'Add Slider');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('189', 'subtitle', 'Sub Title');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('190', 'slide_position', 'Slide Position');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('191', 'invalid_image', 'Invalid Image');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('192', 'image_is_required', 'Image is required');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('193', 'slider_edit', 'Slider Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('194', 'meta_keyword', 'Meta Keyword');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('195', 'year', 'Year');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('196', 'month', 'Month');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('197', 'recent_post', 'Recent Post');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('198', 'leave_a_comment', 'Leave a Comment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('199', 'submit', 'Submit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('200', 'google_plus_url', 'Google Plus URL');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('201', 'website_status', 'Website Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('202', 'new_slide', 'New Slide');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('203', 'new_section', 'New Section');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('204', 'subtitle_description', 'Sub Title / Description');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('205', 'featured_image', 'Featured Image');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('206', 'new_item', 'New Item');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('207', 'item_position', 'Item Position');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('208', 'icon_image', 'Icon Image');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('209', 'post_title', 'Post Title');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('210', 'add_to_website', 'Add to Website');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('211', 'read_more', 'Read More');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('212', 'registration', 'Registration');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('213', 'appointment_form', 'Appointment Form');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('214', 'contact', 'Contact');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('215', 'optional', 'Optional');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('216', 'customer_comments', 'Customer Comments');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('217', 'need_a_doctor_for_checkup', 'Need a Doctor for Check-up?');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('218', 'just_make_an_appointment_and_you_are_done', 'JUST MAKE AN APPOINTMENT & YOU\'RE DONE ! ');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('219', 'get_an_appointment', 'Get an appointment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('220', 'latest_news', 'Latest News');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('221', 'latest_tweet', 'Latest Tweet');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('222', 'menu', 'Menu');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('223', 'select_user_role', 'Select User Role');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('224', 'site_align', 'Website Align');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('225', 'right_to_left', 'Right to Left');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('226', 'left_to_right', 'Left to Right');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('227', 'account_manager', 'Account Manager');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('228', 'add_invoice', 'Add Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('229', 'invoice_list', 'Invoice List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('230', 'account_list', 'Account List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('231', 'add_account', 'Add Account');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('232', 'account_name', 'Account Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('233', 'credit', 'Credit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('234', 'debit', 'Debit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('235', 'account_edit', 'Account Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('236', 'quantity', 'Quantity');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('237', 'price', 'Price');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('238', 'total', 'Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('239', 'remove', 'Remove');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('240', 'add', 'Add');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('241', 'subtotal', 'Sub Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('242', 'vat', 'Vat');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('243', 'grand_total', 'Grand Total');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('244', 'discount', 'Discount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('245', 'paid', 'Paid');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('246', 'due', 'Due');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('247', 'reset', 'Reset');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('248', 'add_or_remove', 'Add / Remove');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('249', 'invoice', 'Invoice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('250', 'invoice_information', 'Invoice Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('251', 'invoice_edit', 'Invoice Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('252', 'update', 'Update');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('253', 'all', 'All');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('254', 'patient_wise', 'Patient Wise');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('255', 'account_wise', 'Account Wise');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('256', 'debit_report', 'Debit Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('257', 'credit_report', 'Credit Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('258', 'payment_list', 'Payment List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('259', 'add_payment', 'Add Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('260', 'payment_edit', 'Payment Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('261', 'pay_to', 'Pay To');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('262', 'amount', 'Amount');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('263', 'bed_type', 'Bed Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('264', 'bed_limit', 'Bed Capacity');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('265', 'charge', 'Charge');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('266', 'bed_list', 'Bed List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('267', 'add_bed', 'Add Bed');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('268', 'bed_manager', 'Bed Manager');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('269', 'bed_edit', 'Bed Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('270', 'bed_assign', 'Bed Assign');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('271', 'assign_date', 'Assign Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('272', 'discharge_date', 'Discharge Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('273', 'bed_assign_list', 'Bed Assign List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('274', 'assign_by', 'Assign By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('275', 'bed_available', 'Bed is Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('276', 'bed_not_available', 'Bed is Not Available');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('277', 'invlid_input', 'Invalid Input');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('278', 'allocated', 'Allocated');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('279', 'free_now', 'Free');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('280', 'select_only_avaiable_days', 'Select Only Avaiable Days');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('281', 'human_resources', 'Human Resources');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('282', 'nurse_list', 'Nurse List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('283', 'add_employee', 'Add Employee');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('284', 'user_type', 'User Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('285', 'employee_information', 'Employee Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('286', 'employee_edit', 'Edit Employee');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('287', 'laboratorist_list', 'Laboratorist List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('288', 'accountant_list', 'Accountant List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('289', 'receptionist_list', 'Receptionist List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('290', 'pharmacist_list', 'Pharmacist List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('291', 'nurse', 'Nurse');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('292', 'laboratorist', 'Laboratorist');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('293', 'pharmacist', 'Pharmacist');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('294', 'accountant', 'Accountant');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('295', 'receptionist', 'Receptionist');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('296', 'noticeboard', 'Noticeboard');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('297', 'notice_list', 'Notice List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('298', 'add_notice', 'Add Notice');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('299', 'hospital_activities', 'Hospital Activities');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('300', 'death_report', 'Death Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('301', 'add_death_report', 'Add Death Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('302', 'death_report_edit', 'Death Report Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('303', 'birth_report', 'Birth Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('304', 'birth_report_edit', 'Birth Report Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('305', 'add_birth_report', 'Add Birth Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('306', 'add_operation_report', 'Add Operation Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('307', 'operation_report', 'Operation Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('308', 'investigation_report', 'Investigation Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('309', 'add_investigation_report', 'Add Investigation Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('310', 'add_medicine_category', 'Add Medicine Category');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('311', 'medicine_category_list', 'Medicine Category List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('312', 'category_name', 'Category Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('313', 'medicine_category_edit', 'Medicine Category Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('314', 'add_medicine', 'Add Medicine');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('315', 'medicine_list', 'Medicine List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('316', 'medicine_edit', 'Medicine Edit');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('317', 'manufactured_by', 'Manufactured By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('318', 'medicine_name', 'Medicine Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('319', 'messages', 'Messages');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('320', 'inbox', 'Inbox');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('321', 'sent', 'Sent');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('322', 'new_message', 'New Message');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('323', 'sender', 'Sender Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('324', 'message', 'Message');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('325', 'subject', 'Subject');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('326', 'receiver_name', 'Send To');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('327', 'select_user', 'Select User');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('328', 'message_sent', 'Messages Sent');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('329', 'mail', 'Mail');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('330', 'send_mail', 'Send Mail');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('331', 'mail_setting', 'Mail Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('332', 'protocol', 'Protocol');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('333', 'mailpath', 'Mail Path');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('334', 'mailtype', 'Mail Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('335', 'validate_email', 'Validate Email Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('336', 'true', 'True');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('337', 'false', 'False');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('338', 'attach_file', 'Attach File');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('339', 'wordwrap', 'Enable Word Wrap');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('340', 'send', 'Send');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('341', 'upload_successfully', 'Upload Successfully!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('342', 'app_setting', 'App Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('343', 'case_manager', 'Case Manager');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('344', 'patient_status', 'Patient Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('345', 'patient_status_edit', 'Edit Patient Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('346', 'add_patient_status', 'Add Patient Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('347', 'add_new_status', 'Add New Status');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('348', 'case_manager_list', 'Case Manager List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('349', 'hospital_address', 'Hospital Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('350', 'ref_doctor_name', 'Ref. Doctor Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('351', 'hospital_name', 'Hospital Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('352', 'patient_name', 'Patient  Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('353', 'document_list', 'Document List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('354', 'add_document', 'Add Document');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('355', 'upload_by', 'Upload By');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('356', 'documents', 'Documents');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('357', 'prescription', 'Prescription');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('358', 'add_prescription', 'Add Prescription');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('359', 'prescription_list', 'Prescription List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('360', 'add_insurance', 'Add Insurance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('361', 'insurance_list', 'Insurance List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('362', 'insurance_name', 'Insurance Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('366', 'add_patient_case_study', 'Add Patient Case Study');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('367', 'patient_case_study_list', 'Patient Case Study List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('368', 'food_allergies', 'Food Allergies');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('369', 'tendency_bleed', 'Tendency Bleed');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('370', 'heart_disease', 'Heart Disease');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('371', 'high_blood_pressure', 'High Blood Pressure');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('372', 'diabetic', 'Diabetic');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('373', 'surgery', 'Surgery');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('374', 'accident', 'Accident');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('375', 'others', 'Others');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('376', 'family_medical_history', 'Family Medical History');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('377', 'current_medication', 'Current Medication');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('378', 'female_pregnancy', 'Female Pregnancy');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('379', 'breast_feeding', 'Breast Feeding');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('380', 'health_insurance', 'Health Insurance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('381', 'low_income', 'Low Income');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('382', 'reference', 'Reference');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('385', 'instruction', 'Instruction');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('386', 'medicine_type', 'Medicine Type');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('387', 'days', 'Days');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('388', 'weight', 'Weight');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('389', 'blood_pressure', 'Blood Pressure');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('390', 'old', 'Old');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('391', 'new', 'New');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('392', 'case_study', 'Case Study');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('393', 'chief_complain', 'Chief Complain');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('394', 'patient_notes', 'Patient Notes');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('395', 'visiting_fees', 'Visiting Fees');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('396', 'diagnosis', 'Diagnosis');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('397', 'prescription_id', 'Prescription ID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('398', 'name', 'Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('399', 'prescription_information', 'Prescription Information');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('400', 'sms', 'SMS');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('401', 'gateway_setting', 'Gateway Setting');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('402', 'time_zone', 'Time Zone');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('403', 'username', 'User Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('404', 'provider', 'Provider');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('405', 'sms_template', 'SMS Template');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('406', 'template_name', 'Template Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('407', 'sms_schedule', 'SMS Schedule');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('408', 'schedule_name', 'Schedule Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('409', 'time', 'Time');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('410', 'already_exists', 'Already Exists');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('411', 'send_custom_sms', 'Send Custom SMS');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('412', 'sms_sent', 'SMS Sent!');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('413', 'custom_sms_list', 'Custom SMS List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('414', 'reciver', 'Reciver');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('415', 'auto_sms_report', 'Auto SMS Report');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('417', 'user_sms_list', 'User SMS List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('418', 'send_sms', 'Send SMS');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('419', 'new_sms', 'New SMS');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('420', 'sms_list', 'SMS List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('421', 'insurance', 'Insurance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('422', 'add_limit_approval', 'Add Limit Approval');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('423', 'limit_approval_list', 'Limit Approval List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('424', 'service_tax', 'Service Tax');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('425', 'remark', 'Remark');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('426', 'insurance_no', 'Insurance No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('427', 'insurance_code', 'Insurance Code');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('428', 'hospital_rate', 'Hospital Rate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('429', 'insurance_rate', 'Insurance Rate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('430', 'disease_charge', 'Disease Charge');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('431', 'disease_name', 'Disease Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('432', 'room_no', 'Room No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('433', 'disease_details', 'Disease Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('434', 'consultant_name', 'Consultant Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('435', 'policy_name', 'Policy Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('436', 'policy_no', 'Policy No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('437', 'policy_holder_name', 'Policy Holder Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('438', 'approval_breakup', ' Approval Charge Break up');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('439', 'limit_approval', 'Limit Approval');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('440', 'insurance_limit_approval', 'Insurance Limit Approval');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('441', 'billing', 'Billing');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('442', 'add_admission', 'Add Patient Admission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('443', 'add_service', 'Add Service');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('444', 'service_list', 'Service List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('445', 'service_name', 'Service Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('446', 'add_package', 'Add Package');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('447', 'package_list', 'Package List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('448', 'package_name', 'Package Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('449', 'package_details', 'Package Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('450', 'edit_package', 'Edit Package');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('451', 'admission_date', 'Admission Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('452', 'guardian_name', 'Guardian Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('453', 'agent_name', 'Agent Name');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('454', 'guardian_relation', 'Guardian Relation');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('455', 'guardian_contact', 'Guardian Contact');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('456', 'guardian_address', 'Guardian Address');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('457', 'admission_list', 'Patient Admission List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('458', 'admission_id', 'AID');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('459', 'edit_admission', 'Edit Admission');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('460', 'add_advance', 'Add Advance Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('461', 'advance_list', 'Advance Payment List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('462', 'receipt_no', 'Receipt No');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('463', 'cash_card_or_cheque', 'Cash / Card / Cheque');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('464', 'payment_method', 'Payment Method');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('465', 'add_bill', 'Add Bill');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('466', 'bill_list', 'Bill List');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('467', 'bill_date', 'Bill Date');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('468', 'total_days', 'Total Days');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('469', 'advance_payment', 'Advance Payment');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('470', 'cash', 'Cash');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('471', 'card', 'Card');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('472', 'cheque', 'Cheque');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('473', 'card_cheque_no', 'Card / Cheque No.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('474', 'receipt', 'Receipt');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('475', 'tax', 'Tax');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('476', 'pay_advance', 'Pay Advance');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('477', 'payable', 'Payable');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('478', 'notes', 'Notes');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('479', 'rate', 'Rate');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('480', 'bill_id', 'Bill ID.');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('481', 'paid', 'Paid');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('482', 'unpaid', 'Unpaid');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('483', 'bill_details', 'Bill Details');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('484', 'signature', 'Signature');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('485', 'update_bill', 'Update Bill');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('486', 'cashier', 'Cashier');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('487', 'anesthesiology', 'Anesthesiology');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('488', 'cashier_list', 'Cashier list');
INSERT INTO `language` (`id`, `phrase`, `english`) VALUES ('489', 'anesthesiology_list', 'Anesthesiology List');


#
# TABLE STRUCTURE FOR: mail_setting
#

DROP TABLE IF EXISTS `mail_setting`;

CREATE TABLE `mail_setting` (
  `id` int(11) NOT NULL,
  `protocol` varchar(20) NOT NULL,
  `mailpath` varchar(255) NOT NULL,
  `mailtype` varchar(20) NOT NULL,
  `validate_email` varchar(20) NOT NULL,
  `wordwrap` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `mail_setting` (`id`, `protocol`, `mailpath`, `mailtype`, `validate_email`, `wordwrap`) VALUES ('5', 'sendmail', '/usr/sbin/sendmail', 'html', 'false', 'true');


#
# TABLE STRUCTURE FOR: medicine_list
#

DROP TABLE IF EXISTS `medicine_list`;

CREATE TABLE `medicine_list` (
  `m_id` int(11) NOT NULL,
  `mmc_id` int(11) NOT NULL,
  `msc_id` int(11) NOT NULL,
  `m_name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `m_status` int(11) NOT NULL DEFAULT 1 COMMENT '0-NotAvailable/1-Available',
  `price` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `pack_data` varchar(100) NOT NULL,
  `stock_count` varchar(100) NOT NULL,
  `expired_date` date NOT NULL,
  `create_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('1', '1', '25', 'Azithromycin 500mg tablets', NULL, '0', '10', NULL, '', '20', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('2', '1', '25', 'Clarithromycin 500mg tablets', NULL, '1', '10', NULL, '', '0', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('3', '1', '25', 'Cefixime 200mg tablets ', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('4', '1', '25', 'Cefuroxime 500mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('5', '1', '25', 'Ofloxacin and ornidazole tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('6', '1', '25', 'Levofloxacin 750mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('7', '1', '25', 'Ciprofloxacin and Tinidazole tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('8', '1', '25', 'Cephalexin 500mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('9', '1', '25', 'Amoxicillin and clavanute acid tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('10', '1', '25', 'Metronidazole 200mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('11', '1', '25', 'Septrin 480mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('12', '1', '25', 'Ciprofloxacin 500mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('13', '1', '25', 'Ampicillin and Cloxacilin 500mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('14', '1', '25', 'Cloxacillin 500mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('15', '1', '25', 'Doxycycline 100mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('16', '1', '25', 'Amoxicillin 250mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('17', '1', '25', 'Metronidazole and Norfloxacin 500mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('18', '1', '25', 'Cephalexin syrup 125mg/5ml', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('19', '1', '25', 'Cifixime syrup 125mg/5ml', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('20', '1', '25', 'Amoxicillin and clavanute acid syrup 125mg/5ml', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('21', '1', '25', 'Metronidazole 200mg syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('22', '1', '25', 'Ampicillin and Cloxacilin 125mg/5ml', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('23', '1', '25', 'Amoxicillin 125mg/5ml syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('24', '1', '25', 'Cefpodixime syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('25', '1', '25', 'Nalidix acid syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('26', '1', '25', 'Dazel kit', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('27', '2', '25', 'Methyldopa 250mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('28', '2', '25', 'Amlodipine 5mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('29', '2', '25', 'Amlodipine 10mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('30', '2', '25', '(Asomex) Amlodipine 5mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('31', '2', '25', 'Furosemide 40mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('32', '2', '25', 'Carvedilol tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('33', '2', '25', 'Enalapril 10mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('34', '2', '25', 'Enalapril 5mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('35', '2', '25', 'Atenolol 50mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('36', '2', '25', 'Losartan and hydrochlothiazide (Nusar-H) 50mg/12.5', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('37', '2', '25', 'Telmisartan and hydrochlothiazide (Telma-H) 50mg/1', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('38', '2', '25', 'Hydrochlothiazide 25mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('39', '2', '25', 'Nifedipine 10mg tablets ', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('40', '2', '25', 'Nifedipine 20mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('41', '2', '25', 'Digoxin 0.25mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('42', '2', '25', 'Propranolol 40mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('43', '2', '25', 'Spironolactone 25mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('44', '2', '25', 'GTN SPRAY (gylceryl nitrate', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('45', '2', '25', 'Febuday 40mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('46', '2', '25', 'Febuday 80 mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('47', '2', '25', 'Atrovastin 10mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('48', '2', '25', 'Atrovastin 20mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('49', '3', '25', 'Terbinafine 250mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('50', '3', '25', 'Griseofluvin 500mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('51', '3', '25', 'Fluconazole 200mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('52', '3', '25', 'Ketoclonazole cream', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('53', '3', '25', 'Funbact cream', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('54', '3', '25', 'Cardiderm cream', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('55', '3', '25', 'Miconazole cream', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('56', '3', '25', 'Clotrimazole cream', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('57', '3', '25', 'Clotrimazole vaginal insert suppository', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('58', '3', '25', 'Clidamycin and Clotrimazole vaginal suppository', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('59', '3', '25', 'Clotrimazole vaginal gel', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('60', '3', '25', 'Cystocran tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('61', '3', '25', 'Vaglicin suppository', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('62', '3', '25', 'Acyclovir tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('63', '3', '25', 'Acyclovir cream', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('64', '4', '25', 'APDHL-H syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('65', '4', '25', 'Sinarest syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('66', '4', '25', 'Ascoril syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('67', '4', '25', 'Mucolyn adult syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('68', '4', '25', 'Mucolyn pediatric syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('69', '4', '25', 'Grilinctus BM syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('70', '4', '25', 'Grilinctus syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('71', '4', '25', 'Frebex syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('72', '4', '25', 'Co-Ex syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('73', '4', '25', 'Bro-zedex syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('74', '4', '25', 'Coldrid syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('75', '4', '25', 'Upacof Expectrorant syrup ', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('76', '4', '25', 'Upacof Dry cough syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('77', '4', '25', 'Upacof Ped syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('78', '5', '25', 'Metoclopramide tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('79', '5', '25', 'Domperidone tablets', NULL, '1', '10', NULL, '', '30', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('80', '5', '25', 'Domperidone syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('81', '5', '25', 'Ondasterone syrup', NULL, '1', '100', NULL, '', '32', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('83', '5', '25', 'Nosic tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('84', '6', '25', 'Paracetamol 500mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('85', '6', '25', 'Ibrufen 200mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('86', '6', '25', 'Piroxicam tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('87', '6', '25', 'Gofen 400mg', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('88', '6', '25', 'Powergesic tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('89', '6', '25', 'Asprin 75mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('90', '6', '25', 'Buscopan 10mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('91', '6', '25', 'Mefenamic acid tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('92', '6', '25', 'Tramadol tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('93', '6', '25', 'Vasograin tablets ', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('94', '6', '25', 'Diclofenac 50mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('95', '6', '25', 'Paracentamol Extended release 1000mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('96', '6', '25', 'Brustan tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('97', '6', '25', 'Cyclopam tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('98', '6', '25', 'Aceclofenac tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('99', '6', '25', 'Flamar MX tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('100', '6', '25', 'Meloxicam 15mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('101', '6', '25', 'Diclofenac QPS spray', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('102', '6', '25', 'Diclofenac cream', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('103', '6', '25', 'Ultra heat gel', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('104', '6', '25', 'Capsifenac cream', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('105', '6', '25', 'Poergesic cream', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('106', '6', '25', 'Paracetamol syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('107', '6', '25', 'Brustan syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('108', '6', '25', 'Ibrufen and paracetamol syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('109', '6', '25', 'Para Denk suppository', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('110', '6', '25', ' Ibuplus tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('111', '7', '25', 'Ulgicid syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('112', '7', '25', 'Viscid syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('113', '7', '25', 'Esomeprazole 40mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('114', '7', '25', 'Gass off tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('115', '7', '25', 'Rapebrazole tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('116', '7', '25', 'Chewable Magensium tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('117', '7', '25', 'Milk of Magensia syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('118', '7', '25', 'Bonnison syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('119', '7', '25', 'Cital syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('120', '7', '25', 'Digestive complex Nativa', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('121', '8', '25', 'Lonart syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('122', '8', '25', 'Atesunate 120mg', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('123', '8', '25', 'Fansidar tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('124', '8', '25', 'Artefan 80/480mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('125', '9', '25', 'Previt tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('126', '9', '25', 'Foetasafe capsules', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('127', '9', '25', 'Mom 2B capsules', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('128', '9', '25', 'Natcare Plus capsules', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('129', '9', '25', 'Wellman tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('130', '9', '25', 'Oligocare tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('131', '9', '25', 'Ovacare tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('132', '9', '25', 'Wellwoman tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('133', '9', '25', 'Fertilion-F tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('134', '9', '25', 'Fertilion-M tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('135', '9', '25', 'Zincovit tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('136', '9', '25', 'Omega 3 tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('137', '9', '25', 'Calcium & vitamin D3 tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('138', '9', '25', 'Vitamin B compound', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('139', '9', '25', 'Pregnacare tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('140', '9', '25', 'Neurobion tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('141', '9', '25', 'Purecal tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('142', '9', '25', 'Immunac/immunol tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('143', '9', '25', 'Cachnerve tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('144', '9', '25', 'Lactofolin tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('145', '9', '25', 'Enat cream', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('146', '9', '25', 'Vitamin E capsules', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('147', '9', '25', 'Evening Primrose capsules', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('148', '10', '25', 'Ciprofloxacin eye drops', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('149', '10', '25', 'Dexamethasone eye/ear drops', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('150', '10', '25', 'Neomycin & Dexamethasone eye/ear drops', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('151', '10', '25', 'Tetracycline ointment ', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('152', '10', '25', 'Decon adult nasal drop', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('153', '10', '25', 'Decon pediatric nasal drop', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('154', '10', '25', 'OTO 4 ear drops', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('155', '10', '25', 'Normal saline drops', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('156', '11', '25', 'Medroxypregesterone tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('157', '11', '25', 'Norethisterone tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('158', '11', '25', 'Hormorin capsules', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('159', '11', '25', 'Comiphen tablets ', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('160', '12', '25', 'Loratidine tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('161', '12', '25', 'Cetirizine tablets ', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('162', '12', '25', 'Loratidine syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('163', '12', '25', 'Cetirizine syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('164', '12', '25', 'Piriton tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('165', '12', '25', 'Promethazine tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('166', '13', '25', 'Metformin 500mg tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('167', '13', '25', 'Glimepiride & metformin tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('168', '14', '25', 'R B Tone syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('169', '14', '25', 'Dexorange syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('170', '14', '25', 'Astifer syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('171', '14', '25', 'Haemacel IV', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('172', '14', '25', 'Raferon tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('173', '14', '25', 'Ferrotone capsules', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('174', '15', '25', 'wokadine mouth wash', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('175', '15', '25', 'quadragel cream', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('176', '15', '25', 'povidone syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('177', '15', '25', 'potassium permagenate powder', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('178', '15', '25', 'hydrogen peroxide 2% syrup', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('179', '15', '25', 'savlon solution', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('180', '16', '25', 'ANOMEX SUPPOSITORY', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('181', '16', '25', 'MENIPHEB TABLETS', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('182', '16', '25', 'KIDFLAME TABLETS', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('183', '16', '25', 'ARTISOL (Glucosamine) tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('184', '16', '25', 'Ubinext tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('185', '16', '25', 'Maryprist tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('186', '16', '25', 'Cytotec tablets', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('187', '17', '25', 'TETANUS INJECTION', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('188', '17', '25', 'Hcg injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('189', '17', '25', 'Anti-D immunoglobulin injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('190', '17', '25', 'Metroclopromide injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('191', '17', '25', 'Norethisterone injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('192', '17', '25', 'Diclofenac injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('193', '17', '25', 'Tramadol injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('194', '17', '25', 'Insulin injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('195', '17', '25', 'Analgin injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('196', '17', '25', 'Pethidine injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('197', '17', '25', 'Ceftriaxone injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('198', '17', '25', 'Cefetexime injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('199', '17', '25', 'Bascopan injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('200', '17', '25', 'Hydralazine injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('201', '17', '25', 'Furosemide injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('202', '17', '25', 'Promethazine injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('203', '17', '25', 'Dexamethasone injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('204', '17', '25', 'I/V fluids', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('205', '17', '25', 'Vitamin K1 injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('206', '17', '25', 'Gentamycin injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('207', '17', '25', 'Lidocaine injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('208', '17', '25', 'Artesuante injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('209', '17', '25', 'Tranexamic acid injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('210', '17', '25', 'Propofol injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('211', '17', '25', 'Etamyslate injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('212', '17', '25', 'Metronidazole injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('213', '17', '25', 'Paracetamol injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('214', '17', '25', 'Atropine injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('215', '17', '25', 'Adrenaline injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('216', '17', '25', 'Hydrocortisone injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('217', '17', '25', 'Ceftriaxone & salbutctum injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('218', '17', '25', 'Aminophylline injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('219', '17', '25', 'Ondesterone injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('220', '17', '25', 'Salbutamol nebules', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('221', '17', '25', 'Enoxaparin 40mg injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('222', '17', '25', 'Enoxaparin 60mg injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('223', '17', '25', 'Benzathine pencillin 2.4mega', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('224', '17', '25', 'Benzyl pencillin 5 mega (x-pen)', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('225', '17', '25', 'Oxytocin injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('226', '17', '25', 'Esomeprazole injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('227', '17', '25', 'Pratroprazole injection', NULL, '1', '10', NULL, '', '50', '2020-10-10', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('228', '17', '25', 'Calcium Gluconate injection', NULL, '1', '10', NULL, '', '50', '2020-01-20', NULL);
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('230', '1', '25', 'test tablet', '', '0', '200', 'test', 'test', '50', '2020-01-10', '2020-03-09');
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('231', '1', '25', 'test tablet2', 'NULL', '1', '100', 'test', 'test', '50', '2020-10-10', '2020-03-09');
INSERT INTO `medicine_list` (`m_id`, `mmc_id`, `msc_id`, `m_name`, `description`, `m_status`, `price`, `company`, `pack_data`, `stock_count`, `expired_date`, `create_date`) VALUES ('232', '1', '25', 'test tablet3', 'NULL', '1', '50', 'test', 'test', '50', '2020-10-03', '2020-03-09');


#
# TABLE STRUCTURE FOR: medicine_sub_category
#

DROP TABLE IF EXISTS `medicine_sub_category`;

CREATE TABLE `medicine_sub_category` (
  `msc_id` int(11) NOT NULL,
  `mmc_id` int(11) NOT NULL,
  `msc_name` varchar(50) NOT NULL,
  `msc_status` int(11) NOT NULL DEFAULT 1 COMMENT '0-InActive/1-Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('1', '25', 'ANTIBIOTICS', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('2', '25', 'ANTIHYPERTESIVES', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('3', '25', 'ANTIFUNGAL/ANTIVIRAL', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('4', '25', 'COUGH MIXTURES', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('5', '25', 'ANTI-EMETICS', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('6', '25', 'PAIN KILLERS/SPASMOLITICS', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('7', '25', 'ANTIACIDS', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('8', '25', 'ANTIMALARIAL', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('9', '25', 'VITAMINS', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('10', '25', 'NASAL/EYE DROPS', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('11', '25', 'HORMONAL MEDICATION', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('12', '25', 'ANTIHISTAMINES', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('13', '25', 'ANTIDIABETIC', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('14', '25', 'BLOOD BUILDERS', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('15', '25', 'ANTISPETICS', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('16', '25', 'OTHER MEDICNES', '1');
INSERT INTO `medicine_sub_category` (`msc_id`, `mmc_id`, `msc_name`, `msc_status`) VALUES ('17', '25', 'INJECTIOONS', '1');


#
# TABLE STRUCTURE FOR: message
#

DROP TABLE IF EXISTS `message`;

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=unseen, 1=seen, 2=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(7) NOT NULL,
  `user` varchar(255) CHARACTER SET latin1 NOT NULL,
  `msg` text CHARACTER SET latin1 NOT NULL,
  `time` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `messages` (`id`, `user`, `msg`, `time`) VALUES ('5', '', '', '1584081858');
INSERT INTO `messages` (`id`, `user`, `msg`, `time`) VALUES ('6', '', '', '1584081866');
INSERT INTO `messages` (`id`, `user`, `msg`, `time`) VALUES ('7', 'manuja', 'hai', '1584082539');
INSERT INTO `messages` (`id`, `user`, `msg`, `time`) VALUES ('8', 'sree', 'ok', '1584082549');
INSERT INTO `messages` (`id`, `user`, `msg`, `time`) VALUES ('9', 'manuja', 'give details', '1584082604');


#
# TABLE STRUCTURE FOR: notice
#

DROP TABLE IF EXISTS `notice`;

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `assign_by` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: operation_commends
#

DROP TABLE IF EXISTS `operation_commends`;

CREATE TABLE `operation_commends` (
  `c_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `operation_id` int(11) NOT NULL,
  `commend` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('1', '1', '2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-04-20');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('2', '14', '2', 'ok all', '2020-04-20');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('3', '13', '2', 'I am ok For it', '2020-04-20');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('4', '29', '2', 'I am available Sir', '2020-04-20');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('5', '43', '2', 'ok ok', '2020-04-20');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('11', '13', '2', 'Findings : testfgfh<span style=\'padding_left:10%\'></span>Indicators : test<span style=\'padding_left:10%\'></span> Type Anaesthesia : test<span style=\'padding_left:10%\'></span> Operation Procedure : test<span style=\'padding_left:10%\'></span>Advice : testdscsf', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('12', '13', '3', 'Findings : test<span style=\'padding_left:10%\'></span>Indicators : test<span style=\'padding_left:10%\'></span> Type Anaesthesia : test<span style=\'padding_left:10%\'></span> Operation Procedure : test<span style=\'padding_left:10%\'></span>Advice : testdsfvdfg', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('13', '13', '3', 'Findings : testxcvd<span style=\'padding_left:10%\'></span>Indicators : test<span style=\'padding_left:10%\'></span> Type Anaesthesia : test<span style=\'padding_left:10%\'></span> Operation Procedure : test<span style=\'padding_left:10%\'></span>Advice : test', '2020-04-20');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('14', '13', '2', 'Findings : testzsfdf<span style=\'padding_left:10%\'></span>Indicators : test<span style=\'padding_left:10%\'></span> Type Anaesthesia : test<span style=\'padding_left:10%\'></span> Operation Procedure : test<span style=\'padding_left:10%\'></span>Advice : test', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('15', '13', '3', 'okok', '2020-04-20');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('16', '13', '2', 'Findings : test&npsb;&npsb;&npsb; Indicators : test&npsb;&npsb;&npsb; Type Anaesthesia : testCSsdf&npsb;&npsb;&npsb; Operation Procedure : test&npsb;&npsb;&npsb; Advice : testzxcsd', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('17', '13', '2', 'Findings : test&nbsp;;&nbsp;;&nbsp;; Indicators : test&nbsp;;&nbsp;;&nbsp;; Type Anaesthesia : test&nbsp;;&nbsp;;&nbsp;; Operation Procedure : testcfgb&nbsp;;&nbsp;;&nbsp;; Advice : testcvbf', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('18', '13', '2', 'Findings : testZXa&nbsp;&nbsp;&nbsp; Indicators : test&nbsp;&nbsp;&nbsp; Type Anaesthesia : test&nbsp;&nbsp;&nbsp; Operation Procedure : testZX&nbsp;&nbsp;&nbsp; Advice : testX', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('19', '13', '2', 'Findings : test&nbsp;&nbsp;&nbsp; Indicators : testcvbfcg&nbsp;&nbsp;&nbsp; Type Anaesthesia : test&nbsp;&nbsp;&nbsp; Operation Procedure : test&nbsp;&nbsp;&nbsp; Advice : testcvfdgb', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('23', '43', '2', 'Indicators : sample Test&nbsp;&nbsp;&nbsp; Type Anaesthesia : &nbsp;&nbsp;&nbsp; Operation Procedure : sample Test&nbsp;&nbsp;&nbsp; Pre-loaded : sample Test&nbsp;&nbsp;&nbsp; Premedications : sample Testsample Testsample Test&nbsp;&nbsp;&nbsp; Advice : sample Test', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('24', '43', '2', '<b>Indicators :</b> sample Test&nbsp;&nbsp;&nbsp; Type Anaesthesia : &nbsp;&nbsp;&nbsp; Operation Procedure : sample Test&nbsp;&nbsp;&nbsp; Pre-loaded : sample Test&nbsp;&nbsp;&nbsp; Premedications : sample Testsample Testsample Test&nbsp;&nbsp;&nbsp; Advice : sample Testrrr', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('25', '43', '2', '<label style=\'color:red\'>Indicators :</label> sample Test&nbsp;&nbsp;&nbsp; Type Anaesthesia : &nbsp;&nbsp;&nbsp; Operation Procedure : sample Test&nbsp;&nbsp;&nbsp; Pre-loaded : sample Test&nbsp;&nbsp;&nbsp; Premedications : sample Testsample Testsample Test&nbsp;&nbsp;&nbsp; Advice : sample Test sample one', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('26', '43', '2', '<label style=\'color:#53d4fa\'>Indicators :</label> sample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Type Anaesthesia :</label> &nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Operation Procedure :</label sample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Pre-loaded : </label>sample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Premedications : </label>sample Testsample Testsample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Advice : </label>sample Test sample', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('27', '43', '2', '<label style=\'color:#53d4fa\'>Indicators :</label> sample Test xfvdf&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Type Anaesthesia :</label> &nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Operation Procedure :</label sample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Pre-loaded : </label>sample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Premedications : </label>sample Testsample Testsample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Advice : </label>sample Test sample', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('28', '43', '2', '<label style=\'color:#53d4fa\'>Indicators :</label> sample Test xfvdf&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Type Anaesthesia :</label> &nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Operation Procedure :</label> sample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Pre-loaded : </label>sample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Premedications : </label>sample Testsample Testsample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Advice : </label>sample Test sampledsf', '2020-04-21');
INSERT INTO `operation_commends` (`c_id`, `staff_id`, `operation_id`, `commend`, `date`) VALUES ('29', '43', '2', '<label style=\'color:#53d4fa\'>Indicators :</label> sample Test xfvdf&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Operation Procedure :</label> sample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Pre-loaded : </label>sample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Premedications : </label>sample Testsample Testsample Test&nbsp;&nbsp;&nbsp; <label style=\'color:#53d4fa\'>Advice : </label>sample Test sampledsf', '2020-04-21');


#
# TABLE STRUCTURE FOR: operation_details
#

DROP TABLE IF EXISTS `operation_details`;

CREATE TABLE `operation_details` (
  `oid` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `assigned_doc_id` int(11) NOT NULL,
  `selected_user_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `operation_details` (`oid`, `patient_id`, `assigned_doc_id`, `selected_user_id`, `date`, `status`) VALUES ('1', 'med10008', '1', '13', '2020-04-17', '1');
INSERT INTO `operation_details` (`oid`, `patient_id`, `assigned_doc_id`, `selected_user_id`, `date`, `status`) VALUES ('2', 'med10008', '1', '14', '2020-04-17', '0');
INSERT INTO `operation_details` (`oid`, `patient_id`, `assigned_doc_id`, `selected_user_id`, `date`, `status`) VALUES ('12', 'med10008', '1', '29', '2020-04-17', '1');
INSERT INTO `operation_details` (`oid`, `patient_id`, `assigned_doc_id`, `selected_user_id`, `date`, `status`) VALUES ('13', 'med10008', '1', '43', '2020-04-17', '0');
INSERT INTO `operation_details` (`oid`, `patient_id`, `assigned_doc_id`, `selected_user_id`, `date`, `status`) VALUES ('15', 'MED10008', '13', '17', '2020-04-21', '0');
INSERT INTO `operation_details` (`oid`, `patient_id`, `assigned_doc_id`, `selected_user_id`, `date`, `status`) VALUES ('16', 'MED10008', '13', '22', '2020-04-21', '0');


#
# TABLE STRUCTURE FOR: patient
#

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `patient_id` varchar(20) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `patient_type` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `passport_id` varchar(50) NOT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `affliate` varchar(50) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('0', 'MED10145', 'Noorjahan', 'Yousuf', 'noriyousuf20@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'out', '0968192686', '0968192686', 'To visit Dentist', '200209/10/1', 'Female', '', '1992-07-20', NULL, '', '33', '2020-02-21', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('1', 'PH58RBLF', 'TWALUMBA ', 'LIYWALII', 'constancesiamasuku11@gmail.co', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0978077071', 'plot 18lukasu rd', '376497/74/1', 'Male', 'B+', '2017-11-27', NULL, '', '33', '2020-02-10', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('2', 'MED10001', 'judy', 'mubili', 'judithngosa6@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0971637680', 'lusaka', '317773/10/1', 'Female', 'O+', '1995-05-08', NULL, '', '33', '2020-02-10', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('3', 'ME10002', 'MUTUMBA', 'MUUKA', 'mutumbam@sfh.org.zm', '827ccb0eea8a706c4c34a16891f84e7b', '', '0971897969', '0971897969', 'plot 143 off chilumbulu rd kabwata', '220011/10/1', 'Female', 'A+', '2020-02-12', NULL, '', '33', '2020-02-12', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('4', 'MED10003', 'constance', 'mweene', 'constancemweene5@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'out', '', '0973089003', 'kamwala', '317773/10/1', 'Female', 'O+', '1990-02-12', NULL, '', '33', '2020-02-12', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('5', 'MED10004', 'Abel ', 'Mukulalwendo', 'abelmukulalwendo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977629938', '0977629938', '61 kalulu street, libala stage 3', '179945/71/1', 'Male', 'O+', '1970-01-01', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('6', 'MED10005', 'Saboi', 'Kalinda', 'saboi.kalinda@liquidtelecom.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0966909858', '0966909858', 'House No. 14 PHI', '354681/67/1', 'Female', 'AB+', '1970-01-01', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('7', 'MED10006', 'Delphine', 'Kibwimana', 'kubwimanadelphine@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0972190716', '0972190716', 'Chalala', '52600024243', 'Female', '', '1970-01-01', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('8', 'MED10007', 'Champo', 'Mapoma', 'champomamapoma@yahoo.co.uk', '827ccb0eea8a706c4c34a16891f84e7b', '', '0955783874', '0955783874', 'OFF ROAN ROAD, kABULONGA', '440604/11/1', 'Female', '', '1970-01-01', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('9', 'MED10008', 'Bwalya .E', 'Chulu', 'b_chimasa@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0974462662', '0974462662', '11067 Ngwezi Rd Roma', '633792/11/1', 'Female', '', '1970-01-01', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('10', 'MED10009', 'Muyangali', 'Nachiyunde', 'muyangali_nachiyunde@bat.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0965450591', '0965450591', 'Kamwala South', '333514/74/1', 'Male', '', '1970-01-01', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('11', 'MED10010', 'Adeeba', 'Khamisa', 'shoyabkhamisa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0975171390', '0975171390', 'Plot 1113, obote Road, Madrass, Kamwala', '531993/52/1', 'Female', 'B+', '1970-01-01', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('12', 'MED10011', 'Munira Israar', 'Patel', 'munira22@icloud.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978027300', '0978027300', 'House no.9/787, makeni', '5006397', 'Female', 'O-', '1970-01-01', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('13', 'MED10012', 'Nzovwa Chense', 'Lungu', 'chensen@stanbic.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977618769', '0977618769', 'Plot no. 12733 Northgate Gardes SOS', '102183/10/1', 'Female', 'A+', '1988-04-28', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('14', 'MED10013', 'Zulekha', 'Natha', 'tnatha34@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978984219', '0978984219', 'Chilimbulu road, Kamwala', '1001', 'Female', '', '1951-01-01', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('15', 'MED10014', 'Marie', 'Stephenson', 'mariehassen@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0967659079', '0967101421', 'Plot 396 a, teagles road, Makeni', '397277/11/1', 'Female', 'O+', '1986-10-10', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('16', 'MED10015', 'Alan', 'Kandala', 'mulemwaakandala@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978981212', '0978981212', 'Plot 25868, woodlands', '103432/86/1', 'Male', 'A+', '1973-03-17', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('17', 'MED10016', 'Zaid', 'Adam', 'husseinadam7@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0973077227', '0973077227', '24 lukoma close, emmasdale', '994599/11/2', 'Male', '', '2005-04-17', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('18', 'MED10017', 'Safiya', 'Adam', 'huessinidam@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0973077227', '0973077227', '24 Lukoma close, Emmasdale', '1001', 'Female', 'AB+', '2007-09-23', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('19', 'MED10018', 'humeira', 'ahmed', 'ebrahimkhalid93@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0975969273', '0975969273', '23 a makeni road lusaka', '181317541', 'Female', 'O+', '1999-02-17', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('20', 'MED10019', 'Abdur Rahman', 'Patel', 'creamlandicecream@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0955761638', '0966748384', 'House No. 26 Sheki sheki road Emmasdale', '866761/11/1', 'Male', '', '2013-10-24', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('21', 'MED10020', 'Farida Idris', 'Patel', 'iddyp786@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0967778698', '0967778698', 'Lilayi', '316635/10/1', 'Female', 'O+', '1982-01-23', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('22', 'MED10021', 'Clara', 'Kabwela', 'clarakabwela211@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0963876560', '0963876560', 'Libala stage 2', '251243/32/1', 'Female', 'O+', '1987-05-11', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('23', 'MED10022', 'Angela Chikumbi', 'Chimpinde', 'angelachikumbi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0966220140', '0966220140', '14 miles chibombo', '118934/18/1', 'Female', 'A+', '1980-03-10', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('24', 'MED10023', 'kavith', 'viswanathan', 'kavitasripandiyan@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0972931435', '0971191249', 'Lumumba Road, Lusaka', 's1574860', 'Female', 'B+', '1987-06-26', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('25', 'MED10024', 'Tapiwa', 'Natala', 'kabwejulien@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978761878', '0978761878', 'Off mungwi road, Lusaka west', '334235/61/1', 'Female', '', '2008-10-09', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('26', 'MED10025', 'Chipego', 'Natala', 'Natala@medcrosszam.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0978761878', 'lusaka', '334235/61/1', 'Male', 'B-', '2014-10-14', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('27', 'MED10026', 'ODIYA JAINAB', 'ANWAR', 'anwarodiya111@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0967879199', '0967899199', 'MAKENI', 'R7174194', 'Female', '', '1996-06-19', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('28', 'MED10027', 'Munnisha', 'Patel', 'patelruhulamin007@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978370618', '0978370618', 'Emmasdale', '905455/10/1', 'Female', 'A+', '1996-07-29', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('29', 'MED10028', 'kuonga', 'Banda', 'anbanda@childfund.org', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977823668', '0977823668', 'Plot 50 A,Makeni South', '723537/11/1', 'Male', 'O+', '2017-03-18', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('30', 'MED10029', 'Kabembe Kasabula', 'Muchimba', 'kabembekasabula@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977907940', '0977907940', 'house no. 3 Balmoral', '181060/18/1', 'Female', 'A+', '1994-02-16', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('31', 'MED10030', 'Palicha', 'Muchimba', 'palichamuchimba92@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978072334', '0978072334', 'House no. 3 Balmoral', '164120/10/1', 'Male', 'AB+', '1992-09-12', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('32', 'MED10031', 'Rekha', 'Devi', 'mithileshrpatelmithilessh5501@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0956817322', '0956817322', 'Emmasdale', 's1351660', 'Female', '', '1999-01-11', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('33', 'MED10032', 'Mariam Hussein', 'Jawad', 'mariam@medcrossza.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '09715333790', '09715333790', 'Makeni', '10000', 'Female', 'O+', '2019-10-23', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('34', 'MED10033', 'Mary', 'Mwansa', 'mwansama@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978442227', '0978442227', 'Nkana west Kitwe', '220476/65/1', 'Female', 'O+', '1988-02-25', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('35', 'MED10034', 'NGOZA ', 'SAMBO', 'ngoza.wasu@sc.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0966653264', '0966653264', 'lusaka', '758474/11/1', 'Female', 'O+', '2020-02-15', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('36', 'MED10035', 'Esnart ', 'Lungu', 'esnart052000@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977374830', '0977374830', 'Kabwata Estates', '268541/66/1', 'Female', '', '1976-10-29', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('37', 'MED10036', 'Lutangalo', 'Haamubbi', 'lutangalo@medcrossza.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0979109410', '0979109410', 'Libala south', '168647/77/1', 'Female', '', '2019-06-15', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('38', 'MED10037', 'Russel', 'Haamubbi', 'russelhaamubbi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0979109410', '0979109410', 'Libala South', '168647/77/1', 'Male', '', '1988-09-29', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('39', 'MED10038', 'Mbingila E.', 'Chikumbi', 'elizabethchikumbi@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0972428757', '0972428757', 'Kamwala south', '175193/21/1', 'Female', 'O+', '1972-11-23', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('40', 'MED10039', 'Faatimah', 'Patel', 'faatzwadi11@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978051708', '0978051708', 'house no. 60, great east road lusaka', '558697/10/1', 'Female', '', '2000-03-11', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('41', 'MED10040', 'Fezzie', 'Kabali', 'fezziekabali1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977751508', '0977751508', 'state lodge', '891567/11/1', 'Female', '', '1983-09-05', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('42', 'MED10041', 'Pooja S.', 'Ghandhi', 'sarthakgandhi22@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978587299', '0978587299', '12 zambisa close, emmasdale lusaka', '909717/10/2', 'Female', 'A+', '1994-11-01', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('43', 'MED10042', 'Fatme', 'Swidan', 'fatima_abadi25@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0975668899', '0975668899', 'Makeni', '1001', 'Female', '', '1988-04-24', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('44', 'MED10043', 'Salome Chama', 'Fataki', 'sfataki@cfao.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0964934411', '0964934411', 'lilayi', '200490/10/1', 'Female', 'B+', '1993-04-04', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('45', 'MED10044', 'Fardowsa Abdulkadir', 'Osman', 'tarambi99@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0971889062', '0971889062', 'Emmasdale', '10003', 'Female', 'O+', '1994-11-24', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('46', 'MED10045', 'Lukundo C.', 'Mwewa', 'lumwe0386@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977641846', '0977641846', 'Plot #563, Kamwala south', '403279/67/1', 'Female', 'O+', '1986-01-30', NULL, '', '33', '2020-02-15', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('47', 'MED10046', 'SAMUEL', 'CHANGWE', 'changwesamuel@googlemail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0964123262', '0964123262', 'KANSESHI NDOLA', '335365/61/1', 'Male', '', '1982-02-18', NULL, '', '33', '2020-02-16', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('48', 'MED10047', 'CHISENGO', 'MUSONA', 'chisi843@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0972980232', '0972980232', 'northmead lusakas', '359305/10/1', 'Female', '', '2020-02-16', NULL, '', '33', '2020-02-16', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('49', 'MED10048', 'NATASHA', 'BOTA', 'botanatasha143@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0969526506', '0969526506', 'kamwala south', '663179/10/1', 'Female', '', '2001-03-03', NULL, '', '33', '2020-02-16', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('50', 'MED10049', 'LUCY', 'MWIINGA', 'lucymwiinga@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0976708822', 'house no 40 112th street chudleigh,lusaka', 'n/a', 'Female', '', '1989-07-06', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('51', 'MED10050', 'idzai ', 'simango', 'idzaisimango@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977655137', '15 enock kavu  road rhodespark', 'n/a', 'Female', '', '1984-06-08', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('52', 'MED10051', 'regina', 'banda        ', 'banda.reginarb@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977340253', 'NYUMBA YANGA', '350326671', 'Female', '', '2020-02-17', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('53', 'MED10052', 'sonia ', 'cebolo', 'soniacebolo88@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0975446833', 'foxdale resedental estate n7', '928084/11/1', 'Female', '', '1988-02-27', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('54', 'MED10053', 'magdalene', 'bwalya', 'mandabb85@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977245617', 'flat af no 14 kabwata', '939061/11/1', 'Female', '', '1886-03-28', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('55', 'MED10054', 'mwila.c.', 'chisoko', 'mwilachisanga91@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0969793097', 'chalala', '228931/65/1', 'Female', '', '1988-03-08', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('56', 'MED10055', 'mwelwa .e.', 'lungu              L420', 'mwelwa@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0955784467', 'makeni', '808535/11/1', 'Male', '', '1980-09-23', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('57', 'MED10056', 'BHARATH', 'NAGELII', 'bharath.proleK7@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0975199968', '0975199968', 'lusaka', 'p0193636', 'Male', '', '1994-04-26', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('58', 'MED10057', 'firdosh', 'dadu', 'firdosh@medcrosszam.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0971195298', '2104 kabwata', 'n/a', 'Female', '', '1997-03-01', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('59', 'MED10058', 'getrude', 'chisenga', 'getrudechisenga@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0979322046', 'makeni villa', '243699/31/1', 'Female', '', '1987-01-08', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('60', 'MED10059', 'mulinda', 'siamasuku', 'lindahsiamasuku51@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977236541', 'chalala lusaka', 'n/a', 'Female', '', '1992-04-10', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('61', 'MED10060', 'amina', 'jogiyat', 'amina@medcrosszam.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0973740281', 'makeni islamic', 'n/a', 'Female', '', '1989-04-06', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('62', 'MED10061', 'eman', 'faramawi', 'rayazhandwane@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0973797788', 'makeni', 'n/a', 'Female', '', '1989-03-07', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('63', 'MED10062', 'faith ', 'mutalange', 'faithchileshe5@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977466650', 'f/378a/b/360 salama park', '936528/11/1', 'Female', '', '1986-04-28', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('64', 'MED10063', 'ennie ', 'phiri', 'phirienn@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0979304309', 'plot 2333/m nyumba yanga', '517255/52/1', 'Female', '', '1985-01-09', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('65', 'MED10064', 'kangwa .k.', 'chokr', 'kangwa@medcrosszam.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0976333338', 'northmead  chikuni road house no 10', '170411//10/1', 'Female', '', '1990-01-01', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('66', 'MED10065', 'monde', 'mufungulwa', 'monde@medcrosszam.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977897705', '3270 mimosa chilanga', 'n/a', 'Female', '', '2020-02-17', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('67', 'MED10066', 'tasneem', 'adam', 'tasadam99@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0967415637', 'lusaka', 'n/a', 'Female', '', '1989-05-29', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('68', 'MED10067', 'farah ', 'zaidan', 'farah@medcrosszam.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0960220000', 'mumbwa 55 road', 'n/a', 'Male', 'O+', '1993-02-07', NULL, '', '33', '2020-02-17', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('69', 'MED10068', 'bernadette.m.', 'muzi', 'benny.mudiamuzi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 'n/a', 'meanwood chamba valley', '971455/11/1', 'Female', '', '1986-09-26', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('70', 'MED10069', 'obina', 'donatus', 'obinna@inskur.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 'n/a', '103 off thambo mbeki road', 'a09819502', 'Male', '', '1990-02-23', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('71', 'MED10070', 'chileshe c', 'sichande', 'chandachileshe6@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', 'n/a', 'flat 14 mkushi', '304115/64/1', 'Female', 'O+', '1992-03-01', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('72', 'MED10071', 'sai', 'dooga', 'varaprasadkatta.ss@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', 'n/a', 'n/a', 'plot no 2777,olimpia', 'n/a', 'Male', 'A+', '1991-04-22', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('73', 'MED10072', 'yuzma', 'godil', 'yuzma@medcrosszam.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0965878692', 'plot no 10764 obote road', 'n/a', 'Female', '', '1995-02-18', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('74', 'MED10073', 'james.r', 'walsh', 'jrwzambia@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0963468588', 'no 6 meanwood', '997014/11/2', 'Male', '', '1950-05-26', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('75', 'MED10074', 'shupiwe', 'sakala', 'shupiwes83@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977977669', '122 chater village', '876073/11/1', 'Female', 'O+', '2020-02-18', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('76', 'MED10075', 'Mwape', 'chibuye', 'mwapechibuyeg@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977140288', '0977140288', 'Kamwala South', '171067/10/1', 'Male', '', '1970-01-01', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('77', 'MED10076', 'jeanine c', 'karamanda', 'pacifickara@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0979821904', 'ibex salama park', '594674/99/3', 'Female', '', '1981-05-21', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('78', 'MED10077', 'hope g', 'thailashi', 'thailashi23@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977803155', 'plot 1090 kabangwe west', '242682/68/1', 'Female', 'B+', '2020-02-18', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('79', 'MED10078', 'Jesaiah E.', 'Malizani', 'jesaiah@medcrosszm.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977434344', '0977434344', 'Flat No. 12 Winsa Court, Kitwe', '817027/11/1', 'Female', '', '2016-04-20', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('80', 'MED10079', 'Peter', 'Siwale', 'peter@medcrosszm.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977947471', '0977947471', 'Libala South', '416218/67/1', 'Male', 'O-', '1983-11-22', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('81', 'MED10080', 'Gerald', 'Wellem', 'mayesowellem@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0975526200', '0975526200', 'Teagos road, Makeni', 'mb081873', 'Male', '', '1996-11-08', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('82', 'MED10081', 'Bonde', 'Sikutwa', 'bondesikutwa@auroragp.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0976272780', '0979318703', 'House no.224/c NHA complex leopards hill', '345352/16/1', 'Female', 'A+', '1990-09-22', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('83', 'MED10082', 'Wilson', 'Bigirimana', 'wilsonbigirimanas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0972797015', '0972797015', 'House no. 38/18, Chawama', '601923/99/3', 'Male', '', '1985-10-07', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('84', 'MED10083', 'Intsar', 'Alsboot Khalid', 'intsar@medcrosszm.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0972888777', '0972888777', 'Makeni', '10002', 'Female', '', '1993-01-31', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('85', 'MED10084', 'mathews', 'ikowa', 'mikowa@ymail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0978746087', 'matero', '1002', 'Male', '', '2020-02-18', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('86', 'MED10085', 'Leonard', 'Bwalya', 'leonard.bwalya@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978004475', '0978004475', 'House no. 37/07 Lusaka west', '226134/44/1', 'Male', '', '1970-01-01', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('87', 'MED10086', 'Augustus', 'Nkuwa', 'nkuwaa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0966115338', '0966115338', 'House No. A19 Kamwala', '530211/52/1', 'Male', 'O+', '1984-06-05', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('88', 'MED10087', 'Maureen', 'Mataa', 'katebema@standbik.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978828838', '0978828838', 'Ibex hill', '417470/67/1', 'Female', 'O+', '1987-06-30', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('89', 'MED10088', 'Brantinah', 'Nyamvura', 'brantynyax@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0762230834', '0762230834', '310/ intercontinental Hotel', '616630/99/3', 'Female', 'O+', '1986-10-23', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('90', 'MED10089', 'Given', 'Nyamvura', 'giventanyaradzwa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0762338910', '0762338910', '310 Intercontinental Hotel', 'FN954837', 'Male', '', '1982-03-16', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('91', 'MED10090', 'Laverne', 'Hinze', 'lavernehinze@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0967904516', '0967904516', '6505 KASANGULA ROAD ROMA', 'AO445596', 'Female', 'A+', '1982-08-09', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('92', 'MED10091', 'Kaluba', 'Mulife', 'kalubachampo@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978769777', '0978769777', 'Plot 873/26B, kASUPE', '135864/10/1', 'Female', '', '1990-11-13', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('93', 'MED10092', 'MANGALITA ', 'MOONGA', 'm.moonga@bayport.co.zm', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0979511631', 'kabwata', '318421/63/1', 'Female', '', '1987-03-07', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('94', 'MED10093', 'Tasneem', 'Seedat', 'tasneem.sidat1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0971938550', '0971938550', 'Olympia', '456690/74/1', 'Female', 'B+', '1998-04-10', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('95', 'MED10094', 'Shamim Arif', 'Patel', 'patelarif299@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0978936465', '0978936465', 'Off chilimbulu rd, Kamwala', '791809/11/1', 'Female', '', '1980-12-03', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('96', 'MED10095', 'Asma', 'Essa', 'asma@medcrosszm.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0975839120', '0975839120', 'Kamwala', '200991/11/1', 'Female', '', '1993-02-22', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('97', 'MED10096', 'Bukata Yeshua', 'Mukupo', 'bundavernon@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0979700034', '0979700034', 'Chudleigh plot 469/E', '1001', 'Male', '', '2014-03-11', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('98', 'MED10097', 'Eunice ', 'Mulima', 'eunice.mukuka@zanaco.co.zm', '827ccb0eea8a706c4c34a16891f84e7b', '', '0955745437', '0955745437', 'Chalala,Rockview', '109716/10/1', 'Female', 'O+', '1989-09-26', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('99', 'MED10098', 'Muteka', 'Mudenda', 'mutekap@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0967493263', '0967493263', 'salama park House no.238', '617016/11/1', 'Male', '', '1977-03-19', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('100', 'MED10099', 'Sanaa', 'Bux', 'san.lime6@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0979558052', '0979558052', 'Plot8062, Nsimbi road, Emmasdale', '1006', 'Female', 'B+', '1996-07-19', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('101', 'MED10100', 'Zainab', 'Zufar', 'kamby281@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0979558062', '0979558062', 'Plot 8062, Nsembe road, Emmasdale', 'ZN511987', 'Female', 'B+', '1994-01-28', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('102', 'MED10101', 'Abeda', 'Itowala', 'abedaitowala@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0955066853', '0955066853', '416 Chakwala close', '1002', 'Male', '', '1957-10-11', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('103', 'MED10102', 'Habiba', 'Abdulkadir', 'habiba@medcrossza.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0972196949', '0972196949', 'Roma park', '900511/83/2', 'Female', '', '2019-12-08', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('104', 'MED10103', 'Pansy Paxina', 'Phiri', 'pansyphiri232@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977118969', '0977118969', '176,kalomo road, chilenje', '920105/11/1', 'Female', 'A+', '1986-11-25', NULL, '', '33', '2020-02-18', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('105', 'MED10104', 'Hope', 'Lesole', 'hopemweemba@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977316311', '0977316311', 'Lusaka West', '880065/11/1', 'Female', 'O+', '1985-03-30', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('106', 'MED10105', 'MANDA', 'CONSOLATA', 'harrietmanda@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0974599534', '0974599534', 'olympia', '155640/31/1', 'Female', '', '1959-12-20', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('107', 'MED10106', 'ANNA', 'WIXTED', 'anyawixted@icloud.comn', '827ccb0eea8a706c4c34a16891f84e7b', '', '0971256517', '0971256517', 'lusaka west', '398425/99/3', 'Female', '', '1970-01-01', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('108', 'MED10107', 'TREBBLE', 'MULOONGO', 'trebblelongwani.93@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0976674808', 'hellen kaunda', '353777/10/1', 'Male', '', '1992-12-12', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('109', 'MED10108', 'FANNY ', 'CHAAMBA', 'mudendaf1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0976089609', 'KABWATA', 'N/A', 'Female', '', '2010-03-16', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('110', 'MED10109', 'TIWONGE ', 'ZIMBA', 'ztionge@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977168164', 'lsk', '245979/75/1', 'Female', '', '1988-11-06', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('111', 'MED10110', 'YASMIN', 'EGIL', 'cagriegil@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0975646464', 'LUSAKA WEST', 'N/L', 'Female', '', '2018-05-30', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('112', 'MED10111', 'VANESSA ', 'MUTONYI', 'vanessa.mutonyi@medcrosszm.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0972653921', 'phi off beni mwinga road hott 31', '207387/18/1', 'Female', 'O+', '1995-07-03', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('113', 'MED10112', 'fahima h.v.', 'patel', 'fahima.patel@medcrosszm.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0974714975', 'emmasdale', '9070171112', 'Female', '', '1997-07-17', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('114', 'MED10113', 'khalda f', 'mohamed', 'khalda.mohamed@medcrosszm.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0975124256', 'olympia 6779', 'n/a', 'Female', 'O+', '1997-09-29', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('115', 'MED10114', 'elizabeth', 'mofya', 'emofya@23iclife.co.zm', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977893919', 'mamosa', '238171/73/1', 'Female', 'B+', '1980-12-19', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('116', 'MED10115', 'enock m', 'mulenga', 'chichisimutowe10@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977652945', 'makeni', 'n/a', 'Male', '', '2019-08-18', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('117', 'MED10116', 'habibah', 'motola', 'motalahabiba10@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0973222890', 'mpulungu', '126146/93/1', 'Female', '', '2020-02-19', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('118', 'MED10117', 'carol m', 'mukate', 'cmmukate@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0963427878', 'new kasama', '919232/11/1', 'Female', 'O+', '2020-02-19', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('119', 'MED10118', 'brenda c', 'mumba', 'bchibuye@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0966420101', 'chalala', '763195/11/1', 'Female', '', '1980-06-22', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('120', 'MED10119', 'fahima', 'manjra', 'fahima.manjra@medcrosszm.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0975705329', 'emmasdale', '457518/52/1', 'Female', '', '2020-02-19', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('121', 'MED10120', 'JENNY', 'RAMEN', 'jen1405@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0963765685', 'olympia', '1362804', 'Female', 'A+', '1982-05-14', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('122', 'MED10121', 'AHMED ABDI', 'ISSA', 'ahmed@medcrosszm.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0974202711', 'belimi rd NDOLA', '592593/99/3', 'Male', '', '2000-04-14', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('123', 'MED10122', 'RACHEAL N', 'MBEWE', 'RNAWANZI@YAHOO.COM', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977420174', '36266 SILVEREST', '189213/71/1', 'Female', '', '1981-02-01', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('124', 'MED10123', 'WAFAA', 'MOUSSA', 'WAFAA@MEDCROSSZM.COM', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0968779988', 'MAKENI', 'N/A', 'Female', 'A+', '1986-02-28', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('125', 'MED10124', 'ABIR ', 'RAUBAIE', 'ABIR@MEDCROSSZM.COM', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977284543', 'MAKENI', 'N/A', 'Female', 'AB+', '1999-09-28', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('126', 'MED10125', 'FLORENCE', 'DAKA', 'AUGUSTINEFLORENCE1984@GMAIL.COM', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0973367935', 'MAKENI SIMSON', '376864/74/1', 'Female', '', '1980-05-19', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('127', 'MED10126', 'YVONNW', 'CHANGWE', 'YONDAYE@GMAIL.COM', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977999555', 'IBEX HILL', '303246/61/1', 'Female', '', '1978-12-03', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('128', 'MED10127', 'SARAH N', 'CHAIBELA', 'SARAH@MEDCROSSZM.COM', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0979726161', 'FLAT 1 JACANIA COURT LUBURMA', '167979/10/1', 'Female', '', '1991-01-17', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('129', 'MED10128', 'Rubina', 'Kadir', 'yasin-essa786@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0975439740', '0975439740', 'Civic Centre', '4161406/10/1', 'Female', '', '1969-04-01', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('130', 'MED10129', 'Ilham', 'Abdulahi', 'mayle7766@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0977749210', '0977749210', 'Ndola', '574989/99/3', 'Female', '', '1992-02-06', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('131', 'MED10130', 'Paul ', 'simooya ', 'monica@medcrosszam.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '0979774421', '0979774421', 'flat 2 luenes court ,nasser,road lusaka ', '368886/65/1', 'Male', '', '2020-02-19', NULL, '', '33', '2020-02-19', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('132', 'MED10131', 'chaabilo chimuka', 'muleya', 'mmuleya1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0975449338', 'kabwata', '270174/76/1', 'Male', '', '2019-12-19', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('133', 'MED10132', 'chaabilo chimuka', 'muleya', 'muleya@medcrosszam.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0975449338', 'kabwata', '270174/76/1', 'Male', '', '2019-12-19', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('134', 'MED10133', 'hajra ', 'ayub', 'hajraayub@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0762913191', 'plot 5969 benakale road northmead', 'mb065182', 'Female', '', '1995-01-07', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('135', 'MED10134', 'julie', 'shimwaze', 'julie@medcrosszam.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977214168', 'kanyama', 'n/a', 'Female', '', '1978-09-09', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('136', 'MED10135', 'deka.A.', 'mohamed', 'hajiamin@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0957599311', 'plot no 156 bimbe road .emmasdale lsk', '605508/99/3', 'Female', '', '1990-10-21', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('137', 'MED10136', 'deka.A.', 'mohamed', 'hajlamiin@hotmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0957599311', 'plot no 156 bimbe road .emmasdale lsk', '605508/99/3', 'Female', '', '1990-10-21', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('138', 'MED10137', 'sharban ', 'govan', 'agilgovani373@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0764171145', '1261 mambilima road', '707138904', 'Male', '', '2014-11-27', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('139', 'MED10138', 'nalukui .i.', 'walapwa', 'nalukui503@gmal.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0977407079', 'plot 13018 woodlands chalala', '1445771/10/1', 'Female', '', '1991-03-05', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('140', 'MED10139', 'simon', 'mutale', 'mutalesem@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0962289316', 'lilanda site 5 no 53/10', '306899/10/1', 'Male', '', '1993-08-06', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('141', 'MED10140', 'simon', 'mutale', 'mutale.sem@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0962289316', 'lilanda site 5 no 53/10', '306899/10/1', 'Male', '', '1993-08-06', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('142', 'MED10141', 'Sarah', 'Bashir', 'zahrabashir98@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'out', '0977662480', '0977662480', 'Visit', '593600/99/3', 'Female', '', '1998-03-04', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('143', 'MED10142', 'walaa ', 'alhoot', 'munzaralhumsi@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', '', '0979155383', 'makeni', 'n/a', 'Female', '', '1991-03-09', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('144', 'MED10143', 'Gladys Chisanga', 'Sumbukeni', 'gladyssc2012@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'out', '0977753208', '0977753208', 'visit', '916545/11/1', 'Female', 'O+', '1984-08-22', NULL, '', '33', '2020-02-20', '1', '1');
INSERT INTO `patient` (`id`, `patient_id`, `firstname`, `lastname`, `email`, `password`, `patient_type`, `phone`, `mobile`, `address`, `passport_id`, `sex`, `blood_group`, `date_of_birth`, `affliate`, `picture`, `created_by`, `create_date`, `status`, `level`) VALUES ('145', 'MED10144', 'Asha Hassan', 'Mohamed', 'aishahassan989@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'out', '0960996847', '0960996847', 'visit', '189555/91/1', 'Female', 'A+', '1997-06-24', NULL, '', '33', '2020-02-20', '1', '1');


#
# TABLE STRUCTURE FOR: patient_examination
#

DROP TABLE IF EXISTS `patient_examination`;

CREATE TABLE `patient_examination` (
  `eid` int(11) NOT NULL,
  `appointment_id` varchar(255) NOT NULL,
  `complaints` text NOT NULL,
  `pmhx` text NOT NULL,
  `gynac` text NOT NULL,
  `drug` text NOT NULL,
  `allergies` varchar(255) NOT NULL,
  `fh` varchar(255) NOT NULL,
  `sh` varchar(255) NOT NULL,
  `general` text NOT NULL,
  `assessment` varchar(255) NOT NULL,
  `plan` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `patient_examination` (`eid`, `appointment_id`, `complaints`, `pmhx`, `gynac`, `drug`, `allergies`, `fh`, `sh`, `general`, `assessment`, `plan`, `status`) VALUES ('1', 'AB1XBJ3X', 'sugar', 'sfd', '', 'sad', 'dust', 'fhfh', 'shsh', 'sdgdrgrtf', 'fever', 'sdfgdgfhjkj', '1');
INSERT INTO `patient_examination` (`eid`, `appointment_id`, `complaints`, `pmhx`, `gynac`, `drug`, `allergies`, `fh`, `sh`, `general`, `assessment`, `plan`, `status`) VALUES ('2', 'AB4VS17U', 'jkjk', 'klnkn', 'kknk', 'kjkk', 'uygy', 'jhbjh', 'jhk', 'ujhuih', 'iuhui', 'uygku', '1');
INSERT INTO `patient_examination` (`eid`, `appointment_id`, `complaints`, `pmhx`, `gynac`, `drug`, `allergies`, `fh`, `sh`, `general`, `assessment`, `plan`, `status`) VALUES ('3', 'A5RUKD60', 'sdf', 'sd', '', '', 'Dsas', '', '', 'asda', 'Zx', 'ZXa', '1');
INSERT INTO `patient_examination` (`eid`, `appointment_id`, `complaints`, `pmhx`, `gynac`, `drug`, `allergies`, `fh`, `sh`, `general`, `assessment`, `plan`, `status`) VALUES ('4', 'A1K4D8ZI', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', '1');
INSERT INTO `patient_examination` (`eid`, `appointment_id`, `complaints`, `pmhx`, `gynac`, `drug`, `allergies`, `fh`, `sh`, `general`, `assessment`, `plan`, `status`) VALUES ('5', 'AC4E4TP0', ' testexample', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1');
INSERT INTO `patient_examination` (`eid`, `appointment_id`, `complaints`, `pmhx`, `gynac`, `drug`, `allergies`, `fh`, `sh`, `general`, `assessment`, `plan`, `status`) VALUES ('6', 'AWPS8R48', ' testdetails', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', '1');


#
# TABLE STRUCTURE FOR: patient_membership
#

DROP TABLE IF EXISTS `patient_membership`;

CREATE TABLE `patient_membership` (
  `m_id` int(11) NOT NULL,
  `package_type` varchar(255) NOT NULL,
  `package_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL,
  `amount` varchar(255) NOT NULL,
  `days` int(11) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `patient_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: patient_operation_date_time
#

DROP TABLE IF EXISTS `patient_operation_date_time`;

CREATE TABLE `patient_operation_date_time` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(255) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `operation_date` date NOT NULL,
  `operation_time` varchar(255) NOT NULL,
  `operation_name` varchar(255) NOT NULL,
  `indicators` text NOT NULL,
  `findings` text NOT NULL,
  `type_anaesthesia` varchar(255) NOT NULL,
  `operation_procedure` text NOT NULL,
  `advice` text NOT NULL,
  `created_date` date NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO `patient_operation_date_time` (`id`, `patient_id`, `doc_id`, `operation_date`, `operation_time`, `operation_name`, `indicators`, `findings`, `type_anaesthesia`, `operation_procedure`, `advice`, `created_date`, `status`) VALUES ('2', 'med10008', '1', '2020-04-23', '10:30:00', 'test1', 'test', 'test', 'test', 'test', 'test', '2020-04-17', '1');
INSERT INTO `patient_operation_date_time` (`id`, `patient_id`, `doc_id`, `operation_date`, `operation_time`, `operation_name`, `indicators`, `findings`, `type_anaesthesia`, `operation_procedure`, `advice`, `created_date`, `status`) VALUES ('3', 'MED10008', '1', '2020-04-21', '10:30:00', 'sample peration', 'test', 'zD', 'Z', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2020-04-21', '2');
INSERT INTO `patient_operation_date_time` (`id`, `patient_id`, `doc_id`, `operation_date`, `operation_time`, `operation_name`, `indicators`, `findings`, `type_anaesthesia`, `operation_procedure`, `advice`, `created_date`, `status`) VALUES ('4', 'MED10008', '13', '2020-04-23', '10:30:00', 'test', 'testcvbfcg', 'test', 'test', 'test', 'testcvfdgb', '2020-04-17', '3');


#
# TABLE STRUCTURE FOR: patient_vitals
#

DROP TABLE IF EXISTS `patient_vitals`;

CREATE TABLE `patient_vitals` (
  `pv_id` int(11) NOT NULL AUTO_INCREMENT,
  `appoinment_id` text NOT NULL,
  `bp` varchar(50) NOT NULL,
  `height` varchar(50) NOT NULL,
  `weight` varchar(10) NOT NULL,
  `temp` varchar(50) NOT NULL,
  `symptoms` text NOT NULL,
  `vitals_by` int(11) NOT NULL,
  PRIMARY KEY (`pv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4;

INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('1', 'AJJJL00L', '123', '170', '22', '122', 'bdf', '0');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('3', 'AB4VS17U', '100', '150', '75', '100', '2werwer', '0');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('4', 'A1NL7V6O', '100', '165', '54', '100', 'fever', '0');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('5', 'ASDO3RNI', '123', '170', '22', '122', '2werwer', '0');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('6', 'ADR2EKSS', '100', '165', '54', '100', 'fever', '0');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('7', 'AB1XBJ3X', '100', '165', '54', '100', 'fever', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('8', 'AI7G6LFO', '100', '165', '54', '100', 'fever', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('9', 'A1CG16ZM', '100', '165', '54', '100', 'fever', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('10', 'A5RUKD60', '100', '165', '54', '100', 'fever', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('11', 'AVJEWSAQ', '100', '165', '54', '100', 'fever', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('12', 'AVJEWSAQ', '100', '165', '54', '100', 'hh', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('13', 'AH88OMKB', '100', '165', '54', '100', 'fever', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('14', 'A1K4D8ZI', '100', '165', '54', '100', 'fever', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('15', 'AC4E4TP0', '100', '165', '54', '100', 'fever', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('16', 'AWPS8R48', '100', '165', '54', '100', 'fever', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('17', 'ACMFDKIB', '100', '165', '54', '100', 'fever', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('18', 'AXCMZM6B', '100', '165', '54', '100', 'fever', '29');
INSERT INTO `patient_vitals` (`pv_id`, `appoinment_id`, `bp`, `height`, `weight`, `temp`, `symptoms`, `vitals_by`) VALUES ('19', 'A4PD983X', '100', '165', '54', '100', 'fever', '29');


#
# TABLE STRUCTURE FOR: payment_from_patient
#

DROP TABLE IF EXISTS `payment_from_patient`;

CREATE TABLE `payment_from_patient` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `status` int(11) NOT NULL,
  `revisit` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4;

INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('4', '7', 'me10002', 'appoinment', '2020-02-28', '2020-03-04', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('5', '1', 'me10002', 'test', '2020-02-28', '2020-03-10', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('6', '1', 'MED10143', 'test', '2020-02-28', '2020-03-09', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('7', '1', 'MED10143', 'test', '2020-02-28', '2020-03-09', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('8', '1', 'MED10143', 'test', '2020-02-28', '2020-03-09', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('9', '7', 'med10001', 'appoinment', '2020-03-11', '2020-03-11', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('11', '1', 'MED10143', 'medicine', '2020-02-28', '2020-03-09', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('21', '1', 'med10001', 'medicine', '2020-03-11', '0000-00-00', '0', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('22', '7', 'med10003', 'appoinment', '2020-03-11', '2020-03-11', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('23', '7', 'med10005', 'appoinment', '2020-03-11', '2020-03-11', '0', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('24', '1', 'med10003', 'medicine', '2020-03-11', '0000-00-00', '0', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('26', '7', 'med10001', 'appoinment', '2020-03-11', '2020-03-11', '1', '1');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('27', '7', 'med10007', 'appoinment', '2020-03-12', '2020-03-12', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('28', '1', 'med10007', 'medicine', '2020-03-12', '2020-03-12', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('29', '1', 'med10007', 'medicine', '2020-03-12', '2020-03-12', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('30', '7', 'med10003', 'appoinment', '2020-03-13', '2020-03-13', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('31', '1', 'med10003', 'medicine', '2020-03-13', '0000-00-00', '0', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('32', '1', 'med10003', 'medicine', '2020-03-13', '0000-00-00', '0', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('33', '7', 'med10003', 'appoinment', '2020-03-13', '0000-00-00', '0', '1');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('34', '7', 'med10004', 'appoinment', '2020-04-03', '0000-00-00', '0', '2');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('35', '7', 'med10006', 'appoinment', '2020-04-03', '0000-00-00', '0', '2');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('36', '7', 'med10001', 'appoinment', '2020-04-03', '0000-00-00', '0', '2');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('37', '7', 'med10003', 'appoinment', '2020-04-03', '0000-00-00', '0', '2');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('38', '7', 'med10008', 'appoinment', '2020-04-03', '0000-00-00', '0', '2');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('39', '7', 'med10005', 'appoinment', '2020-04-03', '0000-00-00', '0', '2');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('40', '7', 'med10010', 'appoinment', '2020-04-03', '0000-00-00', '0', '2');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('41', '7', 'med10001', 'appoinment', '2020-04-03', '0000-00-00', '0', '2');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('42', '7', 'med10004', 'appoinment', '2020-04-03', '0000-00-00', '0', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('43', '7', 'med10006', 'appoinment', '2020-04-11', '2020-04-11', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('48', '1', 'med10006', 'test', '2020-04-13', '2020-04-13', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('49', '1', 'med10006', 'test', '2020-04-13', '2020-04-13', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('50', '1', 'med10006', 'test', '2020-04-13', '2020-04-13', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('51', '7', 'med10008', 'appoinment', '2020-04-18', '2020-04-18', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('52', '1', 'med10008', 'test', '2020-04-15', '2020-04-15', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('53', '1', 'med10008', 'test', '2020-04-15', '2020-04-15', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('54', '1', 'med10008', 'medicine', '2020-04-17', '2020-04-17', '1', '0');
INSERT INTO `payment_from_patient` (`id`, `sender_id`, `patient_id`, `type`, `created_date`, `updated_date`, `status`, `revisit`) VALUES ('55', '7', 'med10001', 'appoinment', '2020-04-23', '2020-04-23', '1', '0');


#
# TABLE STRUCTURE FOR: pr_case_study
#

DROP TABLE IF EXISTS `pr_case_study`;

CREATE TABLE `pr_case_study` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(30) DEFAULT NULL,
  `food_allergies` varchar(255) DEFAULT NULL,
  `tendency_bleed` varchar(255) DEFAULT NULL,
  `heart_disease` varchar(255) DEFAULT NULL,
  `high_blood_pressure` varchar(255) DEFAULT NULL,
  `diabetic` varchar(255) DEFAULT NULL,
  `surgery` varchar(255) DEFAULT NULL,
  `accident` varchar(255) DEFAULT NULL,
  `others` varchar(255) DEFAULT NULL,
  `family_medical_history` varchar(255) DEFAULT NULL,
  `current_medication` varchar(255) DEFAULT NULL,
  `female_pregnancy` varchar(255) DEFAULT NULL,
  `breast_feeding` varchar(255) DEFAULT NULL,
  `health_insurance` varchar(255) DEFAULT NULL,
  `low_income` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: pr_prescription
#

DROP TABLE IF EXISTS `pr_prescription`;

CREATE TABLE `pr_prescription` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appointment_id` varchar(30) DEFAULT NULL,
  `patient_id` varchar(30) NOT NULL,
  `patient_type` varchar(50) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `main_category` varchar(255) NOT NULL,
  `chief_complain` text DEFAULT NULL,
  `insurance_id` int(11) DEFAULT NULL,
  `policy_no` varchar(255) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `blood_pressure` varchar(255) DEFAULT NULL,
  `medicine` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `visiting_fees` float DEFAULT NULL,
  `patient_notes` text DEFAULT NULL,
  `reference_by` varchar(50) DEFAULT NULL,
  `reference_to` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `date` date NOT NULL,
  `pharmasist_read_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;

INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('41', 'AB4VS17U', '', '', '1', '12', NULL, NULL, NULL, NULL, NULL, NULL, 'ok', NULL, NULL, NULL, NULL, '0', '2020-02-01', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('48', 'AB4VS17U', '', '', '1', '12', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"Acute lymphoblastic leukaemia\",\"sub_dep\":null,\"plan\":\"\"}]', NULL, NULL, NULL, NULL, '0', '2020-02-10', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('50', 'AB1XBJ3X', '', '', '1', '12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2020-02-14', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('51', 'A5RUKD6q', '', '', '1', '12', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\"ABRASION OF TEETH\",\"sub_dep\":null,\"plan\":\"\"}]', NULL, NULL, NULL, NULL, '0', '2020-03-02', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('54', 'A5RUKD60', '', '', '1', '12', NULL, NULL, NULL, NULL, NULL, '[{\"medicine_type\":\"5\",\"medicine_name\":\"Ondasterone syrup\",\"instruction\":\"\",\"medcount\":\"3\",\"days\":\"2\"},{\"medicine_type\":\"5\",\"medicine_name\":\"Domperidone tablets\",\"instruction\":\"\",\"medcount\":\"5\",\"days\":\"2\"}]', '[{\"name\":\"ABRASION OF TEETH\",\"sub_dep\":null,\"plan\":\"test\"}]', NULL, NULL, NULL, NULL, '1', '2020-02-28', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('56', 'A5RUKD60', '', '', '1', '12', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\" Breast Cancer\",\"sub_dep\":null,\"plan\":\"\"}]', NULL, NULL, NULL, NULL, '1', '2020-03-05', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('58', 'A5RUKD60', '', '', '1', '12', NULL, NULL, NULL, NULL, NULL, NULL, '[{\"name\":\" Breast Cancer\",\"sub_dep\":null,\"plan\":\"\"}]', NULL, NULL, NULL, NULL, '0', '2020-03-09', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('61', 'AVJEWSAQ', '', '', '1', '27', NULL, NULL, NULL, NULL, NULL, '[{\"medicine_type\":\"2\",\"medicine_name\":\"Amlodipine 5mg tablets\",\"instruction\":\"hh\",\"medcount\":\"6\",\"days\":\"2\"}]', '[{\"name\":\" Excessive Fetal Growth, Third Trimester\",\"sub_dep\":null,\"plan\":\"\"}]', NULL, NULL, NULL, NULL, '0', '2020-03-11', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('62', 'AH88OMKB', '', '', '1', '27', NULL, NULL, NULL, NULL, NULL, '[{\"medicine_type\":\"3\",\"medicine_name\":\"Ketoclonazole cream\",\"instruction\":\"\",\"medcount\":\"3\",\"days\":\"2\"}]', '[{\"name\":\"Acute and subacute allergic otitis media (mucoid) (sanguinous) (serous), recurrent, right ear \",\"sub_dep\":null,\"plan\":\"\"}]', NULL, NULL, NULL, NULL, '0', '2020-03-11', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('63', 'AC4E4TP0', '', '', '1', '27', NULL, NULL, NULL, NULL, NULL, '[{\"medicine_type\":\"1\",\"medicine_name\":\"test\",\"instruction\":\"\",\"medcount\":\"8\",\"days\":\"2\"},{\"medicine_type\":\"1\",\"medicine_name\":\"Cefuroxime 500mg tablets\",\"instruction\":\"test\",\"medcount\":\"6\",\"days\":\"2\"}]', '[{\"name\":\"test\",\"sub_dep\":null,\"plan\":\"test\"}]', NULL, NULL, NULL, NULL, '1', '2020-03-12', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('64', 'AWPS8R48', '', '', '1', '27', NULL, NULL, NULL, NULL, NULL, '[{\"medicine_type\":\"1\",\"medicine_name\":\"Ofloxacin and ornidazole tablets\",\"instruction\":\"\",\"medcount\":\"5\",\"days\":\"1\"},{\"medicine_type\":\"1\",\"medicine_name\":\"\",\"instruction\":\"\",\"medcount\":\"4\",\"days\":\"2\"}]', '[{\"name\":\"test\",\"sub_dep\":null,\"plan\":\"\"}]', NULL, NULL, NULL, NULL, '0', '2020-03-13', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('65', 'ACMFDKIB', '', '', '1', '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2020-04-13', '0');
INSERT INTO `pr_prescription` (`id`, `appointment_id`, `patient_id`, `patient_type`, `doctor_id`, `main_category`, `chief_complain`, `insurance_id`, `policy_no`, `weight`, `blood_pressure`, `medicine`, `diagnosis`, `visiting_fees`, `patient_notes`, `reference_by`, `reference_to`, `status`, `date`, `pharmasist_read_status`) VALUES ('67', 'A4PD983X', '', '', '1', '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '2020-04-23', '0');


#
# TABLE STRUCTURE FOR: revisit_appoinment
#

DROP TABLE IF EXISTS `revisit_appoinment`;

CREATE TABLE `revisit_appoinment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_id` varchar(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `schedule_id` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `date` date NOT NULL,
  `problem` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `status` tinyint(4) NOT NULL,
  `level` int(11) NOT NULL,
  `revisit_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: revist_details
#

DROP TABLE IF EXISTS `revist_details`;

CREATE TABLE `revist_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `doc_id` int(11) NOT NULL,
  `create_date` date NOT NULL,
  `revisit_status` int(11) NOT NULL,
  `reception_status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO `revist_details` (`id`, `app_id`, `description`, `doc_id`, `create_date`, `revisit_status`, `reception_status`) VALUES ('2', 'AVJEWSAW', '5 weeks', '1', '2020-03-10', '1', '0');
INSERT INTO `revist_details` (`id`, `app_id`, `description`, `doc_id`, `create_date`, `revisit_status`, `reception_status`) VALUES ('4', 'AVJEWSAQ', '2 weeks', '1', '2020-03-11', '1', '1');
INSERT INTO `revist_details` (`id`, `app_id`, `description`, `doc_id`, `create_date`, `revisit_status`, `reception_status`) VALUES ('5', 'AH88OMKB', '2 weeks', '1', '2020-03-11', '1', '0');
INSERT INTO `revist_details` (`id`, `app_id`, `description`, `doc_id`, `create_date`, `revisit_status`, `reception_status`) VALUES ('6', 'AWPS8R48', '2weeks', '1', '2020-03-13', '1', '1');


#
# TABLE STRUCTURE FOR: schedule
#

DROP TABLE IF EXISTS `schedule`;

CREATE TABLE `schedule` (
  `schedule_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `available_days` varchar(50) DEFAULT NULL,
  `per_patient_time` time DEFAULT NULL,
  `serial_visibility_type` tinyint(4) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

INSERT INTO `schedule` (`schedule_id`, `doctor_id`, `start_time`, `end_time`, `available_days`, `per_patient_time`, `serial_visibility_type`, `status`) VALUES ('28', '1', '07:00:00', '18:00:00', 'Wednesday', '00:10:00', '1', '1');
INSERT INTO `schedule` (`schedule_id`, `doctor_id`, `start_time`, `end_time`, `available_days`, `per_patient_time`, `serial_visibility_type`, `status`) VALUES ('29', '1', '08:00:00', '17:00:00', 'Monday', '00:20:00', '2', '1');
INSERT INTO `schedule` (`schedule_id`, `doctor_id`, `start_time`, `end_time`, `available_days`, `per_patient_time`, `serial_visibility_type`, `status`) VALUES ('30', '1', '05:00:00', '17:00:00', 'Tuesday', '00:20:00', '1', '1');
INSERT INTO `schedule` (`schedule_id`, `doctor_id`, `start_time`, `end_time`, `available_days`, `per_patient_time`, `serial_visibility_type`, `status`) VALUES ('32', '1', '08:00:00', '17:00:00', 'Friday', '00:20:00', '1', '1');
INSERT INTO `schedule` (`schedule_id`, `doctor_id`, `start_time`, `end_time`, `available_days`, `per_patient_time`, `serial_visibility_type`, `status`) VALUES ('33', '12', '08:00:00', '17:00:00', 'Monday', '00:20:00', '2', '1');
INSERT INTO `schedule` (`schedule_id`, `doctor_id`, `start_time`, `end_time`, `available_days`, `per_patient_time`, `serial_visibility_type`, `status`) VALUES ('34', '1', '08:00:00', '19:00:00', 'Thursday', '00:20:00', '1', '1');
INSERT INTO `schedule` (`schedule_id`, `doctor_id`, `start_time`, `end_time`, `available_days`, `per_patient_time`, `serial_visibility_type`, `status`) VALUES ('35', '1', '08:00:00', '17:00:00', 'Saturday', '00:20:00', '1', '1');


#
# TABLE STRUCTURE FOR: setting
#

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `setting` (`setting_id`, `title`, `description`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`, `time_zone`) VALUES ('2', 'Hospital', 'india', 'voxforem@gmail.com', '9687453210', 'assets/images/apps/90908412f7fdadd81a40a3f79e9c3d52.png', 'assets/images/icons/a0ed8ec88e07205e07116f9098844bb8.ico', 'english', 'LTR', '2020©Copyright voxforem', 'Asia/Kolkata');


#
# TABLE STRUCTURE FOR: sms_delivery
#

DROP TABLE IF EXISTS `sms_delivery`;

CREATE TABLE `sms_delivery` (
  `sms_delivery_id` int(11) NOT NULL AUTO_INCREMENT,
  `ss_id` int(11) NOT NULL,
  `delivery_date_time` datetime NOT NULL,
  `sms_info_id` int(11) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`sms_delivery_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: sms_gateway
#

DROP TABLE IF EXISTS `sms_gateway`;

CREATE TABLE `sms_gateway` (
  `gateway_id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_name` text NOT NULL,
  `user` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `authentication` text NOT NULL,
  `link` text NOT NULL,
  `default_status` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`gateway_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `sms_gateway` (`gateway_id`, `provider_name`, `user`, `password`, `authentication`, `link`, `default_status`, `status`) VALUES ('1', 'nexmo', '1d286ff1', '11a8b67955d4482f', 'Hospital', 'https://www.nexmo.com/', '1', '1');
INSERT INTO `sms_gateway` (`gateway_id`, `provider_name`, `user`, `password`, `authentication`, `link`, `default_status`, `status`) VALUES ('2', 'clickatell', 'clickatell', '9d2e2d3aa558ddcb', 'Hospital', 'https://www.clickatell.com/', '0', '1');


#
# TABLE STRUCTURE FOR: sms_info
#

DROP TABLE IF EXISTS `sms_info`;

CREATE TABLE `sms_info` (
  `sms_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `doctor_id` int(11) NOT NULL,
  `patient_id` varchar(30) NOT NULL,
  `phone_no` varchar(30) NOT NULL,
  `appointment_id` varchar(30) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `sms_counter` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`sms_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('1', '1', 'PBYTASGQ', '9876543210', 'AWSG24K9', '2020-01-21 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('2', '1', 'P9XA38LW', '0123456789', 'AXBF235V', '2020-01-21 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('3', '13', 'P9XA38LW', '0123456789', 'AJJJL00L', '2020-01-21 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('4', '1', 'PBYTASGQ', '9876543210', 'AB4VS17U', '2020-01-22 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('5', '1', 'P9XA38LW', '0123456789', 'A1NL7V6O', '2020-02-10 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('6', '1', 'PAC24PT8', '9876543210', 'ASDO3RNI', '2020-02-10 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('7', '1', 'MED10002', '123963854', 'AZROM5LL', '2020-02-10 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('8', '1', 'PHR2DQW0', '01911112223333', 'A60ITKFB', '2020-02-12 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('9', '1', 'P3GWY7V3', '018111111111111', 'A596V7S1', '2020-02-12 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('10', '1', 'P3GWY7V3', '018111111111111', 'ADR2EKSS', '2020-02-12 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('11', '1', 'ME10002', '12345678', 'AR5LSAXU', '2020-02-17 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('12', '1', 'ME10002', '12345678', 'AUYY5JIQ', '2020-02-18 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('13', '1', 'ME10002', '12345678', 'AB1XBJ3X', '2020-02-14 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('14', '1', 'MED10145', '0968192686', 'AI7G6LFO', '2020-02-25 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('15', '1', 'me10002', '0971897969', 'A1CG16ZM', '2020-02-28 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('16', '1', 'MED10143', '0977753208', 'A5RUKD60', '2020-02-28 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('17', '1', 'med10001', '0971637680', 'ADM1Q8X6', '2020-03-04 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('18', '1', 'med10001', '0971637680', 'AVJEWSAQ', '2020-03-10 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('19', '1', 'med10001', '0971637680', 'AXJ2IXZ5', '2020-04-08 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('20', '1', 'med10001', '0971637680', 'A3K4GPJB', '2020-03-25 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('21', '1', 'med10001', '0971637680', 'A1I4YBJR', '2020-03-25 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('22', '1', 'med10001', '0971637680', 'A1K4D8ZI', '2020-03-25 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('23', '1', 'med10003', '0973089003', 'AH88OMKB', '2020-03-11 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('24', '1', 'med10005', '0966909858', 'A1HV8IAY', '2020-03-11 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('25', '1', 'med10007', '0955783874', 'AC4E4TP0', '2020-03-12 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('26', '1', 'med10003', '0973089003', 'AWPS8R48', '2020-03-13 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('27', '1', 'med10003', '0973089003', 'A58TD0EH', '2020-03-25 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('28', '1', 'med10004', '0977629938', 'AWP6MDZO', '2020-04-03 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('29', '1', 'med10006', '0972190716', 'AI6B9DNO', '2020-04-03 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('30', '1', 'med10001', '0971637680', 'AYQX11LZ', '2020-04-03 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('31', '1', 'med10003', '0973089003', 'AY9JW3TV', '2020-04-03 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('32', '1', 'med10008', '0974462662', 'A5KT2JE4', '2020-04-03 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('33', '1', 'med10005', '0966909858', 'AL65E6BV', '2020-04-03 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('34', '1', 'med10010', '0975171390', 'A74DUFDG', '2020-04-03 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('35', '1', 'med10001', '0971637680', 'AKYWPBGF', '2020-04-24 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('36', '1', 'med10004', '0977629938', 'AD57EQAK', '2020-04-09 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('37', '1', 'med10006', '0972190716', 'ACMFDKIB', '2020-04-11 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('38', '1', 'med10008', '0974462662', 'AXCMZM6B', '2020-04-15 00:00:00', '0', '0');
INSERT INTO `sms_info` (`sms_info_id`, `doctor_id`, `patient_id`, `phone_no`, `appointment_id`, `appointment_date`, `status`, `sms_counter`) VALUES ('39', '1', 'med10001', '0971637680', 'A4PD983X', '2020-04-21 00:00:00', '0', '0');


#
# TABLE STRUCTURE FOR: sms_schedule
#

DROP TABLE IF EXISTS `sms_schedule`;

CREATE TABLE `sms_schedule` (
  `ss_id` int(11) NOT NULL AUTO_INCREMENT,
  `ss_teamplate_id` int(11) NOT NULL,
  `ss_name` text NOT NULL,
  `ss_schedule` varchar(100) NOT NULL,
  `ss_status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ss_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `sms_schedule` (`ss_id`, `ss_teamplate_id`, `ss_name`, `ss_schedule`, `ss_status`) VALUES ('1', '2', 'One', '1:1:1', '1');
INSERT INTO `sms_schedule` (`ss_id`, `ss_teamplate_id`, `ss_name`, `ss_schedule`, `ss_status`) VALUES ('2', '9', 'Summer offer', '10:3:0', '1');


#
# TABLE STRUCTURE FOR: sms_setting
#

DROP TABLE IF EXISTS `sms_setting`;

CREATE TABLE `sms_setting` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `appointment` tinyint(1) DEFAULT NULL,
  `registration` tinyint(1) DEFAULT NULL,
  `schedule` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `sms_setting` (`id`, `appointment`, `registration`, `schedule`) VALUES ('2', '1', '1', '1');


#
# TABLE STRUCTURE FOR: sms_teamplate
#

DROP TABLE IF EXISTS `sms_teamplate`;

CREATE TABLE `sms_teamplate` (
  `teamplate_id` int(11) NOT NULL AUTO_INCREMENT,
  `teamplate_name` text DEFAULT NULL,
  `teamplate` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `default_status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`teamplate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `sms_teamplate` (`teamplate_id`, `teamplate_name`, `teamplate`, `type`, `status`, `default_status`) VALUES ('1', 'Appointment Template', 'Doctor, %doctor_name%. \r\nHello, %patient_name%. \r\nYour ID: %patient_id%, Appointment ID: %appointment_id%, Serial: %sequence% and Appointment Date: %appointment_date%. \r\nThank you for the Appointment.', 'Appointment', '1', '1');
INSERT INTO `sms_teamplate` (`teamplate_id`, `teamplate_name`, `teamplate`, `type`, `status`, `default_status`) VALUES ('2', 'Schedule', 'Doctor, %doctor_name%. \r\nHello, %patient_name%. \r\nYour ID: %patient_id%, Appointment ID: %appointment_id%, Serial: %sequence% and Appointment Date: %appointment_date%. \r\nThank you for the Appointment.', 'Schedule', '1', '1');
INSERT INTO `sms_teamplate` (`teamplate_id`, `teamplate_name`, `teamplate`, `type`, `status`, `default_status`) VALUES ('3', 'Registration', 'Hello, %patient_name%. \r\nYour ID: %patient_id%,  \r\nThank you for the registration.', 'Registration', '1', '1');
INSERT INTO `sms_teamplate` (`teamplate_id`, `teamplate_name`, `teamplate`, `type`, `status`, `default_status`) VALUES ('4', 'Summer Offer', 'Hello, %patient_name%. Your ID: %patient_id%,\r\nYour promo code is 1010101.\r\nContact with us.\r\nThanks', 'Schedule', '1', '0');


#
# TABLE STRUCTURE FOR: sms_users
#

DROP TABLE IF EXISTS `sms_users`;

CREATE TABLE `sms_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `receiver` varchar(20) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: temp_medicine
#

DROP TABLE IF EXISTS `temp_medicine`;

CREATE TABLE `temp_medicine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `appointment_id` varchar(255) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `medcine_type` varchar(255) NOT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `instruction` text NOT NULL,
  `days` varchar(255) NOT NULL,
  `medcount` int(11) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: temparary_test
#

DROP TABLE IF EXISTS `temparary_test`;

CREATE TABLE `temparary_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(255) NOT NULL,
  `test_sub_category` varchar(20) NOT NULL,
  `test_status` int(11) NOT NULL,
  `test_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4;

INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('1', 'LAB10001', '1', '0', '2020-04-04');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('2', 'LAB10001', '5', '0', '2020-04-04');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('3', 'LAB10001', '11', '0', '2020-04-04');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('4', 'LAB10002', '2', '0', '2020-04-06');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('5', 'LAB10002', '5', '0', '2020-04-06');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('6', 'LAB10002', '15', '0', '2020-04-06');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('7', 'LAB10003', '5', '0', '2020-04-06');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('8', 'LAB10001', '2', '0', '2020-04-07');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('9', 'LAB10001', '5', '0', '2020-04-07');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('10', 'LAB10001', '15', '0', '2020-04-07');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('11', 'LAB10001', '16', '0', '2020-04-07');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('17', 'med10006', '1', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('18', 'med10006', '4', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('19', 'med10006', '7', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('20', 'med10006', '1', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('21', 'med10006', '4', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('22', 'med10006', '11', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('23', 'med10006', '1', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('24', 'med10006', '4', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('25', 'med10006', '12', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('26', 'med10006', '1', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('27', 'med10006', '3', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('28', 'med10006', '11', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('29', 'med10006', '1', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('30', 'med10006', '4', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('31', 'med10006', '12', '0', '2020-04-11');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('32', 'med10006', '9', '0', '2020-04-13');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('33', 'med10006', '1', '0', '2020-04-13');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('34', 'med10006', '12', '0', '2020-04-13');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('35', 'med10008', '1', '0', '2020-04-15');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('36', 'med10008', '5', '0', '2020-04-15');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('37', 'med10008', '12', '0', '2020-04-15');
INSERT INTO `temparary_test` (`id`, `patient_id`, `test_sub_category`, `test_status`, `test_date`) VALUES ('38', 'med10008', '9', '0', '2020-04-15');


#
# TABLE STRUCTURE FOR: test_categories
#

DROP TABLE IF EXISTS `test_categories`;

CREATE TABLE `test_categories` (
  `tc_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_code` varchar(50) NOT NULL,
  `test_name` varchar(50) NOT NULL,
  PRIMARY KEY (`tc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

INSERT INTO `test_categories` (`tc_id`, `test_code`, `test_name`) VALUES ('1', 'BLD', 'Blood');
INSERT INTO `test_categories` (`tc_id`, `test_code`, `test_name`) VALUES ('2', 'URN', 'Urine');
INSERT INTO `test_categories` (`tc_id`, `test_code`, `test_name`) VALUES ('4', 'FF', 'dtgrtt');
INSERT INTO `test_categories` (`tc_id`, `test_code`, `test_name`) VALUES ('5', 'YT5', 'new test');
INSERT INTO `test_categories` (`tc_id`, `test_code`, `test_name`) VALUES ('6', 'UTR', 'Ultrasound');
INSERT INTO `test_categories` (`tc_id`, `test_code`, `test_name`) VALUES ('7', 'SEN', 'SEMEN');
INSERT INTO `test_categories` (`tc_id`, `test_code`, `test_name`) VALUES ('8', 'HVS', 'HIGH VAGINAL SWAB');
INSERT INTO `test_categories` (`tc_id`, `test_code`, `test_name`) VALUES ('9', 'STL', 'STOOL');
INSERT INTO `test_categories` (`tc_id`, `test_code`, `test_name`) VALUES ('10', 'SKN', 'SKIN');


#
# TABLE STRUCTURE FOR: test_report_list
#

DROP TABLE IF EXISTS `test_report_list`;

CREATE TABLE `test_report_list` (
  `report_id` int(11) NOT NULL AUTO_INCREMENT,
  `test_category` int(11) NOT NULL,
  `test_sub_category` varchar(255) NOT NULL,
  `vital_by_doc` varchar(255) NOT NULL,
  `appoinment_id` varchar(50) NOT NULL,
  `test_status` int(11) NOT NULL COMMENT '0- Pending,1 - Ongoing, 2-Done ',
  `test_date` datetime NOT NULL DEFAULT current_timestamp(),
  `result_document` text NOT NULL,
  `vital_by_lab` varchar(255) NOT NULL,
  `result_date` datetime DEFAULT NULL,
  PRIMARY KEY (`report_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

INSERT INTO `test_report_list` (`report_id`, `test_category`, `test_sub_category`, `vital_by_doc`, `appoinment_id`, `test_status`, `test_date`, `result_document`, `vital_by_lab`, `result_date`) VALUES ('1', '1', '0', '', 'AB4VS17U', '2', '2020-01-15 10:04:09', 'Test-Report-Template.png', '', NULL);
INSERT INTO `test_report_list` (`report_id`, `test_category`, `test_sub_category`, `vital_by_doc`, `appoinment_id`, `test_status`, `test_date`, `result_document`, `vital_by_lab`, `result_date`) VALUES ('8', '1', '1', 'kuku', 'A1CG16ZM', '2', '2020-02-28 08:10:43', 'manujamohancv (1).pdf', 'kuku', '2020-03-10 00:00:00');
INSERT INTO `test_report_list` (`report_id`, `test_category`, `test_sub_category`, `vital_by_doc`, `appoinment_id`, `test_status`, `test_date`, `result_document`, `vital_by_lab`, `result_date`) VALUES ('12', '1', '4', '', 'A5RUKD60', '2', '2020-02-28 13:43:25', 'Ultrasonography of thyroid gland.docx', 'kuku', '2020-03-02 00:00:00');
INSERT INTO `test_report_list` (`report_id`, `test_category`, `test_sub_category`, `vital_by_doc`, `appoinment_id`, `test_status`, `test_date`, `result_document`, `vital_by_lab`, `result_date`) VALUES ('21', '0', '1-5-12', '', 'ACMFDKIB', '2', '2020-04-13 00:00:00', '', '', '2020-04-13 00:00:00');
INSERT INTO `test_report_list` (`report_id`, `test_category`, `test_sub_category`, `vital_by_doc`, `appoinment_id`, `test_status`, `test_date`, `result_document`, `vital_by_lab`, `result_date`) VALUES ('22', '0', '9', '', 'A5RUKD60', '2', '2020-04-13 00:00:00', '', '', NULL);
INSERT INTO `test_report_list` (`report_id`, `test_category`, `test_sub_category`, `vital_by_doc`, `appoinment_id`, `test_status`, `test_date`, `result_document`, `vital_by_lab`, `result_date`) VALUES ('23', '0', '1-12-9', '', 'ACMFDKI', '1', '2020-04-13 00:00:00', '', '', NULL);
INSERT INTO `test_report_list` (`report_id`, `test_category`, `test_sub_category`, `vital_by_doc`, `appoinment_id`, `test_status`, `test_date`, `result_document`, `vital_by_lab`, `result_date`) VALUES ('24', '0', '1-5-12', '', 'AXCMZM6', '1', '2020-04-15 00:00:00', '', '', NULL);
INSERT INTO `test_report_list` (`report_id`, `test_category`, `test_sub_category`, `vital_by_doc`, `appoinment_id`, `test_status`, `test_date`, `result_document`, `vital_by_lab`, `result_date`) VALUES ('25', '0', '9', '', 'AXCMZM6B', '1', '2020-04-15 00:00:00', '', '', NULL);


#
# TABLE STRUCTURE FOR: test_result
#

DROP TABLE IF EXISTS `test_result`;

CREATE TABLE `test_result` (
  `result_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sub_cat_id` int(11) NOT NULL,
  `test_report_id` int(11) NOT NULL,
  `normal` varchar(255) NOT NULL,
  `abnormal` varchar(255) NOT NULL,
  `patient_id` varchar(255) NOT NULL,
  `result_date` date NOT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('1', '19', '21', '12', '', 'med10006', '2020-04-13');
INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('2', '1', '21', '5.6', '', 'med10006', '2020-04-13');
INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('3', '2', '21', '50', '', 'med10006', '2020-04-13');
INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('4', '3', '21', '15.0', '', 'med10006', '2020-04-13');
INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('5', '4', '21', '45', '', 'med10006', '2020-04-13');
INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('6', '5', '21', '95', '', 'med10006', '2020-04-13');
INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('7', '6', '21', '28', '', 'med10006', '2020-04-13');
INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('8', '7', '21', '33', '', 'med10006', '2020-04-13');
INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('9', '8', '21', '13', '', 'med10006', '2020-04-13');
INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('10', '9', '21', '300', '', 'med10006', '2020-04-13');
INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('11', '10', '21', '10', '', 'med10006', '2020-04-13');
INSERT INTO `test_result` (`result_id`, `sub_cat_id`, `test_report_id`, `normal`, `abnormal`, `patient_id`, `result_date`) VALUES ('12', '17', '21', '', '28', 'med10006', '2020-04-13');


#
# TABLE STRUCTURE FOR: test_sub_categories
#

DROP TABLE IF EXISTS `test_sub_categories`;

CREATE TABLE `test_sub_categories` (
  `tsc_id` int(11) NOT NULL AUTO_INCREMENT,
  `tsc_code` varchar(50) NOT NULL,
  `tc_code` varchar(50) NOT NULL,
  `tsc_name` varchar(50) NOT NULL,
  `test_fees` bigint(20) NOT NULL,
  PRIMARY KEY (`tsc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4;

INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('1', 'HDL ', '1', 'High Density Lipoprotein', '100');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('2', 'LDL', '1', 'Low Density Lipoprotein', '100');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('3', 'PV', '1', 'Plasma Viscosity', '100');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('4', 'CRP', '1', 'C-Reactive Protein', '100');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('5', 'TRE', '1', 'COMPLETE BLOOD COUNT', '100');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('6', 'SAD', '4', 'sadd', '100');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('7', 'QWE', '4', 'qwert', '100');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('8', 'TRE', '4', 'three', '100');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('9', 'TES', '6', 'Ultrasound', '100');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('11', 'SUB', '5', 'sub1', '100');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('12', 'SUB', '5', 'sub1', '500');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('13', 'RDT', '1', 'RDT', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('14', 'RPR', '1', 'RPR', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('15', 'TOXO', '1', 'TOXO', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('16', 'DCT', '1', 'DCT', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('17', 'HbsAG', '1', 'HbsAG', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('18', 'WIDAL', '1', 'WIDAL', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('19', 'HPY', '1', 'H.PYLORI', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('20', 'RHE', '1', 'RHEUMATIOD FACTOR', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('21', 'FBS', '1', 'FBS', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('22', 'RBS', '1', 'RBS', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('23', 'ESR', '1', 'ESR', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('24', 'BLG', '1', 'BLOOD GROUP', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('25', 'CT', '1', 'CLOTTING TIME', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('26', 'BT', '1', 'BLEEDING TIME', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('27', 'MPS', '1', 'MPS', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('28', 'ENY', '1', 'ENDOCRINOLOGY', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('29', 'PGT', '1', 'Pregnant Women (weeks since LMP*)', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('30', 'FSH', '1', 'Female Serum/Plasma', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('31', 'MSH', '1', 'Men Serum/Plasma', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('32', 'LH', '1', 'Female LH', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('33', 'LH', '1', 'Men LH', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('34', 'PRO', '1', 'PROLACTIN', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('35', 'RUB', '1', 'RUBELLA', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('36', 'Hep C', '1', 'HEPATITIS C', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('37', 'SEM', '7', 'SEMEN ANALYSIS', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('38', 'HVS', '8', 'HVS', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('39', 'STL', '9', 'STOOL', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('40', 'GRA', '2', 'GRAVINDEX', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('41', 'URA', '2', 'URINALYSIS', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('42', 'URM', '2', 'URINE MICROSCOPY', '0');
INSERT INTO `test_sub_categories` (`tsc_id`, `tsc_code`, `tc_code`, `tsc_name`, `test_fees`) VALUES ('43', 'SKS', '10', 'SKIN/SCPE', '0');


#
# TABLE STRUCTURE FOR: test_subcategories_details
#

DROP TABLE IF EXISTS `test_subcategories_details`;

CREATE TABLE `test_subcategories_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subcat_id` int(11) NOT NULL,
  `test_name` varchar(255) NOT NULL,
  `reference_range` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4;

INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('1', '5', 'White Blood Cell (WBC)', '4.8-10.8', 'K/mcL', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('2', '5', 'Red Blood Cell (RBC)', '4.7-6.1', 'M/mcL', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('3', '5', 'Hemoglobin (HB/Hgb)', '14.0-18.0', 'g/dL', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('4', '5', 'Hematocrit (HCT)', '42-52', '%', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('5', '5', 'Mean Cell Volume (MCV)', '80-100', 'fL', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('6', '5', 'Mean Cell Hemoglobin (MCH)', '27.0-32.0', 'pg', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('7', '5', 'Mean Cell Hb Conc (MCHC)', '32.0-36.0', 'g/dL', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('8', '5', 'Red Cell Dist Width (RDW)', '11.5-14.5', '%', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('9', '5', 'Platelet count', '150-450', 'K/mcL', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('10', '5', 'Mean Platelet Volume', '7.5-11.0', 'fL', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('17', '12', 'dfgfh', '45-10', 'hg', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('18', '16', 'asdfgt', '10-20', 'ty', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('19', '1', 'ghf', '10-18', 'mm', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('20', '9', 'ultrasound', '100-12', 'mg', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('21', '13', 'RDT', 'NEGATIVE / POSITIVE', 'N / P', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('22', '14', 'RPR', 'NEGATIVE / POSITIVE', 'N / P', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('23', '15', 'TOXO', 'NEGATIVE / POSITIVE', 'N / P', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('24', '16', 'DCT', 'NEGATIVE / POSITIVE', 'N / P', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('25', '17', 'HbsAG', 'NEGATIVE / POSITIVE', 'N / P', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('26', '18', 'WIDAL', 'NEGATIVE / POSITIVE', 'N / P', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('27', '19', 'H.PYLORI', 'NEGATIVE / POSITIVE', 'N / P', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('28', '20', 'RHEUMATIOD FACTOR', 'NEGATIVE / POSITIVE', 'N / P', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('29', '21', 'FBS', '3.5- 7.5', 'mmol/L', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('30', '22', 'RBS', '5.0-11.0', 'mmol/L', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('31', '23', 'MEN Under Age 50 years', 'Above 15', 'mm/hr', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('32', '23', 'MEN Over Age 50 years', 'Above 20', 'mm/hr', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('33', '23', 'WOMEN Under Age 50 years', 'Above 20', 'mm/hr', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('34', '23', 'WOMEN Over Age 50 years', 'Above 30', 'mm/hr', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('35', '23', 'CHILDREN', '3.0 -13.0', 'mm/hr', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('36', '23', 'NEW BORN', 'Above 2', 'mm/hr', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('37', '24', 'B.Group ', 'Rhf+/Rhf-', 'Rhf+', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('38', '25', 'Clotting Time', '4.0 - 8.0', 'mins', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('39', '26', 'Bleeding Time', '2.0 - 7. 0', 'mins', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('40', '27', 'MPS SEEN', 'Yes / No', '?', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('41', '28', 'TSH', '0.34-5.6', 'ulU-ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('42', '28', 'T3', '1.23-3.08', 'nmol/L', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('43', '28', 'T4', '57.9-150.6', 'nmol/L', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('44', '29', '3weeks', '5.0 - 50.0', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('45', '29', '4weeks', '5 - 426', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('46', '29', '5weeks', '18 - 7,340 ', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('47', '29', '6wweks', '1,080 - 56,500', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('48', '29', '7 -8 weeks', '7,650 -229,000', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('49', '29', '9 - 12 weeks', '25,700 - 288, 000', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('50', '29', '13 -16 weeks', '13,300 - 254, 000', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('51', '29', '17 -24 weeks', '4, 060 165,400', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('52', '29', '25 - 40 weeks', '3,640- 117,000', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('53', '30', 'Follicular phase', '3 - 11m', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('54', '30', 'Mid-cycle', '6 -21m', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('55', '30', 'Luteal phase', '1 - 9 m', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('56', '30', 'postmenopausal', '22-153m', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('57', '31', 'Men Serum/Plasma', '1 - 11m', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('58', '32', 'Ovulatory phase', '16.47- 73.87', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('59', '33', 'Men LH', '1.79-7.68', 'mIU/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('60', '34', 'PROLACTIN', '5.0 - 35', 'ng/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('61', '35', 'RUBELLA', 'NEGATIVE / POSITIVE', 'N / P', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('62', '36', 'HEPATITIS C', 'NEGATIVE / POSITIVE', 'N / P', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('63', '37', 'Macroscopy', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('64', '37', 'Ph', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('65', '37', 'Colour', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('66', '37', 'Viscosity', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('67', '37', 'Volume', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('68', '37', 'Microscopy', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('69', '37', 'Ideal form', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('70', '37', 'Mid piece', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('71', '37', 'Pin head', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('72', '37', 'Big head', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('73', '37', 'Viable', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('74', '37', 'Dead', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('75', '37', 'Active', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('76', '37', 'Sluggish', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('77', '37', 'Non-motile', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('78', '37', 'Concentration', '20 -150', 'million/ml', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('79', '38', 'Epithelial cells', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('80', '38', 'Pus cells', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('81', '38', 'Rb cells', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('82', '38', 'Others', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('83', '39', 'Consistency', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('84', '39', 'Odour', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('85', '39', 'Presence of blood,mucus or pus', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('86', '40', 'GRAVINDEX', 'NEGATIVE / POSITIVE', 'N / P', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('87', '41', 'Leucocytes', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('88', '41', 'Nitrite', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('89', '41', 'Urobilinogen', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('90', '41', 'Protein', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('91', '41', 'Blood', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('92', '41', 'SG', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('93', '41', 'Ketones', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('94', '41', 'Bilirubin', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('95', '41', 'Glucose', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('96', '42', 'Others others', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('97', '43', 'FUNGAL HYPHAE SEEN', 'Seen /Not', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('98', '44', '', '', '', '1');
INSERT INTO `test_subcategories_details` (`id`, `subcat_id`, `test_name`, `reference_range`, `unit`, `status`) VALUES ('99', '44', ',', '', '', '1');


#
# TABLE STRUCTURE FOR: total_payment
#

DROP TABLE IF EXISTS `total_payment`;

CREATE TABLE `total_payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_id` varchar(255) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4;

INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('3', 'MED10143', '110', 'medicine', '2020-03-05');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('4', 'MED10143', '660', 'medicine', '2020-03-06');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('5', 'MED10143', '550', 'test', '2020-03-09');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('6', 'MED10143', '550', 'medicine', '2020-03-09');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('7', 'MED10143', '550', 'test', '2020-03-09');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('8', 'MED10143', '550', 'medicine', '2020-03-09');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('9', 'MED10143', '350', 'medicine', '2020-03-09');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('10', 'med10001', '500', 'appointment', '2020-03-10');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('11', 'me10002', '100', 'test', '2020-03-10');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('12', 'med10001', '500', 'appointment', '2020-03-11');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('13', 'med10003', '500', 'appointment', '2020-03-11');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('14', 'med10005', '500', 'appointment', '2020-03-11');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('15', 'med10001', '100', 'appointment', '2020-03-11');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('16', 'med10007', '500', 'appointment', '2020-03-12');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('17', 'med10007', '60', 'medicine', '2020-03-12');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('18', 'med10003', '500', 'appointment', '2020-03-13');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('19', 'med10006', '500', 'appointment', '2020-04-11');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('20', 'med10006', '700', 'test', '2020-04-11');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('21', 'med10006', '700', 'test', '2020-04-13');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('22', 'med10006', '700', 'test', '2020-04-13');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('23', 'med10008', '500', 'appointment', '2020-04-15');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('24', 'med10008', '700', 'test', '2020-04-15');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('25', 'med10008', '100', 'test', '2020-04-15');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('26', 'med10008', '60', 'medicine', '2020-04-17');
INSERT INTO `total_payment` (`id`, `patient_id`, `amount`, `type`, `date`) VALUES ('27', 'med10001', '500', 'appointment', '2020-04-21');


#
# TABLE STRUCTURE FOR: user
#

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `user_role` tinyint(1) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `short_biography` text DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `specialist` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `blood_group` varchar(10) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('1', 'Samim Hasan', 'Khan', 'doctor@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '2', 'Asstt. Profesor', '27', '98, Green Road, Farmgate, Dhaka -1205', '0123456798', '0123456798', '<p>TEST</p>', '', 'MBBS, DDB, FRSH', '2016-10-12', 'Male', 'A+', '<p>MBBS, DDB, FRSH</p>', '1', '2017-06-22', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('2', 'Jhon', 'Doe', 'admin@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '1', NULL, NULL, '98 Green Road, Farmgate, Dhaka-1215', NULL, '1922296392', NULL, 'assets/images/doctor/d49475ae2643ed555a40c75af42d074c.png', NULL, '1970-01-01', 'Male', NULL, NULL, '2', '2017-10-29', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('7', 'Hasan', 'Khan', 'receptionist@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '7', NULL, NULL, 'TEST', NULL, '018211555555', NULL, '', NULL, '1970-01-01', 'Male', NULL, NULL, '7', '2017-03-16', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('8', 'Ashik', 'Islam', 'representative@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '8', NULL, NULL, 'Dhaka, Bangladesh', NULL, '0123456789', NULL, '', NULL, '1970-01-01', 'Male', NULL, NULL, '2', '2017-10-28', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('12', 'Dr. Elvera ', 'A. Lewis', 'elvera@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2', 'MBBS', '12', '3028 University Street Redmond, WA 98052 ', '01888237267', '01888237267', '<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.</p>', '', 'Nose', '0000-00-00', 'Male', 'A+', '<p><strong>Bachelor\'s degrees</strong> are offered at all 4-year colleges and universities, from large public institutions to small private colleges. The two most common types of bachelor\'s degrees are the Bachelor of Arts (B.A.) and Bachelor of Science (', '2', '2017-01-10', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('13', 'Dr.Mesut ', 'Alzain', 'mesut@bdtask.com', '827ccb0eea8a706c4c34a16891f84e7b', '2', 'Assistant Professor ', '13', '87,East Anadulala City ', '', '018111111111111', '', '', 'Neonatal', '1980-02-03', 'Male', 'A-', '<p>M.B.B.S,FCFS,Pharma.D,CCFA,NFDA</p>', '2', '2017-01-12', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('14', 'Dr.Ykayama', 'Durusalaln', 'murat1@bdtask.com', '8ce87b8ec346ff4c80635f667d1592ae', '2', 'Professor ', '24', '231,East Patalipur,Sonamuri', '01711111122', '01911112223333', '', '', 'Urology ', '1980-01-01', 'Female', 'A+', '<p>M.B.B.S,FCFS,Pharma.D,CCFA,NFDA</p>', '2', '2017-01-12', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('15', 'Dr.Zesika', 'Hayat', 'hayat@bdtask.com', '827ccb0eea8a706c4c34a16891f84e7b', '2', 'Assistant Professor ', '15', '54,East Park Street,North Sonaimuri', '01711111122', '+0111133445782', '', '', 'Neurology ', '1991-05-23', 'Male', 'O-', '<p>M.B.B.S,FCFS,Pharma.D,CCFA,NFDA</p>', '2', '2017-01-12', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('16', 'Dr.Dilmara ', 'Xyanturamana ', 'dilmara@bdtask.com', '827ccb0eea8a706c4c34a16891f84e7b', '2', 'Professor ', '18', 'South Ferri Ghat,Padma River,Chandpur', '01711111122', '+0123111189323', '', '', 'Medicine ', '1980-03-05', 'Male', 'A-', '<p>M.B.B.S,FCFS,Pharma.D,CCFA,NFDA</p>', '2', '2017-01-12', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('17', 'Dr. Ahmed ', 'Abdullah', 'ahemd@bdtask.com', '827ccb0eea8a706c4c34a16891f84e7b', '2', 'Professor ', '12', '231,East Patalipur,Sonamuri', '0182222221111', '01911112223333', '', '', 'Microbiologist ', '1968-01-01', 'Male', 'A+', '<p>M.B.B.S,FCFS,Pharma.D,CCFA,NFDA</p>', '2', '2017-01-12', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('18', 'Dr.Huyan', 'Xinan', 'xinan@bdtask.com', '827ccb0eea8a706c4c34a16891f84e7b', '2', 'Assistant Professor ', '22', '231,East Patalipur,Sonamuri,Nkhali', '0181111111112222', '+0111133445782', '', '', 'Gynecologist ', '1985-01-12', 'Male', '', '<p>M.B.B.S,FCFS,Pharma.D,CCFA,NFDA</p>', '2', '2017-01-12', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('19', 'Ahmed', 'Ziniya', 'laboratorist@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '4', NULL, NULL, '231,East Patalipur,Sonamuri', NULL, '+0111133445782', NULL, '', NULL, '1970-01-01', 'Male', NULL, NULL, '19', '2017-03-16', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('22', 'Dr. M', 'Murtaza', 'murtaz@bdtask.com', '827ccb0eea8a706c4c34a16891f84e7b', '2', 'Professor', '15', '56/C, East Burbank, North City ', '092222223333', '019833333222', '<p>Write about doctor in here.doctor short biography.</p>', 'assets/images/doctor/6bcba52aacac5732a876d931158a68b8.jpg', 'Neurology ', '1987-03-21', 'Male', 'A+', '<p>MBBS,FCCS,DPD,ORCH(NEU),MCCCO</p>\r\n<p>[removed][removed]</p>', '2', '2017-11-19', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('24', 'Meshu', 'Munawar', 'pharmacist@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '6', NULL, NULL, 'Dhaka', NULL, '018211555555', NULL, '', NULL, '1970-01-01', 'Male', NULL, NULL, '24', '2017-03-16', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('27', 'Tuhin', 'Sorkar', 'accountant@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '3', NULL, NULL, 'TEST', NULL, '018211555555', NULL, 'assets/images/human_resources/7a31e551a1ace6e0091ec7f32aa69031.jpg', NULL, '1970-01-01', 'Male', NULL, NULL, '2', '2017-10-29', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('29', 'Bay', 'Smith', 'nurse@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '5', NULL, NULL, 'Dhaka, Bangladesh', NULL, '018211555555', NULL, '', NULL, '1970-01-01', 'Male', NULL, NULL, '29', '2017-03-16', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('30', 'Tuhin', 'Abdullah', 'case@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '9', NULL, NULL, 'TEST', NULL, '0123456788', NULL, '', NULL, '1970-01-01', 'Male', NULL, NULL, '30', '2017-04-23', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('31', 'John', 'Doe', 'case2@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '9', NULL, NULL, 'India', NULL, '0123459689', NULL, '', NULL, NULL, 'Male', NULL, NULL, '2', '2017-10-28', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('34', 'anugraha', 'a', 'cashier@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-02-19', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('43', 'manuja', 'mohan', 'manuja@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '12', 'doc', '17', 'adfs', '12325', '12345678', '<p>awer</p>', '', 'xgv', '2020-02-27', 'Male', '', '', '2', '2020-02-27', NULL, '1');
INSERT INTO `user` (`user_id`, `firstname`, `lastname`, `email`, `password`, `user_role`, `designation`, `department_id`, `address`, `phone`, `mobile`, `short_biography`, `picture`, `specialist`, `date_of_birth`, `sex`, `blood_group`, `degree`, `created_by`, `create_date`, `update_date`, `status`) VALUES ('44', 'Samim Hasan', 'Khan', 'doctor@demo.com', '827ccb0eea8a706c4c34a16891f84e7b', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '2020-03-11', NULL, '1');


#
# TABLE STRUCTURE FOR: vitals_template
#

DROP TABLE IF EXISTS `vitals_template`;

CREATE TABLE `vitals_template` (
  `vital_id` int(11) NOT NULL AUTO_INCREMENT,
  `vital_name` varchar(50) NOT NULL,
  `vital_status` int(11) NOT NULL DEFAULT 1 COMMENT '0-Inactive/1-Active',
  `created_date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`vital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

INSERT INTO `vitals_template` (`vital_id`, `vital_name`, `vital_status`, `created_date`) VALUES ('1', 'Temperature', '1', '2020-01-21 12:30:20');
INSERT INTO `vitals_template` (`vital_id`, `vital_name`, `vital_status`, `created_date`) VALUES ('2', 'Symptoms', '1', '2020-01-21 12:30:20');
INSERT INTO `vitals_template` (`vital_id`, `vital_name`, `vital_status`, `created_date`) VALUES ('3', 'Height', '1', '2020-01-21 12:30:20');
INSERT INTO `vitals_template` (`vital_id`, `vital_name`, `vital_status`, `created_date`) VALUES ('4', 'Weight', '1', '2020-01-21 12:30:20');
INSERT INTO `vitals_template` (`vital_id`, `vital_name`, `vital_status`, `created_date`) VALUES ('5', 'Blood Pressure', '1', '2020-01-21 12:30:20');


#
# TABLE STRUCTURE FOR: ws_comment
#

DROP TABLE IF EXISTS `ws_comment`;

CREATE TABLE `ws_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `date` datetime NOT NULL,
  `add_to_website` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;

INSERT INTO `ws_comment` (`id`, `item_id`, `name`, `email`, `comment`, `date`, `add_to_website`) VALUES ('64', '25', 'John Doe', 'doe@example.com', 'Hello World!', '2017-01-15 11:42:47', '1');
INSERT INTO `ws_comment` (`id`, `item_id`, `name`, `email`, `comment`, `date`, `add_to_website`) VALUES ('65', '24', 'Tanzil Ahmad', 'tanzil4091@gmail.com', 'I highly recommend this application for hospital management', '2017-01-16 01:50:48', '1');


#
# TABLE STRUCTURE FOR: ws_item
#

DROP TABLE IF EXISTS `ws_item`;

CREATE TABLE `ws_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `icon_image` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `position` int(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `counter` int(11) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('24', 'blog', 'assets_web/images/icon_image/2017-01-12/t.jpg', 'Nullam et lorem quis risus porttitor sollicitudin vitae', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et sapien a leo imperdiet auctor. Nullam sollicitudin quam ut diam lacinia, non venenatis odio vehicula. Ut ultricies vel leo sit amet vestibulum. Curabitur elementum lacus sagittis dolor scelerisque, sit amet molestie nulla mattis. Aliquam eu semper diam. Sed vulputate bibendum erat ac luctus. Curabitur a pretium purus. Suspendisse quis suscipit eros. Cras felis odio, aliquam et rhoncus sit amet, dapibus eget tellus. Etiam porttitor lacus in nibh fringilla, id ullamcorper ipsum egestas. Vivamus dictum dui vel erat suscipit egestas. Pellentesque ut arcu eget sem pretium auctor a sed purus. Cras gravida lorem eu feugiat malesuada. Etiam sollicitudin enim quis neque viverra semper.</p>\r\n<p>Aenean ac feugiat urna, eu finibus velit. Nunc dictum ante a velit pharetra, ut ultrices ante posuere. Quisque a ante sodales dolor gravida pulvinar. Integer enim justo, pulvinar non feugiat at, venenatis eu ex. Nullam ac finibus orci. Aenean metus felis, euismod vitae sollicitudin quis, convallis eu diam. Vestibulum et dictum nisi. Phasellus dapibus dui urna, et pellentesque orci egestas vel. Aliquam iaculis urna sed metus consectetur luctus. Vivamus ac sagittis dui. Ut ultrices, mauris vel pulvinar suscipit, orci diam suscipit felis, sit amet imperdiet magna mauris a urna. Aliquam condimentum urna ipsum, a rutrum sapien dapibus in. Etiam eleifend lobortis velit, a consequat leo sodales sit amet. Pellentesque mattis, massa in sollicitudin accumsan, nibh nisl facilisis urna, a blandit nunc eros vel neque. Proin sed nisi sed eros condimentum maximus sit amet sed eros. Aenean interdum aliquam egestas.</p>\r\n<p>Nullam et lorem quis risus porttitor sollicitudin vitae nec arcu. Quisque rhoncus orci diam, eu fringilla lacus convallis a. Donec tincidunt enim in hendrerit varius. Maecenas vel vestibulum metus. Curabitur eleifend ut purus vel consequat. Aenean hendrerit pulvinar placerat. Suspendisse at accumsan leo. Aenean cursus tortor et augue efficitur faucibus. Integer eget ullamcorper dui. Aliquam porttitor ac risus ac malesuada.</p>', '1', '1', '37', '2017-01-12');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('25', 'blog', 'assets_web/images/icon_image/2017-01-12/e.jpg', 'Nullam et lorem quis risus porttitor sollicitudin vitae', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et sapien a leo imperdiet auctor. Nullam sollicitudin quam ut diam lacinia, non venenatis odio vehicula. Ut ultricies vel leo sit amet vestibulum. Curabitur elementum lacus sagittis dolor scelerisque, sit amet molestie nulla mattis. Aliquam eu semper diam. Sed vulputate bibendum erat ac luctus. Curabitur a pretium purus. Suspendisse quis suscipit eros. Cras felis odio, aliquam et rhoncus sit amet, dapibus eget tellus. Etiam porttitor lacus in nibh fringilla, id ullamcorper ipsum egestas. Vivamus dictum dui vel erat suscipit egestas. Pellentesque ut arcu eget sem pretium auctor a sed purus. Cras gravida lorem eu feugiat malesuada. Etiam sollicitudin enim quis neque viverra semper.</p>\r\n<p>Aenean ac feugiat urna, eu finibus velit. Nunc dictum ante a velit pharetra, ut ultrices ante posuere. Quisque a ante sodales dolor gravida pulvinar. Integer enim justo, pulvinar non feugiat at, venenatis eu ex. Nullam ac finibus orci. Aenean metus felis, euismod vitae sollicitudin quis, convallis eu diam. Vestibulum et dictum nisi. Phasellus dapibus dui urna, et pellentesque orci egestas vel. Aliquam iaculis urna sed metus consectetur luctus. Vivamus ac sagittis dui. Ut ultrices, mauris vel pulvinar suscipit, orci diam suscipit felis, sit amet imperdiet magna mauris a urna. Aliquam condimentum urna ipsum, a rutrum sapien dapibus in. Etiam eleifend lobortis velit, a consequat leo sodales sit amet. Pellentesque mattis, massa in sollicitudin accumsan, nibh nisl facilisis urna, a blandit nunc eros vel neque. Proin sed nisi sed eros condimentum maximus sit amet sed eros. Aenean interdum aliquam egestas.</p>\r\n<p>Nullam et lorem quis risus porttitor sollicitudin vitae nec arcu. Quisque rhoncus orci diam, eu fringilla lacus convallis a. Donec tincidunt enim in hendrerit varius. Maecenas vel vestibulum metus. Curabitur eleifend ut purus vel consequat. Aenean hendrerit pulvinar placerat. Suspendisse at accumsan leo. Aenean cursus tortor et augue efficitur faucibus. Integer eget ullamcorper dui. Aliquam porttitor ac risus ac malesuada.</p>', '2', '1', '32', '2017-01-12');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('26', 'blog', 'assets_web/images/icon_image/2017-01-12/d.jpg', 'Nullam et lorem quis risus porttitor sollicitudin vitae', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et sapien a leo imperdiet auctor. Nullam sollicitudin quam ut diam lacinia, non venenatis odio vehicula. Ut ultricies vel leo sit amet vestibulum. Curabitur elementum lacus sagittis dolor scelerisque, sit amet molestie nulla mattis. Aliquam eu semper diam. Sed vulputate bibendum erat ac luctus. Curabitur a pretium purus. Suspendisse quis suscipit eros. Cras felis odio, aliquam et rhoncus sit amet, dapibus eget tellus. Etiam porttitor lacus in nibh fringilla, id ullamcorper ipsum egestas. Vivamus dictum dui vel erat suscipit egestas. Pellentesque ut arcu eget sem pretium auctor a sed purus. Cras gravida lorem eu feugiat malesuada. Etiam sollicitudin enim quis neque viverra semper.</p>\r\n<p>Aenean ac feugiat urna, eu finibus velit. Nunc dictum ante a velit pharetra, ut ultrices ante posuere. Quisque a ante sodales dolor gravida pulvinar. Integer enim justo, pulvinar non feugiat at, venenatis eu ex. Nullam ac finibus orci. Aenean metus felis, euismod vitae sollicitudin quis, convallis eu diam. Vestibulum et dictum nisi. Phasellus dapibus dui urna, et pellentesque orci egestas vel. Aliquam iaculis urna sed metus consectetur luctus. Vivamus ac sagittis dui. Ut ultrices, mauris vel pulvinar suscipit, orci diam suscipit felis, sit amet imperdiet magna mauris a urna. Aliquam condimentum urna ipsum, a rutrum sapien dapibus in. Etiam eleifend lobortis velit, a consequat leo sodales sit amet. Pellentesque mattis, massa in sollicitudin accumsan, nibh nisl facilisis urna, a blandit nunc eros vel neque. Proin sed nisi sed eros condimentum maximus sit amet sed eros. Aenean interdum aliquam egestas.</p>\r\n<p>Nullam et lorem quis risus porttitor sollicitudin vitae nec arcu. Quisque rhoncus orci diam, eu fringilla lacus convallis a. Donec tincidunt enim in hendrerit varius. Maecenas vel vestibulum metus. Curabitur eleifend ut purus vel consequat. Aenean hendrerit pulvinar placerat. Suspendisse at accumsan leo. Aenean cursus tortor et augue efficitur faucibus. Integer eget ullamcorper dui. Aliquam porttitor ac risus ac malesuada.</p>', '3', '1', '10', '2017-01-12');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('27', 'blog', 'assets_web/images/icon_image/2017-01-12/m.jpg', 'Nullam et lorem quis risus porttitor sollicitudin vitae', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris et sapien a leo imperdiet auctor. Nullam sollicitudin quam ut diam lacinia, non venenatis odio vehicula. Ut ultricies vel leo sit amet vestibulum. Curabitur elementum lacus sagittis dolor scelerisque, sit amet molestie nulla mattis. Aliquam eu semper diam. Sed vulputate bibendum erat ac luctus. Curabitur a pretium purus. Suspendisse quis suscipit eros. Cras felis odio, aliquam et rhoncus sit amet, dapibus eget tellus. Etiam porttitor lacus in nibh fringilla, id ullamcorper ipsum egestas. Vivamus dictum dui vel erat suscipit egestas. Pellentesque ut arcu eget sem pretium auctor a sed purus. Cras gravida lorem eu feugiat malesuada. Etiam sollicitudin enim quis neque viverra semper.</p>\r\n<p>Aenean ac feugiat urna, eu finibus velit. Nunc dictum ante a velit pharetra, ut ultrices ante posuere. Quisque a ante sodales dolor gravida pulvinar. Integer enim justo, pulvinar non feugiat at, venenatis eu ex. Nullam ac finibus orci. Aenean metus felis, euismod vitae sollicitudin quis, convallis eu diam. Vestibulum et dictum nisi. Phasellus dapibus dui urna, et pellentesque orci egestas vel. Aliquam iaculis urna sed metus consectetur luctus. Vivamus ac sagittis dui. Ut ultrices, mauris vel pulvinar suscipit, orci diam suscipit felis, sit amet imperdiet magna mauris a urna. Aliquam condimentum urna ipsum, a rutrum sapien dapibus in. Etiam eleifend lobortis velit, a consequat leo sodales sit amet. Pellentesque mattis, massa in sollicitudin accumsan, nibh nisl facilisis urna, a blandit nunc eros vel neque. Proin sed nisi sed eros condimentum maximus sit amet sed eros. Aenean interdum aliquam egestas.</p>\r\n<p>Nullam et lorem quis risus porttitor sollicitudin vitae nec arcu. Quisque rhoncus orci diam, eu fringilla lacus convallis a. Donec tincidunt enim in hendrerit varius. Maecenas vel vestibulum metus. Curabitur eleifend ut purus vel consequat. Aenean hendrerit pulvinar placerat. Suspendisse at accumsan leo. Aenean cursus tortor et augue efficitur faucibus. Integer eget ullamcorper dui. Aliquam porttitor ac risus ac malesuada.</p>', '4', '1', '4', '2017-01-12');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('28', 'service', 'assets_web/images/icon_image/2017-05-14/u3.png', 'Emergency Care', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non tellus quis ante vulputate mattis vitae id erat. Nulla in volutpat justo, et scelerisque dui. Suspendisse vel volutpat tortor, et porttitor erat. Phasellus in enim sed lorem ullamcorper convallis. Ut aliquam nulla vel metus eleifend pulvinar. Mauris vitae sem a augue sollicitudin semper. Integer finibus pretium suscipit. Nulla vehicula metus ligula, vel rutrum augue rhoncus ac. Sed sed tortor sed sapien porta porta non sit amet libero. Pellentesque dictum ex nec risus maximus, ut gravida felis tincidunt. Nunc sem ligula, elementum non tincidunt eu, lacinia vitae tortor. Pellentesque tincidunt libero id suscipit tincidunt. Ut enim dolor, consequat a hendrerit in, vulputate a risus. In pulvinar elit non turpis rhoncus, non mattis lectus fringilla.', '1', '1', '0', '2017-05-14');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('29', 'service', 'assets_web/images/icon_image/2017-01-13/u.png', 'Call Center 24/7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non tellus quis ante vulputate mattis vitae id erat. Nulla in volutpat justo, et scelerisque dui. Suspendisse vel volutpat tortor, et porttitor erat. Phasellus in enim sed lorem ullamcorper convallis. Ut aliquam nulla vel metus eleifend pulvinar. Mauris vitae sem a augue sollicitudin semper. Integer finibus pretium suscipit. Nulla vehicula metus ligula, vel rutrum augue rhoncus ac. Sed sed tortor sed sapien porta porta non sit amet libero. Pellentesque dictum ex nec risus maximus, ut gravida felis tincidunt. Nunc sem ligula, elementum non tincidunt eu, lacinia vitae tortor. Pellentesque tincidunt libero id suscipit tincidunt. Ut enim dolor, consequat a hendrerit in, vulputate a risus. In pulvinar elit non turpis rhoncus, non mattis lectus fringilla.', '2', '1', '0', '2017-01-13');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('30', 'service', 'assets_web/images/icon_image/2017-01-13/h1.png', 'Cardiac Surgery', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non tellus quis ante vulputate mattis vitae id erat. Nulla in volutpat justo, et scelerisque dui. Suspendisse vel volutpat tortor, et porttitor erat. Phasellus in enim sed lorem ullamcorper convallis. Ut aliquam nulla vel metus eleifend pulvinar. Mauris vitae sem a augue sollicitudin semper. Integer finibus pretium suscipit. Nulla vehicula metus ligula, vel rutrum augue rhoncus ac. Sed sed tortor sed sapien porta porta non sit amet libero. Pellentesque dictum ex nec risus maximus, ut gravida felis tincidunt. Nunc sem ligula, elementum non tincidunt eu, lacinia vitae tortor. Pellentesque tincidunt libero id suscipit tincidunt. Ut enim dolor, consequat a hendrerit in, vulputate a risus. In pulvinar elit non turpis rhoncus, non mattis lectus fringilla.', '3', '1', '0', '2017-01-13');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('31', 'service', 'assets_web/images/icon_image/2017-01-13/D.png', 'Dental Care', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non tellus quis ante vulputate mattis vitae id erat. Nulla in volutpat justo, et scelerisque dui. Suspendisse vel volutpat tortor, et porttitor erat. Phasellus in enim sed lorem ullamcorper convallis. Ut aliquam nulla vel metus eleifend pulvinar. Mauris vitae sem a augue sollicitudin semper. Integer finibus pretium suscipit. Nulla vehicula metus ligula, vel rutrum augue rhoncus ac. Sed sed tortor sed sapien porta porta non sit amet libero. Pellentesque dictum ex nec risus maximus, ut gravida felis tincidunt. Nunc sem ligula, elementum non tincidunt eu, lacinia vitae tortor. Pellentesque tincidunt libero id suscipit tincidunt. Ut enim dolor, consequat a hendrerit in, vulputate a risus. In pulvinar elit non turpis rhoncus, non mattis lectus fringilla.', '4', '1', '0', '2017-01-13');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('32', 'service', 'assets_web/images/icon_image/2017-01-13/i.png', 'Ophthalmology', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non tellus quis ante vulputate mattis vitae id erat. Nulla in volutpat justo, et scelerisque dui. Suspendisse vel volutpat tortor, et porttitor erat. Phasellus in enim sed lorem ullamcorper convallis. Ut aliquam nulla vel metus eleifend pulvinar. Mauris vitae sem a augue sollicitudin semper. Integer finibus pretium suscipit. Nulla vehicula metus ligula, vel rutrum augue rhoncus ac. Sed sed tortor sed sapien porta porta non sit amet libero. Pellentesque dictum ex nec risus maximus, ut gravida felis tincidunt. Nunc sem ligula, elementum non tincidunt eu, lacinia vitae tortor. Pellentesque tincidunt libero id suscipit tincidunt. Ut enim dolor, consequat a hendrerit in, vulputate a risus. In pulvinar elit non turpis rhoncus, non mattis lectus fringilla.', '5', '1', '0', '2017-01-13');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('33', 'service', 'assets_web/images/icon_image/2017-05-14/u4.png', 'Neurology ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum non tellus quis ante vulputate mattis vitae id erat. Nulla in volutpat justo, et scelerisque dui. Suspendisse vel volutpat tortor, et porttitor erat. Phasellus in enim sed lorem ullamcorper convallis. Ut aliquam nulla vel metus eleifend pulvinar. Mauris vitae sem a augue sollicitudin semper. Integer finibus pretium suscipit. Nulla vehicula metus ligula, vel rutrum augue rhoncus ac. Sed sed tortor sed sapien porta porta non sit amet libero. Pellentesque dictum ex nec risus maximus, ut gravida felis tincidunt. Nunc sem ligula, elementum non tincidunt eu, lacinia vitae tortor. Pellentesque tincidunt libero id suscipit tincidunt. Ut enim dolor, consequat a hendrerit in, vulputate a risus. In pulvinar elit non turpis rhoncus, non mattis lectus fringilla.', '6', '1', '0', '2017-05-14');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('34', 'about', 'assets_web/images/icon_image/5adaedd86b35edde2f9de7e64d2b1ce2.jpg', 'ABOUT US', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed. Aenean id ante blandit, mattis lacus ac, placerat elit. Vestibulum purus nisl, aliquam ut velit sed, fermentum bibendum ipsum. Vivamus sagittis mi ac erat fermentum, sed molestie tellus tincidunt. Curabitur mauris nisi, molestie viverra semper eget, elementum et odio. Etiam enim massa, fringilla eu malesuada in, volutpat eget sapien. Nunc aliquam diam in ex facilisis, non feugiat tellus tristique. Integer quis lorem at justo mollis dictum. Aenean nec nibh eget arcu faucibus dictum ac sit amet augue. Aliquam quis rhoncus ex. In euismod felis mauris, vel euismod risus ornare sit amet. Nunc iaculis nec dolor vel eleifend. Sed quis felis at enim faucibus commodo. Donec quis condimentum velit, sit amet luctus leo. Curabitur a volutpat lorem. Duis ut leo quis erat pellentesque tincidunt. Ut eu enim eu ante faucibus tincidunt. Maecenas lorem purus, cursus in massa nec, convallis porta velit. Etiam aliquet tortor sed fermentum tempor. Maecenas quis ornare lacus, eu maximus purus. Mauris et pellentesque tellus, sed ullamcorper ipsum. Sed non volutpat risus. Donec sit amet sem vitae purus mollis sodales. Suspendisse ut ipsum sed lorem feugiat congue sed non tortor. Mauris laoreet lorem sed varius placerat. Nullam tincidunt neque vitae eros ullamcorper, laoreet finibus erat convallis. Vestibulum vehicula turpis dui, vitae ultrices ante fermentum in. Sed laoreet pharetra pretium. In hac habitasse platea dictumst. Morbi a bibendum velit. Phasellus luctus dignissim quam, et elementum mi aliquam sed. In non tortor nec libero porta egestas. Fusce id dictum augue, non condimentum eros. In in mi arcu. Suspendisse potenti. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod dictum justo vel condimentum. Donec leo mauris, ultrices ac risus nec, efficitur finibus eros. Ut ut blandit ex, vel porta nulla. Integer ut dapibus lectus. Duis sollicitudin metus ipsum, vitae euismod nisl sagittis et.', '1', '1', '9', '2017-10-28');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('35', 'about', 'assets_web/images/icon_image/2017-01-13/g.jpg', 'Our Vision & Mission ', '\r\n\r\n\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.\r\nAenean id ante blandit, mattis lacus ac, placerat elit. Vestibulum purus nisl, aliquam ut velit sed, fermentum bibendum ipsum. Vivamus sagittis mi ac erat fermentum, sed molestie tellus tincidunt. Curabitur mauris nisi, molestie viverra semper eget, elementum et odio. Etiam enim massa, fringilla eu malesuada in, volutpat eget sapien. Nunc aliquam diam in ex facilisis, non feugiat tellus tristique. Integer quis lorem at justo mollis dictum. Aenean nec nibh eget arcu faucibus dictum ac sit amet augue. Aliquam quis rhoncus ex. In euismod felis mauris, vel euismod risus ornare sit amet. Nunc iaculis nec dolor vel eleifend. Sed quis felis at enim faucibus commodo. Donec quis condimentum velit, sit amet luctus leo. Curabitur a volutpat lorem. Duis ut leo quis erat pellentesque tincidunt.\r\nUt eu enim eu ante faucibus tincidunt. Maecenas lorem purus, cursus in massa nec, convallis porta velit. Etiam aliquet tortor sed fermentum tempor. Maecenas quis ornare lacus, eu maximus purus. Mauris et pellentesque tellus, sed ullamcorper ipsum. Sed non volutpat risus. Donec sit amet sem vitae purus mollis sodales. Suspendisse ut ipsum sed lorem feugiat congue sed non tortor. Mauris laoreet lorem sed varius placerat. Nullam tincidunt neque vitae eros ullamcorper, laoreet finibus erat convallis. Vestibulum vehicula turpis dui, vitae ultrices ante fermentum in. Sed laoreet pharetra pretium. In hac habitasse platea dictumst. Morbi a bibendum velit.\r\nPhasellus luctus dignissim quam, et elementum mi aliquam sed. In non tortor nec libero porta egestas. Fusce id dictum augue, non condimentum eros. In in mi arcu. Suspendisse potenti. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Etiam euismod dictum justo vel condimentum. Donec leo mauris, ultrices ac risus nec, efficitur finibus eros. Ut ut blandit ex, vel porta nulla. Integer ut dapibus lectus. Duis sollicitudin metus ipsum, vitae euismod nisl sagittis et.\r\n\r\n\r\n', '2', '1', '5', '2017-01-13');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('36', 'appointment', 'assets_web/images/icon_image/2017-01-13/6.png', 'Emergency Care', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.', '1', '1', '0', '2017-01-13');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('37', 'appointment', 'assets_web/images/icon_image/2017-01-13/5.png', 'Test Appointment', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.', '2', '1', '0', '2017-01-13');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('38', 'appointment', 'assets_web/images/icon_image/2017-01-13/N1.png', 'Neurology Surgery ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.', '3', '1', '0', '2017-02-20');
INSERT INTO `ws_item` (`id`, `name`, `icon_image`, `title`, `description`, `position`, `status`, `counter`, `date`) VALUES ('39', 'appointment', 'assets_web/images/icon_image/2017-05-14/51.png', 'Oncology ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer ipsum magna, gravida nec erat ac, malesuada pharetra felis. Phasellus eu dolor orci. Duis et dictum sem, sit amet sagittis dolor. Curabitur scelerisque, nunc eget viverra malesuada, nunc ligula tincidunt nisi, eget elementum urna magna at dui. Praesent eu tincidunt arcu. Ut imperdiet a ligula nec dapibus. Aliquam erat volutpat. Donec auctor elementum accumsan. Vestibulum velit augue, feugiat ac nisl in, pharetra accumsan ligula. Proin nunc mauris, ultrices quis tristique vitae, ornare quis nunc. Aenean ut tincidunt lorem. Maecenas consectetur faucibus velit, nec tincidunt nulla fermentum sed.', '4', '1', '0', '2017-05-14');


#
# TABLE STRUCTURE FOR: ws_section
#

DROP TABLE IF EXISTS `ws_section`;

CREATE TABLE `ws_section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `featured_image` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO `ws_section` (`id`, `name`, `title`, `description`, `featured_image`) VALUES ('19', 'service', 'Service We Offer', 'Our department & special service ', 'assets_web/images/uploads/2016-11-02/b.jpg');
INSERT INTO `ws_section` (`id`, `name`, `title`, `description`, `featured_image`) VALUES ('20', 'about', 'About Us', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature froLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,m 45 BC.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.', 'assets_web/images/uploads/c9995ec146f42d86911bb35a39f3f280.jpg');
INSERT INTO `ws_section` (`id`, `name`, `title`, `description`, `featured_image`) VALUES ('23', 'appointment', 'Why Choose Us', 'Our department & special service ', 'assets_web/images/uploads/2016-11-06/d.png');
INSERT INTO `ws_section` (`id`, `name`, `title`, `description`, `featured_image`) VALUES ('26', 'doctor', 'OUR DOCTOR', 'Our department & special service ', 'assets_web/images/uploads/2016-11-05/d.png');
INSERT INTO `ws_section` (`id`, `name`, `title`, `description`, `featured_image`) VALUES ('27', 'department', 'DEPARTMENT', 'Our department & special service ', '');
INSERT INTO `ws_section` (`id`, `name`, `title`, `description`, `featured_image`) VALUES ('28', 'blog', 'Latest Blog', 'Latest topics of the webstie', 'assets_web/images/uploads/2016-11-05/c.png');


#
# TABLE STRUCTURE FOR: ws_setting
#

DROP TABLE IF EXISTS `ws_setting`;

CREATE TABLE `ws_setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL,
  `twitter_api` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `facebook` varchar(100) DEFAULT NULL,
  `twitter` varchar(100) DEFAULT NULL,
  `vimeo` varchar(100) DEFAULT NULL,
  `instagram` varchar(100) DEFAULT NULL,
  `dribbble` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `google_plus` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `ws_setting` (`id`, `title`, `description`, `logo`, `favicon`, `meta_tag`, `meta_keyword`, `email`, `phone`, `address`, `copyright_text`, `twitter_api`, `google_map`, `facebook`, `twitter`, `vimeo`, `instagram`, `dribbble`, `skype`, `google_plus`, `status`) VALUES ('1', 'Voxforem Hospital Limited', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. ', '', '', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. ', 'Hospital, Appointment, System, \r\nHospital Appointment,Demo, Appointment', 'demo@hospital.com', '0123456788', '123/A, Street, State-12345, Demo', '<p>&copy; 2016 <a title=\"Voxforem Technologies Pvt Ltd.\" href=\"http://voxforem.com\" target=\"_blank\">Voxforem Technologies</a>. All rights reserved</p>\r\n<p>&nbsp;</p>', '<a class=\"twitter-timeline\" data-lang=\"en\" data-dnt=\"true\" data-link-color=\"#207FDD\" href=\"https://twitter.com/taylorswift13\">Tweets by taylorswift13</a> <script async src=\"//platform.twitter.com/widgets.js\" charset=\"utf-8\"></script>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d29215.021939977993!2d90.40923229999999!3d23.75173875!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sbn!2sbd!4v1477987829881\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', 'http://facebook.com/', 'http://', 'http://', 'http://', 'http://', 'http://', 'http://', '1');


#
# TABLE STRUCTURE FOR: ws_slider
#

DROP TABLE IF EXISTS `ws_slider`;

CREATE TABLE `ws_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `ws_slider` (`id`, `title`, `subtitle`, `description`, `image`, `position`, `status`) VALUES ('1', 'Lorem Ipsum is simply dummy text of the printing ', 'Lorem Ipsum is simply dummy text of the printing ', '<p>Lorem Ipsum is simply dummy text of the printingLorem Ipsum is simply dummy text of the printing Lorem Ipsum is simply dummy text of the printing Lorem Ipsum is simply dummy text of the printing Lorem Ipsum is simply dummy text of the printing Lorem Ipsum is simply dummy text of the printing</p>', 'assets_web/images/slider/2016-11-03/a2.jpg', '3', '1');
INSERT INTO `ws_slider` (`id`, `title`, `subtitle`, `description`, `image`, `position`, `status`) VALUES ('2', 'Welcome to', 'Demo Hospital', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting</p>', 'assets_web/images/slider/2017-01-16/d1.jpg', '1', '1');
INSERT INTO `ws_slider` (`id`, `title`, `subtitle`, `description`, `image`, `position`, `status`) VALUES ('3', 'Second Slide ', 'Welcome back - Second slide', '<p><strong>Lorem Ipsum</strong></p>\r\n<hr />\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\r\n<ul>\r\n<li>Demo Hospital Limited</li>\r\n<li>&lt;script&gt;alert(2)&lt;/script&gt;</li>\r\n</ul>', 'assets_web/images/slider/2016-11-03/s.jpg', '1', '1');


