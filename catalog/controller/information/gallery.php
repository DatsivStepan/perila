<?php
class ControllerInformationGallery extends Controller {
	public function index() {
		$this->load->language('information/information');

		$this->load->model('catalog/information');

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/home')
		);


		$this->load->model('design/banner');
		$this->load->model('tool/image');


		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner(9);


		foreach ($results as $result) {
            
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'link' => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], '272', '272')
				);
                }
		}



			$data['breadcrumbs'][] = array(
				'text' => 'Наши работы',
				'href' => $this->url->link('information/gallery')
			);

		$this->document->setTitle($this->config->get('config_meta_title'));
		$this->document->setDescription($this->config->get('config_meta_description'));
		$this->document->setKeywords($this->config->get('config_meta_keyword'));

		

		$data['column_left'] = $this->load->controller('common/column_left');
		$data['column_right'] = $this->load->controller('common/column_right');
		$data['content_top'] = $this->load->controller('common/content_top');
		$data['content_bottom'] = $this->load->controller('common/content_bottom');
		$data['footer'] = $this->load->controller('common/footer');
		$data['header'] = $this->load->controller('common/header');
       

			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/gallery.tpl')) {
				$this->response->setOutput($this->load->view($this->config->get('config_template') . '/template/information/gallery.tpl', $data));
			} else {
				$this->response->setOutput($this->load->view('default/template/information/gallery.tpl', $data));
			}
		
    }
}