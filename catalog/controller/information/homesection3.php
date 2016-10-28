<?php
class ControllerInformationhomesection3 extends Controller {
	public function index() {
		$this->load->language('information/information');

		

		static $module = 0;

		$this->load->model('design/banner');
		$this->load->model('tool/image');


		$data['banners'] = array();

		$results = $this->model_design_banner->getBanner(9);

$c=0;
		foreach ($results as $result) {
            if($c<9){ $c++;
			if (is_file(DIR_IMAGE . $result['image'])) {
				$data['banners'][] = array(
					'title' => $result['title'],
					'link' => $result['link'],
					'image' => $this->model_tool_image->resize($result['image'], '272', '272')
				);

			}
                }
		}
		$data['module'] = $module++;
		
			if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/information/homesection3.tpl')) {
				return $this->load->view($this->config->get('config_template') . '/template/information/homesection3.tpl', $data);
			} else {
				return $this->load->view('default/template/information/homesection3.tpl', $data);
			}
            
            
		} 
	}