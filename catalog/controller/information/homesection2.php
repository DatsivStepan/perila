<?php
class ControllerInformationhomesection2 extends Controller {
	public function index() {
		$this->load->language('information/information');

		$this->load->model('catalog/information');

		$information_id = 4;

		$information_info = $this->model_catalog_information->getInformation($information_id);

		if ($information_info) {
			

			$data['heading_title'] = $information_info['title'];
			
			$data['button_continue'] = $this->language->get('button_continue');

			$data['description'] = html_entity_decode($information_info['description'], ENT_QUOTES, 'UTF-8');
			
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/homesection2.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/information/homesection2.tpl', $data);
			} else {
				return $this->load->view('default/template/information/homesection2.tpl', $data);
			}
            
            
		} 
	}
}