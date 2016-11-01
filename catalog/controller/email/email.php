<?php
class ControllerEmailEmail extends Controller {
	private $error = array();


	public function send() {
		$this->load->language('marketing/contact');

		$json = array();

		if ($this->request->post) {
		

			

				switch ($this->request->post['to']) {
					case '1':
				        if (!$this->request->post['name']) {
				            $json['error']['subject'] = $this->language->get('error');
                            $erore=1;
			             }

			             if (!$this->request->post['phone']) {
				            $json['error']['message'] = $this->language->get('error');
                             $erore=1;
			             }
                    $messagetosend = 'Клиент '.html_entity_decode($this->request->post['name']) .' осуществил вызов замерщика. Телефон: '.html_entity_decode($this->request->post['phone']);
                    $subject = 'Вызвать замерщика';
					$message  = '<html dir="ltr" lang="ru">' . "\n";
					$message .= '  <head>' . "\n";
					$message .= '    <title>' . $subject . '</title>' . "\n";
					$message .= '    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">' . "\n";
					$message .= '  </head>' . "\n";
					$message .= '  <body>' . html_entity_decode($messagetosend) . '</body>' . "\n";
					$message .= '</html>' . "\n";
						
						break;
					case '2':
					 if (!$this->request->post['name']) {
				            $json['error']['subject'] = $this->language->get('error');
                            $erore=1;
			             }

			             if (!$this->request->post['phone']) {
				            $json['error']['message'] = $this->language->get('error');
                             $erore=1;
			             }
                    $messagetosend = 'Клиенту '.html_entity_decode($this->request->post['name']) .' нужна консультация. Телефон: '.html_entity_decode($this->request->post['phone']);
                    $subject = 'проконсультироватся';
					$message  = '<html dir="ltr" lang="en">' . "\n";
					$message .= '  <head>' . "\n";
					$message .= '    <title>' . $subject . '</title>' . "\n";
					$message .= '    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">' . "\n";
					$message .= '  </head>' . "\n";
					$message .= '  <body>' . html_entity_decode($messagetosend) . '</body>' . "\n";
					$message .= '</html>' . "\n";
						
						break;
					case '3':
				
                    $subject = 'Клиент оставил новый заказ';
                    $messagetosend = '
                    <table border="1">
                        <caption>Заказ</caption>

                                <tr>
                                <td>Имя</td><td>'.html_entity_decode($this->request->post['name']) .'</td>
                                </tr>
   
                                <tr>
                                <td>Email</td><td>'.html_entity_decode($this->request->post['email']) .'</td>
                                </tr>
   
                                <tr>
                                <td>Телефон</td><td>'.html_entity_decode($this->request->post['phone']) .'</td>
                                </tr>
   
                                <tr>
                                <td>Адрес доставки</td><td>'.html_entity_decode($this->request->post['adress']) .'</td>
                                </tr>
   
                                <tr>
                                <td>Заказ</td><td>'.html_entity_decode($this->request->post['zakaz']) .'</td>
                                </tr>
   
                                
                                <tr>
                                <td>Стоимость единицы</td><td>'.html_entity_decode($this->request->post['stoimodun']) .'</td>
                                </tr>
                                <tr>
                                <td>Количество</td><td>'.html_entity_decode($this->request->post['count']) .'</td>
                                </tr>
                                
                                <tr>
                                <td>Общая сумма заказа</td><td>'.html_entity_decode($this->request->post['summa']) .'</td>
                                </tr>
   
                                </table>
                    
                    '; 
					$message  = '<html dir="ltr" lang="en">' . "\n";
					$message .= '  <head>' . "\n";
					$message .= '    <title>' . $subject . '</title>' . "\n";
					$message .= '    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">' . "\n";
					$message .= '  </head>' . "\n";
					$message .= '  <body>' . html_entity_decode($messagetosend ) . '</body>' . "\n";
					$message .= '</html>' . "\n";
						break;
				}
					
					

					
						
                            echo 'fsdf';
							$mail = new Mail($this->config->get('config_mail'));
							$mail->setTo($this->config->get('config_email'));
							$mail->setFrom($this->config->get('config_email'));
							$mail->setSender('dekorperila');
							$mail->setSubject($subject);
							$mail->setHtml($message);
							$mail->send();
						
					
				
		}

		$this->response->addHeader('Content-Type: application/json');
		$this->response->setOutput(json_encode($json));
	}
}