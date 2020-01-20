ALTER TABLE `deployments_versions`
ADD COLUMN `label_id` int(11) UNSIGNED NOT NULL DEFAULT 0 AFTER `current_package_id`;

ALTER TABLE `packages`
MODIFY COLUMN `description` json NOT NULL AFTER `deployment_id`;

UPDATE `versions` SET `version` = '0.5.1' WHERE `type` = '1';
