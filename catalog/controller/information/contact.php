<?php
class ControllerInformationContact extends Controller {
	public function getTotalUsersByGroupId($user_group_id) {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM `" . DB_PREFIX . "user` WHERE user_group_id = '" . (int)$user_group_id . "'");

		return $query->row['total'];
	}
	private $error = array();

	public function index() {
		$this->load->language('information/contact');
		$this->document->addScript('catalog/view/javascript/contact.js');
		$this->document->addScript("https://maps.googleapis.com/maps/api/js?key=AIzaSyDLIEx9stFN74AEq0w5p11vhNZX3_6xs9s");
		$this->document->addScript("https://cdn.jsdelivr.net/sweetalert2/6.0.1/sweetalert2.min.js");
		$this->document->addStyle("https://cdn.jsdelivr.net/sweetalert2/6.0.1/sweetalert2.min.css");

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => 'Контакты',
			'href' => ''
		);

		$data['heading_title'] = $this->language->get('контакты');

		$data['text_location'] = $this->language->get(' На данной странице вы можете увидеть наш адрес, наш телефон, адрес електронной пошты, график роботы, и наше местонахождение.');
		$data['text_location2'] = $this->language->get(' Будем рады видеть вас в числе наших клиентов!');
		$data['text_store'] = $this->language->get('Адрес:');
		$data['text_grafick'] = $this->language->get('График роботы:');
		$data['text_contact'] = $this->language->get('text_contact');
		$data['text_address'] = $this->language->get('text_address');
		$data['text_telephone'] = $this->language->get('text_telephone');
		$data['text_fax'] = $this->language->get('text_fax');
		$data['text_open'] = $this->language->get('text_open');
		$data['text_comment'] = $this->language->get('text_comment');
		$data['text_email'] = $this->language->get('text_email');


		$data['entry_open'] = $this->language->get('entry_open');
		$data['entry_email'] = $this->language->get('entry_email');
		$data['entry_enquiry'] = $this->language->get('entry_enquiry');
		if (isset($this->request->post['config_open'])) {
			$data['config_open'] = $this->request->post['config_open'];
		} else {
			$data['config_open'] = $this->config->get('config_open');
		}
		if (isset($this->request->post['config_email'])) {
			$data['config_email'] = $this->request->post['config_email'];
		} else {
			$data['config_email'] = $this->config->get('config_email');
		}

		$data['button_submit'] = $this->language->get('Отправить');

		$data['action'] = $this->url->link('information/contact');

		$this->load->model('tool/image');

		if ($this->config->get('config_image')) {
			$data['image'] = $this->model_tool_image->resize($this->config->get('config_image'), $this->config->get('config_image_location_width'), $this->config->get('config_image_location_height'));
		} else {
			$data['image'] = false;
		}

		$data['store'] = $this->config->get('config_name');
		$data['address'] = nl2br($this->config->get('config_address'));
		$data['geocode'] = $this->config->get('config_geocode');
		$data['telephone'] = $this->config->get('config_telephone');
		$data['fax'] = $this->config->get('config_fax');
		$data['open'] = nl2br($this->config->get('config_open'));
		$data['comment'] = $this->config->get('config_comment');

		$data['locations'] = array();

		$this->load->model('localisation/location');

		foreach((array)$this->config->get('config_location') as $location_id) {
			$location_info = $this->model_localisation_location->getLocation($location_id);

			if ($location_info) {
				if ($location_info['image']) {
					$image = $this->model_tool_image->resize($location_info['image'], $this->config->get('config_image_location_width'), $this->config->get('config_image_location_height'));
				} else {
					$image = false;
				}

				$data['locations'][] = array(
					'location_id' => $location_info['location_id'],
					'name'        => $location_info['name'],
					'address'     => nl2br($location_info['address']),
					'geocode'     => $location_info['geocode'],
					'telephone'   => $location_info['telephone'],
					'fax'         => $location_info['fax'],
					'image'       => $image,
					'open'        => nl2br($location_info['open']),
					'comment'     => $location_info['comment']
				);
			}
		}
		if (isset($this->request->post['email'])) {
			$data['email'] = $this->request->post['email'];
		} else {
			$data['email'] = $this->customer->getEmail();
		}

		if (isset($this->request->post['enquiry'])) {
			$data['enquiry'] = $this->request->post['enquiry'];
		} else {
			$data['enquiry'] = '';
		}
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/contact.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/contact.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/information/contact.tpl', $data));
		}
	}

	public function success() {
		$this->load->language('information/contact');

		$this->document->setTitle($this->language->get('heading_title'));

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('information/contact')
		);

		$data['heading_title'] = $this->language->get('heading_title');

		$data['text_message'] = $this->language->get('text_success');

		$data['button_continue'] = $this->language->get('button_continue');

		$data['continue'] = $this->url->link('common/home');

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');

		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/success.tpl')) {
			$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/common/success.tpl', $data));
		} else {
			$this->response->setOutput($this->load->view('default/template/common/success.tpl', $data));
		}
	}
	public function contact(){
		$user_query = $this->db->query("SELECT email FROM " . DB_PREFIX . "user WHERE username = 'admin' AND (user_group_id = '1') AND status = '1'");
		if ($user_query->num_rows) {
			$admin_email = $user_query->row['email'];
		}
		$mailContent = '
            <table>
                <tr>
                    <td>Електроная почта:</td>
                    <td>'.$this->request->post['email'].'</td>
                </tr>
                <tr>
                    <td>Вопрос:</td>
                    <td>'.$this->request->post['enquiry'].'</td>
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
		$mail->setFrom($this->request->post['email']);
		$mail->setSender(html_entity_decode($this->request->post['email'], ENT_QUOTES, 'UTF-8'));
		$mail->setSubject(html_entity_decode($this->request->post['enquiry'], ENT_QUOTES, 'UTF-8'));
		$mail->setText($mailContent);
		$check = $mail->send();
		//$this->response->redirect($this->url->link('information/contact/success'));

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($check));

	}
}

