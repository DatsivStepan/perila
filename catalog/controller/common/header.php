<?php
class ControllerCommonHeader extends Controller
{
	public function index()
	{
        $this->document->addScript('catalog/view/javascript/fancyapps-fancyBox-18d1712/lib/jquery.mousewheel-3.0.6.pack.js');
        $this->document->addStyle('catalog/view/javascript/fancyapps-fancyBox-18d1712/source/jquery.fancybox.css?v=2.1.5');
        $this->document->addScript('catalog/view/javascript/fancyapps-fancyBox-18d1712/source/jquery.fancybox.pack.js?v=2.1.5');
        $this->document->addStyle('catalog/view/javascript/fancyapps-fancyBox-18d1712/source/helpers/jquery.fancybox-buttons.css?v=1.0.5');
        $this->document->addScript('catalog/view/javascript/fancyapps-fancyBox-18d1712/source/helpers/jquery.fancybox-buttons.js?v=1.0.5');
        $this->document->addScript('catalog/view/javascript/fancyapps-fancyBox-18d1712/source/helpers/jquery.fancybox-media.js?v=1.0.6');
        $this->document->addStyle('catalog/view/javascript/fancyapps-fancyBox-18d1712/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7');
        $this->document->addScript('catalog/view/javascript/fancyapps-fancyBox-18d1712/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7');

		$data['title'] = $this->document->getTitle();

		if ($this->request->server['HTTPS']) {
			$server = $this->config->get('config_ssl');
		} else {
			$server = $this->config->get('config_url');
		}


		$this->document->addStyle('catalog/view/javascript/jquery/owl-carousel/owl.carousel.css');
		$this->document->addScript('catalog/view/javascript/jquery/owl-carousel/owl.carousel.min.js');

		$data['base'] = $server;
		$data['description'] = $this->document->getDescription();
		$data['keywords'] = $this->document->getKeywords();
		$data['links'] = $this->document->getLinks();
		$data['styles'] = $this->document->getStyles();
		$data['scripts'] = $this->document->getScripts();
		$data['lang'] = $this->language->get('code');
		$data['direction'] = $this->language->get('direction');
		$data['google_analytics'] = html_entity_decode($this->config->get('config_google_analytics'), ENT_QUOTES, 'UTF-8');
		$data['name'] = $this->config->get('config_name');

		if (is_file(DIR_IMAGE . $this->config->get('config_icon'))) {
			$data['icon'] = $server . 'image/' . $this->config->get('config_icon');
		} else {
			$data['icon'] = '';
		}

		if (is_file(DIR_IMAGE . $this->config->get('config_logo'))) {
			$data['logo'] = $server . 'image/' . $this->config->get('config_logo');
		} else {
			$data['logo'] = '';
		}

		$this->load->language('common/header');

		$data['text_home'] = $this->language->get('text_home');
		$data['text_wishlist'] = sprintf($this->language->get('text_wishlist'), (isset($this->session->data['wishlist']) ? count($this->session->data['wishlist']) : 0));
		$data['text_shopping_cart'] = $this->language->get('text_shopping_cart');
		$data['text_logged'] = sprintf($this->language->get('text_logged'), $this->url->link('account/account', '', 'SSL'), $this->customer->getFirstName(), $this->url->link('account/logout', '', 'SSL'));

		$data['text_account'] = $this->language->get('text_account');
		$data['text_register'] = $this->language->get('text_register');
		$data['text_login'] = $this->language->get('text_login');
		$data['text_order'] = $this->language->get('text_order');
		$data['text_transaction'] = $this->language->get('text_transaction');
		$data['text_download'] = $this->language->get('text_download');
		$data['text_logout'] = $this->language->get('text_logout');
		$data['text_checkout'] = $this->language->get('text_checkout');
		$data['text_category'] = $this->language->get('text_category');
		$data['text_all'] = $this->language->get('text_all');

		$data['home'] = $this->url->link('common/home');
		$data['wishlist'] = $this->url->link('account/wishlist', '', 'SSL');
		$data['logged'] = $this->customer->isLogged();
		$data['account'] = $this->url->link('account/account', '', 'SSL');
		$data['register'] = $this->url->link('account/register', '', 'SSL');
		$data['login'] = $this->url->link('account/login', '', 'SSL');
		$data['order'] = $this->url->link('account/order', '', 'SSL');
		$data['transaction'] = $this->url->link('account/transaction', '', 'SSL');
		$data['download'] = $this->url->link('account/download', '', 'SSL');
		$data['logout'] = $this->url->link('account/logout', '', 'SSL');
		$data['shopping_cart'] = $this->url->link('checkout/cart');
		$data['checkout'] = $this->url->link('checkout/checkout', '', 'SSL');
		$data['contact'] = $this->url->link('information/contact');
		$data['telephone'] = $this->config->get('config_telephone');
		$data['email'] = $this->config->get('config_email');
		$data['open'] = $this->config->get('config_open');

		$status = true;

		if (isset($this->request->server['HTTP_USER_AGENT'])) {
			$robots = explode("\n", str_replace(array("\r\n", "\r"), "\n", trim($this->config->get('config_robots'))));

			foreach ($robots as $robot) {
				if ($robot && strpos($this->request->server['HTTP_USER_AGENT'], trim($robot)) !== false) {
					$status = false;

					break;
				}
			}
		}

		// Menu
		$this->load->model('catalog/category');

		$this->load->model('catalog/product');

		$data['categories'] = array();

		$categories = $this->model_catalog_category->getCategories(0);

		foreach ($categories as $category) {
			if ($category['top']) {
				// Level 2
				$children_data = array();

				$children = $this->model_catalog_category->getCategories($category['category_id']);

				foreach ($children as $child) {
					$filter_data = array(
						'filter_category_id' => $child['category_id'],
						'filter_sub_category' => true
					);

					$children_data[] = array(
						'name' => $child['name'] . ($this->config->get('config_product_count') ? ' (' . $this->model_catalog_product->getTotalProducts($filter_data) . ')' : ''),
						'href' => $this->url->link('product/category', 'path=' . $category['category_id'] . '_' . $child['category_id'])
					);
				}

				// Level 1
				$data['categories'][] = array(
					'name' => $category['name'],
					'children' => $children_data,
					'column' => $category['column'] ? $category['column'] : 1,
					'href' => $this->url->link('product/category', 'path=' . $category['category_id'])
				);
			}
		}

		$data['language'] = $this->load->controller('common/language');
		$data['currency'] = $this->load->controller('common/currency');
		$data['search'] = $this->load->controller('common/search');
		$data['cart'] = $this->load->controller('common/cart');
		$data['slider'] = $this->load->controller('common/slideshow');
		$data['content_top'] = $this->load->controller('common/content_top');

		// For page specific css
        if(!empty( $this->request->get['information_id'])){
            $data['currentInformation'] = $this->request->get['route'].'_'.$this->request->get['information_id'];
        }else{
            $data['currentInformation'] = '';
        }

        if (isset($this->request->get['route'])) {
            $data['currentRout'] = $this->request->get['route'];
//            var_dump($data['currentRout']);
////            exit;
            if (isset($this->request->get['product_id'])) {
                $class = '-' . $this->request->get['product_id'];
            } elseif (isset($this->request->get['path'])) {
                $class = '-' . $this->request->get['path'];
            } elseif (isset($this->request->get['manufacturer_id'])) {
                $class = '-' . $this->request->get['manufacturer_id'];
            } else {
                $class = '';
            }
            $data['class'] = str_replace('/', '-', $this->request->get['route']) . $class;
        } else {
            $data['currentRout'] = '';
            $data['class'] = 'common-home';
        }

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/common/header.tpl')) {
            return $this->load->view($this->config->get('config_template') . '/template/common/header.tpl', $data);
		} else {
			return $this->load->view('default/template/common/header.tpl', $data);
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
                    <td>'.$_POST['name'].'</td>
                </tr>
                <tr>
                    <td>Телефон</td>
                    <td>'.$_POST['phone'].'</td>
                </tr>
            </table>
        ';

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
		$mail->setSender(html_entity_decode($this->request->post['name'], ENT_QUOTES, 'UTF-8'));
		$mail->setSubject(html_entity_decode('Обратный звонок',ENT_QUOTES, 'UTF-8'));
		$mail->setText($mailContent);
		$mail->send();
		$this->response->redirect($this->url->link('information/contact/success'));


	}
}