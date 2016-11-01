<?php
class ControllerCommonFooter extends Controller {
	public function index() {
		$this->load->language('common/footer');
		$this->document->addScript('catalog/view/javascript/contactForm.js');
		$data['text_information'] = $this->language->get('text_information');
		$data['text_service'] = $this->language->get('text_service');
		$data['text_extra'] = $this->language->get('text_extra');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_return'] = $this->language->get('text_return');
		$data['text_sitemap'] = $this->language->get('text_sitemap');
		$data['text_manufacturer'] = $this->language->get('text_manufacturer');
		$data['text_voucher'] = $this->language->get('text_voucher');
		$data['text_affiliate'] = $this->language->get('text_affiliate');
		$data['text_special'] = $this->language->get('text_special');
		$data['text_account'] = $this->language->get('text_account');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_wishlist'] = $this->language->get('text_wishlist');
		$data['text_newsletter'] = $this->language->get('text_newsletter');
		$data['logo'] ='image/' . $this->config->get('config_logo');
		$data['home'] = $this->url->link('common/home');
		$data['telephone'] = $this->config->get('config_telephone');
		$data['email'] = $this->config->get('config_email');
		$data['address'] = $this->config->get('config_address');
		$data['open'] = $this->config->get('config_open');
		$data['skype'] = $this->config->get('config_skype');
		$data['vkontakte'] = $this->config->get('config_vkontakte');
		$data['google'] = $this->config->get('config_google');
		$data['facebook'] = $this->config->get('config_facebook');
		$data['twitter'] = $this->config->get('config_twitter');
		$data['instagram'] = $this->config->get('config_instagram');
		$data['pinterest'] = $this->config->get('config_pinterest');

		$this->load->model('catalog/information');

		$data['informations'] = array();

		foreach ($this->model_catalog_information->getInformations() as $result) {
			if ($result['bottom']) {
				$data['informations'][] = array(
					'title' => $result['title'],
					'href'  => $this->url->link('information/information', 'information_id=' . $result['information_id'])
				);
			}
		}

		$data['contact'] = $this->url->link('information/contact');
		$data['return'] = $this->url->link('account/return/add', '', 'SSL');
		$data['sitemap'] = $this->url->link('information/sitemap');
		$data['manufacturer'] = $this->url->link('product/manufacturer');
		$data['voucher'] = $this->url->link('account/voucher', '', 'SSL');
		$data['affiliate'] = $this->url->link('affiliate/account', '', 'SSL');
		$data['special'] = $this->url->link('product/special');
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$data['newsletter'] = $this->url->link('account/newsletter', '', 'SSL');

		$data['powered'] = sprintf($this->language->get('text_powered'), $this->config->get('config_name'), date('Y', time()));

		// Whos Online
		if ($this->config->get('config_customer_online')) {
			$this->load->model('tool/online');

			if (isset($this->request->server['REMOTE_ADDR'])) {
				$ip = $this->request->server['REMOTE_ADDR'];
			} else {
				$ip = '';
			}

			if (isset($this->request->server['HTTP_HOST']) && isset($this->request->server['REQUEST_URI'])) {
				$url = 'http://' . $this->request->server['HTTP_HOST'] . $this->request->server['REQUEST_URI'];
			} else {
				$url = '';
			}

			if (isset($this->request->server['HTTP_REFERER'])) {
				$referer = $this->request->server['HTTP_REFERER'];
			} else {
				$referer = '';
			}

			$this->model_tool_online->whosonline($ip, $this->customer->getId(), $url, $referer);
		}

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/footer.tpl')) {
			return $this->load->view($this->config->get('config_template') . '/template/common/footer.tpl', $data);
		} else {
			return $this->load->view('default/template/common/footer.tpl', $data);
		}
	}
	public function contactForm(){
		$user_query = $this->db->query("SELECT email FROM " . DB_PREFIX . "user WHERE username = 'admin' AND (user_group_id = '1') AND status = '1'");
		if ($user_query->num_rows) {
			$admin_email = $user_query->row['email'];
		}
		$mailContent = '
            <table>
                <tr>
                    <td>Имя</td>
                    <td>'.$_POST['userName'].'</td>
                </tr>
                <tr>
                    <td>Телефон</td>
                    <td>'.$_POST['userPhone'].'</td>
                </tr>
            </table>
        ';
//		var_dump($_POST);
		$mail = new Mail();
		$mail->protocol = $this->config->get('config_mail')['protocol'];
		$mail->parameter = $this->config->get('config_mail')['parameter'];
		$mail->smtp_hostname = $this->config->get('config_mail_smtp_hostname');
		$mail->smtp_username = $this->config->get('config_mail_smtp_username');
		$mail->smtp_password = html_entity_decode($this->config->get('config_mail_smtp_password'), ENT_QUOTES, 'UTF-8');
		$mail->smtp_port = $this->config->get('config_mail_smtp_port');
		$mail->smtp_timeout = $this->config->get('config_mail_smtp_timeout');


//		$mail->setTo($this->config->get('config_email'));
		$mail->setTo($admin_email);
		$mail->setFrom('no-reply@perila.com');
		$mail->setSender(html_entity_decode($this->request->post['userName'], ENT_QUOTES, 'UTF-8'));
		$mail->setSubject(html_entity_decode('Обратный звонок',ENT_QUOTES, 'UTF-8'));
		$mail->setText($mailContent);
		$mail->send();
		$this->response->redirect($this->url->link('information/contact/success'));


	}

}